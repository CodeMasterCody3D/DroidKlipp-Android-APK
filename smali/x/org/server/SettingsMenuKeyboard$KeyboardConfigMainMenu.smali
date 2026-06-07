.class Lx/org/server/SettingsMenuKeyboard$KeyboardConfigMainMenu;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyboardConfigMainMenu"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method enabled()Z
    .locals 1

    .line 89
    sget-boolean v0, Lx/org/server/Globals;->UseTouchscreenKeyboard:Z

    return v0
.end method

.method run(Lx/org/server/MainActivity;)V
    .locals 3

    const/16 v0, 0x8

    .line 93
    new-array v0, v0, [Lx/org/server/SettingsMenu$Menu;

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardThemeConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardThemeConfig;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardDrawSizeConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardDrawSizeConfig;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$RemapScreenKbConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuKeyboard$RemapScreenKbConfig;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout;

    invoke-direct {v1}, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced;

    invoke-direct {v1}, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenu$OkButton;

    invoke-direct {v1}, Lx/org/server/SettingsMenu$OkButton;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 104
    invoke-virtual {p0, p1, v0}, Lx/org/server/SettingsMenuKeyboard$KeyboardConfigMainMenu;->showMenuOptionsList(Lx/org/server/MainActivity;[Lx/org/server/SettingsMenu$Menu;)V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->controls_screenkb:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
