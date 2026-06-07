.class Lx/org/server/SettingsMenuMouse$MouseConfigMainMenu;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMouse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MouseConfigMainMenu"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method enabled()Z
    .locals 1

    .line 88
    sget-boolean v0, Lx/org/server/Globals;->AppUsesMouse:Z

    return v0
.end method

.method run(Lx/org/server/MainActivity;)V
    .locals 3

    const/16 v0, 0x8

    .line 92
    new-array v0, v0, [Lx/org/server/SettingsMenu$Menu;

    new-instance v1, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;-><init>(Z)V

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMouse$LeftClickConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMouse$LeftClickConfig;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMouse$RightClickConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMouse$RightClickConfig;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMouse$CalibrateTouchscreenMenu;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMouse$CalibrateTouchscreenMenu;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenu$OkButton;

    invoke-direct {v1}, Lx/org/server/SettingsMenu$OkButton;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 103
    invoke-virtual {p0, p1, v0}, Lx/org/server/SettingsMenuMouse$MouseConfigMainMenu;->showMenuOptionsList(Lx/org/server/MainActivity;[Lx/org/server/SettingsMenu$Menu;)V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->mouse_emulation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
