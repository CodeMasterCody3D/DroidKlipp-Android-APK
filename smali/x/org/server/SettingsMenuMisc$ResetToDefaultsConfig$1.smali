.class Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$1;
.super Ljava/lang/Object;
.source "SettingsMenuMisc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 665
    iput-object p1, p0, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$1;->this$0:Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig;

    iput-object p2, p0, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 668
    iget-object p2, p0, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-static {p2}, Lx/org/server/Settings;->DeleteSdlConfigOnUpgradeAndRestart(Lx/org/server/MainActivity;)V

    .line 669
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 670
    iget-object p1, p0, Lx/org/server/SettingsMenuMisc$ResetToDefaultsConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
