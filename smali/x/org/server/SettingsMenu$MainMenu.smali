.class Lx/org/server/SettingsMenu$MainMenu;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MainMenu"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method run(Lx/org/server/MainActivity;)V
    .locals 3

    const/16 v0, 0xc

    .line 241
    new-array v0, v0, [Lx/org/server/SettingsMenu$Menu;

    new-instance v1, Lx/org/server/SettingsMenuMisc$DownloadConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMisc$DownloadConfig;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;

    invoke-direct {v1, v2}, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;-><init>(Z)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$KeyboardConfigMainMenu;

    invoke-direct {v1}, Lx/org/server/SettingsMenuKeyboard$KeyboardConfigMainMenu;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMouse$MouseConfigMainMenu;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMouse$MouseConfigMainMenu;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMisc$AudioConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMisc$AudioConfig;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMisc$CommandlineConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMisc$CommandlineConfig;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMisc$StorageAccessConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMisc$StorageAccessConfig;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig;

    invoke-direct {v1}, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lx/org/server/SettingsMenu$OkButton;

    invoke-direct {v1}, Lx/org/server/SettingsMenu$OkButton;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 256
    invoke-virtual {p0, p1, v0}, Lx/org/server/SettingsMenu$MainMenu;->showMenuOptionsList(Lx/org/server/MainActivity;[Lx/org/server/SettingsMenu$Menu;)V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 237
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->device_config:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
