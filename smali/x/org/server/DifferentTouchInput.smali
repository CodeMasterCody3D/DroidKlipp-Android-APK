.class abstract Lx/org/server/DifferentTouchInput;
.super Ljava/lang/Object;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;,
        Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;,
        Lx/org/server/DifferentTouchInput$MultiTouchInput;,
        Lx/org/server/DifferentTouchInput$SingleTouchInput;,
        Lx/org/server/DifferentTouchInput$JellyBeanInputManager;,
        Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;,
        Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;,
        Lx/org/server/DifferentTouchInput$IcsTouchInput;
    }
.end annotation


# static fields
.field public static ExternalMouseDetected:I

.field public static buttonState:I

.field public static capturedMouseX:F

.field public static capturedMouseY:F

.field private static gamepadIds:[I

.field public static touchInput:Lx/org/server/DifferentTouchInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    invoke-static {}, Lx/org/server/DifferentTouchInput;->getInstance()Lx/org/server/DifferentTouchInput;

    move-result-object v0

    sput-object v0, Lx/org/server/DifferentTouchInput;->touchInput:Lx/org/server/DifferentTouchInput;

    const/4 v0, 0x4

    .line 535
    new-array v0, v0, [I

    sput-object v0, Lx/org/server/DifferentTouchInput;->gamepadIds:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1500()[I
    .locals 1

    .line 75
    sget-object v0, Lx/org/server/DifferentTouchInput;->gamepadIds:[I

    return-object v0
.end method

.method public static getInstance()Lx/org/server/DifferentTouchInput;
    .locals 9

    .line 90
    const-string v0, "SDL"

    .line 93
    const-class v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v6, v1, v3

    .line 96
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getPointerCount"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    .line 98
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getPointerId"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device board: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Lx/org/server/DifferentTouchInput$AutoDetectTouchInput$Holder;->access$000()Lx/org/server/DifferentTouchInput$AutoDetectTouchInput;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 120
    :try_start_1
    invoke-static {}, Lx/org/server/DifferentTouchInput$MultiTouchInput$Holder;->access$200()Lx/org/server/DifferentTouchInput$MultiTouchInput;

    move-result-object v0

    return-object v0

    .line 122
    :cond_3
    invoke-static {}, Lx/org/server/DifferentTouchInput$SingleTouchInput$Holder;->access$300()Lx/org/server/DifferentTouchInput$SingleTouchInput;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 124
    :catch_1
    invoke-static {}, Lx/org/server/DifferentTouchInput$SingleTouchInput$Holder;->access$300()Lx/org/server/DifferentTouchInput$SingleTouchInput;

    move-result-object v0

    return-object v0
.end method

.method public static processGamepadDeviceId(Landroid/view/InputDevice;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 541
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/lit8 v2, v1, 0x10

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    const/16 v2, 0x401

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    return v0

    .line 547
    :cond_1
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    move-result p0

    const/4 v1, 0x0

    .line 548
    :goto_0
    sget-object v2, Lx/org/server/DifferentTouchInput;->gamepadIds:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 550
    aget v2, v2, v1

    if-ne v2, p0, :cond_2

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 553
    :goto_1
    sget-object v2, Lx/org/server/DifferentTouchInput;->gamepadIds:[I

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 555
    aget v2, v2, v1

    if-nez v2, :cond_4

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "libSDL: gamepad added: deviceId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gamepadId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SDL"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    sget-object v0, Lx/org/server/DifferentTouchInput;->gamepadIds:[I

    aput p0, v0, v1

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public static registerInputManagerCallbacks(Landroid/content/Context;)V
    .locals 1

    .line 569
    invoke-static {}, Lx/org/server/DifferentTouchInput$JellyBeanInputManager$Holder;->access$1300()Lx/org/server/DifferentTouchInput$JellyBeanInputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx/org/server/DifferentTouchInput$JellyBeanInputManager;->register(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract process(Landroid/view/MotionEvent;)V
.end method

.method public abstract processGenericEvent(Landroid/view/MotionEvent;)V
.end method
