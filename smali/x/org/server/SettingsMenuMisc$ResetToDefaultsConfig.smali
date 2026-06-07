.class Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResetToDefaultsConfig"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 648
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method enabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method run(Lx/org/server/MainActivity;)V
    .locals 3

    .line 660
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 661
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->reset_config_ask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 662
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->reset_config_ask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 664
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$1;

    invoke-direct {v2, p0, p1}, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$1;-><init>(Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 673
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$2;

    invoke-direct {v2, p0, p1}, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$2;-><init>(Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 681
    new-instance v1, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$3;

    invoke-direct {v1, p0, p1}, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$3;-><init>(Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 688
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 689
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 690
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 652
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->reset_config:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
