.class Lx/org/server/SettingsMenuMouse$JoystickMouseConfig;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMouse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JoystickMouseConfig"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 606
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method

.method static showJoystickMouseAccelConfig(Lx/org/server/MainActivity;)V
    .locals 4

    const/4 v0, 0x4

    .line 648
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->none:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 649
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_slow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 650
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 651
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_fast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 653
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 654
    sget v2, Lx/org/server/R$string;->mouse_joystickmouseaccel:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 655
    sget v2, Lx/org/server/Globals;->MoveMouseWithJoystickAccel:I

    new-instance v3, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$3;

    invoke-direct {v3, p0}, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$3;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 665
    new-instance v0, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$4;

    invoke-direct {v0, p0}, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$4;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 673
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 674
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method enabled()Z
    .locals 1

    .line 614
    sget-boolean v0, Lx/org/server/Globals;->MoveMouseWithJoystick:Z

    return v0
.end method

.method run(Lx/org/server/MainActivity;)V
    .locals 4

    const/4 v0, 0x3

    .line 618
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_slow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 619
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 620
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_fast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 622
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 623
    sget v2, Lx/org/server/R$string;->mouse_joystickmousespeed:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 624
    sget v2, Lx/org/server/Globals;->MoveMouseWithJoystickSpeed:I

    new-instance v3, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$1;

    invoke-direct {v3, p0, p1}, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$1;-><init>(Lx/org/server/SettingsMenuMouse$JoystickMouseConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 634
    new-instance v0, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$2;

    invoke-direct {v0, p0, p1}, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$2;-><init>(Lx/org/server/SettingsMenuMouse$JoystickMouseConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 641
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 642
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 643
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 610
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->mouse_joystickmousespeed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
