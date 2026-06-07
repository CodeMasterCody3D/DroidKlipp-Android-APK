.class Lx/org/server/SettingsMenuMisc$DownloadConfig$3;
.super Ljava/lang/Object;
.source "SettingsMenuMisc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMisc$DownloadConfig;->showCustomDownloadDirConfig(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lx/org/server/SettingsMenuMisc$DownloadConfig$3;->val$edit:Landroid/widget/EditText;

    iput-object p2, p0, Lx/org/server/SettingsMenuMisc$DownloadConfig$3;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 151
    iget-object p2, p0, Lx/org/server/SettingsMenuMisc$DownloadConfig$3;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    .line 152
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 153
    iget-object p1, p0, Lx/org/server/SettingsMenuMisc$DownloadConfig$3;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
