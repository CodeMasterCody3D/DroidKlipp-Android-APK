.class public final Lx/org/server/Backlight;
.super Ljava/lang/Object;
.source "Backlight.java"

# Turns the LCD backlight off (via su) while the X screen shows a fully black
# frame, e.g. the KlipperScreen screensaver, and back on when touched.
#
# init()     - UI thread, called by MainActivity.onCreate(); asks for root once.
#              Everything else is a no-op unless `su` works and is granted.
# onFrame()  - GL thread, called by DemoRenderer.swapBuffers() before every swap;
#              samples the frame and posts the result to the main thread.
# onTouch()  - UI thread, called by MainActivity.dispatchTouchEvent().
# restore()  - UI thread, called by MainActivity.onPause().
# All state below is only touched on the main thread.
#
# The default commands write /sys/class/.../brightness directly. They can be
# replaced by creating /data/local/tmp/droidklipp_blank.sh and
# /data/local/tmp/droidklipp_wake.sh on the device (run as root).


# static fields
.field private static final CHECK:Lx/org/server/Backlight$Event;

.field private static final CONTENT_FRAME:Lx/org/server/Backlight$Event;

.field private static final BLACK_FRAME:Lx/org/server/Backlight$Event;

.field private static final OFF_CMD:Ljava/lang/String; = "if [ -f /data/local/tmp/droidklipp_blank.sh ]; then exec sh /data/local/tmp/droidklipp_blank.sh; fi; f=$(ls /sys/class/leds/lcd-backlight/brightness /sys/class/backlight/*/brightness 2>/dev/null | head -n 1); [ -n \"$f\" ] || exit 1; v=$(cat \"$f\"); [ \"$v\" -gt 0 ] && echo \"$v\" > /data/local/tmp/droidklipp_backlight; echo 0 > \"$f\""

.field private static final ON_CMD:Ljava/lang/String; = "if [ -f /data/local/tmp/droidklipp_wake.sh ]; then exec sh /data/local/tmp/droidklipp_wake.sh; fi; f=$(ls /sys/class/leds/lcd-backlight/brightness /sys/class/backlight/*/brightness 2>/dev/null | head -n 1); [ -n \"$f\" ] || exit 1; v=$(cat /data/local/tmp/droidklipp_backlight 2>/dev/null); [ -n \"$v\" ] || v=$(cat \"${f%/*}/max_brightness\"); echo \"$v\" > \"$f\""

.field private static buf:Ljava/nio/ByteBuffer;

# set by Backlight$RootCheck on the executor thread, read on the GL/UI threads
.field static volatile enabled:Z

.field private static final executor:Ljava/util/concurrent/ExecutorService;

.field private static graceUntil:J

.field private static final handler:Landroid/os/Handler;

.field private static initDone:Z

.field private static lastBlack:Z

.field private static off:Z

.field private static pending:Z

.field private static final viewport:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lx/org/server/Backlight;->viewport:[I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lx/org/server/Backlight;->handler:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lx/org/server/Backlight;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lx/org/server/Backlight$Event;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/org/server/Backlight$Event;-><init>(I)V

    sput-object v0, Lx/org/server/Backlight;->BLACK_FRAME:Lx/org/server/Backlight$Event;

    new-instance v0, Lx/org/server/Backlight$Event;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lx/org/server/Backlight$Event;-><init>(I)V

    sput-object v0, Lx/org/server/Backlight;->CONTENT_FRAME:Lx/org/server/Backlight$Event;

    new-instance v0, Lx/org/server/Backlight$Event;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lx/org/server/Backlight$Event;-><init>(I)V

    sput-object v0, Lx/org/server/Backlight;->CHECK:Lx/org/server/Backlight$Event;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# Samples 8 horizontal lines of the current GL frame (every 4th pixel).
# Returns true when at most 1% of the samples have any channel above 0x10.
.method private static analyzeFrame()Z
    .locals 19

    # discard GL errors left over from the native renderer
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    sget-object v0, Lx/org/server/Backlight;->viewport:[I

    const/16 v1, 0xba2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    # v1 = x0, v3 = y0, v4 = width, v5 = height
    aget v1, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    if-lez v4, :not_black

    if-lez v5, :not_black

    # v6 = bytes per line, v7 = buffer
    mul-int/lit8 v6, v4, 0x4

    sget-object v7, Lx/org/server/Backlight;->buf:Ljava/nio/ByteBuffer;

    if-eqz v7, :alloc

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    if-ge v8, v6, :have_buf

    :alloc
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sput-object v7, Lx/org/server/Backlight;->buf:Ljava/nio/ByteBuffer;

    :have_buf
    # v8 = samples, v9 = non-black samples, v10 = line index (1..8)
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    :line_loop
    const/16 v11, 0x9

    if-ge v10, v11, :lines_done

    # v11 = y0 + height * line / 9
    mul-int v11, v5, v10

    div-int/lit8 v11, v11, 0x9

    add-int/2addr v11, v3

    invoke-virtual {v7}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    move v12, v1

    move v13, v11

    move v14, v4

    const/4 v15, 0x1

    const/16 v16, 0x1908

    const/16 v17, 0x1401

    move-object/from16 v18, v7

    invoke-static/range {v12 .. v18}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    # a failed read leaves stale data in the buffer, never call that black
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v11

    if-nez v11, :not_black

    const/4 v11, 0x0

    :px_loop
    if-ge v11, v4, :px_done

    mul-int/lit8 v12, v11, 0x4

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v8, v8, 0x1

    const/16 v12, 0x10

    if-gt v13, v12, :px_lit

    if-gt v14, v12, :px_lit

    if-gt v15, v12, :px_lit

    goto :px_next

    :px_lit
    add-int/lit8 v9, v9, 0x1

    :px_next
    add-int/lit8 v11, v11, 0x4

    goto :px_loop

    :px_done
    add-int/lit8 v10, v10, 0x1

    goto :line_loop

    :lines_done
    if-eqz v8, :not_black

    mul-int/lit8 v9, v9, 0x64

    if-gt v9, v8, :not_black

    const/4 v0, 0x1

    return v0

    :not_black
    const/4 v0, 0x0

    return v0
.end method

# Main thread. kind: 0 = black frame, 1 = frame with content, 2 = delayed check.
.method static dispatch(I)V
    .locals 3

    if-nez p0, :not_black_frame

    const/4 v0, 0x1

    sput-boolean v0, Lx/org/server/Backlight;->lastBlack:Z

    sget-boolean v0, Lx/org/server/Backlight;->off:Z

    if-nez v0, :done

    # require the screen to stay black for 2 s before switching off
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Lx/org/server/Backlight;->scheduleCheck(J)V

    goto :done

    :not_black_frame
    const/4 v0, 0x1

    if-ne p0, v0, :check

    const/4 v0, 0x0

    sput-boolean v0, Lx/org/server/Backlight;->lastBlack:Z

    sget-boolean v0, Lx/org/server/Backlight;->off:Z

    if-eqz v0, :done

    invoke-static {}, Lx/org/server/Backlight;->turnOn()V

    goto :done

    :check
    invoke-static {}, Lx/org/server/Backlight;->check()V

    :done
    return-void
.end method

.method private static scheduleCheck(J)V
    .locals 3

    sget-boolean v0, Lx/org/server/Backlight;->pending:Z

    if-nez v0, :done

    const/4 v0, 0x1

    sput-boolean v0, Lx/org/server/Backlight;->pending:Z

    sget-object v0, Lx/org/server/Backlight;->handler:Landroid/os/Handler;

    sget-object v1, Lx/org/server/Backlight;->CHECK:Lx/org/server/Backlight$Event;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :done
    return-void
.end method

.method private static check()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lx/org/server/Backlight;->pending:Z

    sget-boolean v0, Lx/org/server/Backlight;->lastBlack:Z

    if-eqz v0, :done

    sget-boolean v0, Lx/org/server/Backlight;->off:Z

    if-nez v0, :done

    # still inside the grace period after a touch: check again when it ends
    sget-wide v0, Lx/org/server/Backlight;->graceUntil:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :off_now

    invoke-static {v0, v1}, Lx/org/server/Backlight;->scheduleCheck(J)V

    goto :done

    :off_now
    invoke-static {}, Lx/org/server/Backlight;->turnOff()V

    :done
    return-void
.end method

.method private static turnOff()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lx/org/server/Backlight;->off:Z

    const-string v0, "DroidKlipp"

    const-string v1, "Black screen detected, backlight off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lx/org/server/Backlight;->OFF_CMD:Ljava/lang/String;

    invoke-static {v0}, Lx/org/server/Backlight;->runAsRoot(Ljava/lang/String;)V

    return-void
.end method

.method private static turnOn()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lx/org/server/Backlight;->off:Z

    const-string v0, "DroidKlipp"

    const-string v1, "Backlight on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lx/org/server/Backlight;->ON_CMD:Ljava/lang/String;

    invoke-static {v0}, Lx/org/server/Backlight;->runAsRoot(Ljava/lang/String;)V

    return-void
.end method

.method private static runAsRoot(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lx/org/server/Backlight$Cmd;

    invoke-direct {v0, p0}, Lx/org/server/Backlight$Cmd;-><init>(Ljava/lang/String;)V

    sget-object v1, Lx/org/server/Backlight;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

# UI thread, once at startup: check for root in the background. This is when
# Magisk shows its prompt; if su is missing or denied the feature stays off.
.method public static init()V
    .locals 2

    sget-boolean v0, Lx/org/server/Backlight;->initDone:Z

    if-nez v0, :done

    const/4 v0, 0x1

    sput-boolean v0, Lx/org/server/Backlight;->initDone:Z

    new-instance v0, Lx/org/server/Backlight$RootCheck;

    invoke-direct {v0}, Lx/org/server/Backlight$RootCheck;-><init>()V

    sget-object v1, Lx/org/server/Backlight;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :done
    return-void
.end method

# GL thread, before each buffer swap.
.method public static onFrame()V
    .locals 2

    sget-boolean v0, Lx/org/server/Backlight;->enabled:Z

    if-eqz v0, :disabled

    :try_start_0
    invoke-static {}, Lx/org/server/Backlight;->analyzeFrame()Z

    move-result v0

    if-eqz v0, :content

    sget-object v1, Lx/org/server/Backlight;->BLACK_FRAME:Lx/org/server/Backlight$Event;

    goto :post

    :content
    sget-object v1, Lx/org/server/Backlight;->CONTENT_FRAME:Lx/org/server/Backlight$Event;

    :post
    sget-object v0, Lx/org/server/Backlight;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :disabled
    return-void

    :catch_0
    move-exception v0

    return-void
.end method

# UI thread, on every touch event: wake up and hold off blanking for 5 s.
.method public static onTouch()V
    .locals 4

    sget-boolean v0, Lx/org/server/Backlight;->enabled:Z

    if-eqz v0, :done

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    sput-wide v0, Lx/org/server/Backlight;->graceUntil:J

    sget-boolean v0, Lx/org/server/Backlight;->off:Z

    if-eqz v0, :schedule

    invoke-static {}, Lx/org/server/Backlight;->turnOn()V

    :schedule
    sget-boolean v0, Lx/org/server/Backlight;->lastBlack:Z

    if-eqz v0, :done

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lx/org/server/Backlight;->scheduleCheck(J)V

    :done
    return-void
.end method

# UI thread, when the activity is paused: never leave the backlight off.
.method public static restore()V
    .locals 1

    sget-boolean v0, Lx/org/server/Backlight;->off:Z

    if-eqz v0, :done

    invoke-static {}, Lx/org/server/Backlight;->turnOn()V

    :done
    return-void
.end method
