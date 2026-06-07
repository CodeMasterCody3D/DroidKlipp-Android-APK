.class Lx/org/server/DifferentTouchInput$IcsTouchInput;
.super Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IcsTouchInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/DifferentTouchInput$IcsTouchInput$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lx/org/server/DifferentTouchInput$1;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lx/org/server/DifferentTouchInput$IcsTouchInput;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/view/MotionEvent;)V
    .locals 6

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 353
    sget v1, Lx/org/server/DifferentTouchInput$IcsTouchInput;->buttonState:I

    if-eq v0, v1, :cond_7

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x10

    const/4 v4, 0x0

    if-gt v2, v3, :cond_2

    and-int v3, v0, v2

    .line 357
    sget v5, Lx/org/server/DifferentTouchInput$IcsTouchInput;->buttonState:I

    and-int/2addr v5, v2

    if-eq v3, v5, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    .line 358
    :goto_1
    invoke-static {v2, v4}, Lx/org/server/DemoGLSurfaceView;->nativeMouseButtonsPressed(II)V

    :cond_1
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x20

    .line 360
    sget v3, Lx/org/server/DifferentTouchInput$IcsTouchInput;->buttonState:I

    and-int/lit8 v3, v3, 0x20

    if-eq v2, v3, :cond_4

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    const/4 v3, 0x2

    .line 361
    invoke-static {v3, v2}, Lx/org/server/DemoGLSurfaceView;->nativeMouseButtonsPressed(II)V

    :cond_4
    and-int/lit8 v2, v0, 0x40

    .line 362
    sget v3, Lx/org/server/DifferentTouchInput$IcsTouchInput;->buttonState:I

    and-int/lit8 v3, v3, 0x40

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_5

    const/4 v1, 0x0

    :cond_5
    const/4 v2, 0x4

    .line 363
    invoke-static {v2, v1}, Lx/org/server/DemoGLSurfaceView;->nativeMouseButtonsPressed(II)V

    .line 364
    :cond_6
    sput v0, Lx/org/server/DifferentTouchInput$IcsTouchInput;->buttonState:I

    .line 366
    :cond_7
    invoke-super {p0, p1}, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->process(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public processGenericEvent(Landroid/view/MotionEvent;)V
    .locals 11

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/16 v0, 0xb

    .line 376
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    const/16 v0, 0x11

    .line 377
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/16 v0, 0xf

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    invoke-static {p1}, Lx/org/server/DifferentTouchInput$IcsTouchInput;->processGamepadDeviceId(Landroid/view/InputDevice;)I

    move-result v10

    .line 374
    invoke-static/range {v2 .. v10}, Lx/org/server/DemoGLSurfaceView;->nativeGamepadAnalogJoystickInput(FFFFFFFFI)V

    return-void

    .line 383
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    .line 385
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x9

    .line 386
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 387
    invoke-static {v0, p1}, Lx/org/server/DemoGLSurfaceView;->nativeMouseWheel(II)V

    return-void

    .line 390
    :cond_1
    invoke-super {p0, p1}, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;->processGenericEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
