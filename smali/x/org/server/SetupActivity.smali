.class public Lx/org/server/SetupActivity;
.super Landroid/app/Activity;
.source "SetupActivity.java"


# instance fields
.field private currentDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isDeveloperModeEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lx/org/server/SetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isUsbDebuggingEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lx/org/server/SetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkSetup()V
    .locals 2

    iget-object v0, p0, Lx/org/server/SetupActivity;->currentDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_skip_dismiss

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_skip_dismiss

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_skip_dismiss
    invoke-direct {p0}, Lx/org/server/SetupActivity;->isDeveloperModeEnabled()Z

    move-result v0

    if-nez v0, :cond_dev_ok

    invoke-direct {p0}, Lx/org/server/SetupActivity;->showDeveloperModeDialog()V

    return-void

    :cond_dev_ok
    invoke-direct {p0}, Lx/org/server/SetupActivity;->isUsbDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_usb_ok

    invoke-direct {p0}, Lx/org/server/SetupActivity;->showUsbDebuggingDialog()V

    return-void

    :cond_usb_ok
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lx/org/server/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lx/org/server/SetupActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lx/org/server/SetupActivity;->finish()V

    return-void
.end method

.method private showDeveloperModeDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Developer Mode Required"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "DroidKlipp requires Developer Mode to be enabled.\n\nTap \'Open Settings\', navigate to About Phone, then tap Build Number 7 times to unlock Developer Mode."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Open Settings"

    new-instance v2, Lx/org/server/SetupActivity$1;

    invoke-direct {v2, p0}, Lx/org/server/SetupActivity$1;-><init>(Lx/org/server/SetupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Exit"

    new-instance v2, Lx/org/server/SetupActivity$2;

    invoke-direct {v2, p0}, Lx/org/server/SetupActivity$2;-><init>(Lx/org/server/SetupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lx/org/server/SetupActivity;->currentDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showUsbDebuggingDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Enable USB Debugging"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Developer Mode is now enabled!\n\nTap \'Open Developer Options\' and turn on USB Debugging."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Open Developer Options"

    new-instance v2, Lx/org/server/SetupActivity$3;

    invoke-direct {v2, p0}, Lx/org/server/SetupActivity$3;-><init>(Lx/org/server/SetupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Exit"

    new-instance v2, Lx/org/server/SetupActivity$4;

    invoke-direct {v2, p0}, Lx/org/server/SetupActivity$4;-><init>(Lx/org/server/SetupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lx/org/server/SetupActivity;->currentDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lx/org/server/SetupActivity;->checkSetup()V

    return-void
.end method
