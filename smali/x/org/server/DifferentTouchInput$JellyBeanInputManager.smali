.class Lx/org/server/DifferentTouchInput$JellyBeanInputManager;
.super Ljava/lang/Object;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellyBeanInputManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/DifferentTouchInput$JellyBeanInputManager$Listener;,
        Lx/org/server/DifferentTouchInput$JellyBeanInputManager$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lx/org/server/DifferentTouchInput$1;)V
    .locals 0

    .line 573
    invoke-direct {p0}, Lx/org/server/DifferentTouchInput$JellyBeanInputManager;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;)V
    .locals 2

    .line 602
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    .line 603
    new-instance v0, Lx/org/server/DifferentTouchInput$JellyBeanInputManager$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/org/server/DifferentTouchInput$JellyBeanInputManager$Listener;-><init>(Lx/org/server/DifferentTouchInput$1;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method
