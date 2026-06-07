.class Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;
.super Lx/org/server/DifferentTouchInput$IcsTouchInput;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoDetectTouchInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/DifferentTouchInput$AutoDetectTouchInput$Holder;
    }
.end annotation


# instance fields
.field fingerHover:Z

.field hover:Z

.field hoverTime:J

.field hoverTouchDistance:F

.field hoverX:F

.field hoverY:F

.field tap:Z

.field tapCount:I

.field tapTime:J

.field tapX:F

.field tapY:F


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 438
    invoke-direct {p0, v0}, Lx/org/server/DifferentTouchInput$IcsTouchInput;-><init>(Lx/org/server/DifferentTouchInput$1;)V

    const/4 v0, 0x0

    .line 440
    iput v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapCount:I

    .line 441
    iput-boolean v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hover:Z

    iput-boolean v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->fingerHover:Z

    iput-boolean v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tap:Z

    const/4 v0, 0x0

    .line 442
    iput v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverX:F

    iput v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverY:F

    const-wide/16 v1, 0x0

    .line 443
    iput-wide v1, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTime:J

    .line 444
    iput v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapX:F

    iput v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapY:F

    .line 445
    iput-wide v1, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapTime:J

    .line 446
    iput v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTouchDistance:F

    return-void
.end method

.method synthetic constructor <init>(Lx/org/server/DifferentTouchInput$1;)V
    .locals 0

    .line 438
    invoke-direct {p0}, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/view/MotionEvent;)V
    .locals 9

    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-string v1, "SDL"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_2

    .line 457
    :cond_0
    iget v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapCount:I

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_1

    .line 460
    iput-boolean v2, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tap:Z

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapX:F

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapY:F

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapTime:J

    .line 464
    iget-boolean v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hover:Z

    if-eqz v0, :cond_2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Tap tapX "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " tapY "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_1
    iget-boolean v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hover:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTime:J

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 469
    iget v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTouchDistance:F

    iget v3, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTouchDistance:F

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Finger down event.getX() "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " hoverX "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverX:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " event.getY() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " hoverY "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverY:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " hoverTouchDistance "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTouchDistance:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_2
    :goto_0
    iget v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapCount:I

    const/4 v3, 0x4

    if-lt v0, v3, :cond_b

    .line 477
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 478
    sget-object v3, Lx/org/server/MainActivity;->instance:Lx/org/server/MainActivity;

    invoke-virtual {v3}, Lx/org/server/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 479
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/16 v0, 0x320

    .line 481
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AutoDetectTouchInput: hoverTouchDistance "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTouchDistance:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " threshold "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hover "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hover:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " fingerHover "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->fingerHover:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget v1, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTouchDistance:F

    int-to-float v0, v0

    const/4 v3, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    .line 484
    sget-boolean v0, Lx/org/server/Globals;->AppUsesMouse:Z

    if-eqz v0, :cond_3

    .line 485
    sget-object v0, Lx/org/server/MainActivity;->instance:Lx/org/server/MainActivity;

    const-string v1, "Detected buggy touch panel, enabling workarounds"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 486
    :cond_3
    invoke-static {}, Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers$Holder;->access$1000()Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;

    move-result-object v0

    sput-object v0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->touchInput:Lx/org/server/DifferentTouchInput;

    goto :goto_2

    .line 490
    :cond_4
    iget-boolean v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->fingerHover:Z

    if-eqz v0, :cond_9

    .line 492
    sget-boolean v0, Lx/org/server/Globals;->AppUsesMouse:Z

    if-eqz v0, :cond_5

    .line 493
    sget-object v0, Lx/org/server/MainActivity;->instance:Lx/org/server/MainActivity;

    const-string v1, "Finger hover capability detected"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 495
    :cond_5
    sget-boolean v0, Lx/org/server/Globals;->FingerHover:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lx/org/server/Globals;->RelativeMouseMovement:Z

    if-nez v0, :cond_6

    sget v0, Lx/org/server/Globals;->LeftClickMethod:I

    if-eqz v0, :cond_8

    .line 497
    :cond_6
    sget-boolean v0, Lx/org/server/Globals;->RelativeMouseMovement:Z

    if-eqz v0, :cond_7

    .line 498
    sput v2, Lx/org/server/Globals;->ShowScreenUnderFinger:I

    .line 499
    :cond_7
    sput-boolean v3, Lx/org/server/Globals;->RelativeMouseMovement:Z

    .line 500
    sput v3, Lx/org/server/Globals;->LeftClickMethod:I

    .line 502
    :cond_8
    invoke-static {}, Lx/org/server/Settings;->applyMouseEmulationOptions()V

    .line 504
    :cond_9
    sget-boolean v0, Lx/org/server/Globals;->GenerateSubframeTouchEvents:Z

    if-eqz v0, :cond_a

    .line 505
    invoke-static {}, Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory$Holder;->access$1100()Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;

    move-result-object v0

    sput-object v0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->touchInput:Lx/org/server/DifferentTouchInput;

    goto :goto_2

    .line 507
    :cond_a
    invoke-static {}, Lx/org/server/DifferentTouchInput$IcsTouchInput$Holder;->access$1200()Lx/org/server/DifferentTouchInput$IcsTouchInput;

    move-result-object v0

    sput-object v0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->touchInput:Lx/org/server/DifferentTouchInput;

    .line 510
    :cond_b
    :goto_2
    invoke-super {p0, p1}, Lx/org/server/DifferentTouchInput$IcsTouchInput;->process(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public processGenericEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 514
    invoke-super {p0, p1}, Lx/org/server/DifferentTouchInput$IcsTouchInput;->processGenericEvent(Landroid/view/MotionEvent;)V

    .line 515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 519
    iput-boolean v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hover:Z

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverX:F

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverY:F

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTime:J

    .line 523
    sget v2, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->ExternalMouseDetected:I

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_1

    .line 524
    iput-boolean v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->fingerHover:Z

    .line 525
    :cond_1
    iget-boolean p1, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tap:Z

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 527
    iput-boolean p1, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tap:Z

    .line 528
    iget p1, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTouchDistance:F

    iget v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapX:F

    iget v1, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapY:F

    iget v2, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTouchDistance:F

    .line 529
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Hover hoverX "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " tapX "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " hoverY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " tapY "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->tapY:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " hoverTouchDistance "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;->hoverTouchDistance:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDL"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
