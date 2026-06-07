.class Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenKeyboardAdvanced"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 894
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method run(Lx/org/server/MainActivity;)V
    .locals 5

    const/4 v0, 0x1

    .line 903
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 904
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lx/org/server/R$string;->screenkb_floating_joystick:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 907
    new-array v0, v0, [Z

    sget-boolean v2, Lx/org/server/Globals;->FloatingScreenJoystick:Z

    aput-boolean v2, v0, v3

    .line 911
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 912
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lx/org/server/R$string;->advanced:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 913
    new-instance v3, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced$1;

    invoke-direct {v3, p0}, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced$1;-><init>(Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 921
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lx/org/server/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced$2;

    invoke-direct {v1, p0, p1}, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced$2;-><init>(Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced;Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 929
    new-instance v0, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced$3;

    invoke-direct {v0, p0, p1}, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced$3;-><init>(Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced;Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 936
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 937
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 938
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 898
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->advanced:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
