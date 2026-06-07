.class Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;
.super Lx/org/server/DifferentTouchInput$MultiTouchInput;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GingerbreadTouchInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/DifferentTouchInput$GingerbreadTouchInput$Holder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lx/org/server/DifferentTouchInput$MultiTouchInput;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/view/MotionEvent;)V
    .locals 11

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    sget-boolean v0, Lx/org/server/Globals;->ForceHardwareMouse:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x4002

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 296
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v1, v5, :cond_3

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const v5, 0x20004

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_3

    goto :goto_2

    :cond_3
    move v3, v0

    .line 302
    :goto_2
    sget v0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->ExternalMouseDetected:I

    if-eq v0, v3, :cond_4

    .line 304
    sput v3, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->ExternalMouseDetected:I

    .line 305
    invoke-static {v3}, Lx/org/server/DemoGLSurfaceView;->nativeHardwareMouseDetected(I)V

    .line 307
    :cond_4
    invoke-super {p0, p1}, Lx/org/server/DifferentTouchInput$MultiTouchInput;->process(Landroid/view/MotionEvent;)V

    .line 308
    sget-boolean v0, Lx/org/server/Globals;->FingerHover:Z

    if-nez v0, :cond_5

    sget v0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->ExternalMouseDetected:I

    if-nez v0, :cond_5

    goto/16 :goto_4

    .line 310
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 314
    iget-object v0, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v4

    iget-boolean v0, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v0, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x3

    const/4 v7, 0x3

    .line 318
    :goto_3
    iget-object v0, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v4

    iput-boolean v4, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    .line 319
    iget-object v0, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    .line 320
    iget-object v0, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    .line 321
    iget-object v0, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v4

    const/16 v1, 0x400

    iput v1, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    .line 322
    iget-object v0, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v4

    iput v4, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x18

    .line 325
    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 327
    iget-object v2, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v2, v2, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x44800000    # 1024.0f

    mul-float v3, v3, v5

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v0

    div-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v2, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    .line 329
    :cond_7
    iget-object v0, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v4

    iget v5, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget-object v0, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v4

    iget v6, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget-object v0, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v4

    iget v9, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget-object v0, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v4

    iget v10, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lx/org/server/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    .line 331
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xa

    if-ne p1, v0, :cond_9

    .line 333
    iget-object p1, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object p1, p1, v4

    const/16 v0, 0x2800

    iput v0, p1, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    .line 334
    iget-object p1, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object p1, p1, v4

    iput v4, p1, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    .line 335
    iget-object p1, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object p1, p1, v4

    iget v5, p1, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget-object p1, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object p1, p1, v4

    iget v6, p1, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget-object p1, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object p1, p1, v4

    iget v9, p1, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget-object p1, p0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object p1, p1, v4

    iget v10, p1, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lx/org/server/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    :cond_9
    :goto_4
    return-void
.end method

.method public processGenericEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->process(Landroid/view/MotionEvent;)V

    return-void
.end method
