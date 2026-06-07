.class Lx/org/server/SettingsMenuMisc$DownloadConfig$1;
.super Ljava/lang/Object;
.source "SettingsMenuMisc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMisc$DownloadConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMisc$DownloadConfig;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMisc$DownloadConfig;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lx/org/server/SettingsMenuMisc$DownloadConfig$1;->this$0:Lx/org/server/SettingsMenuMisc$DownloadConfig;

    iput-object p2, p0, Lx/org/server/SettingsMenuMisc$DownloadConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 114
    iget-object p1, p0, Lx/org/server/SettingsMenuMisc$DownloadConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenuMisc$DownloadConfig;->showCustomDownloadDirConfig(Lx/org/server/MainActivity;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 117
    :goto_0
    sput-boolean p1, Lx/org/server/Globals;->DownloadToSdcard:Z

    .line 118
    sget-boolean p1, Lx/org/server/Globals;->DownloadToSdcard:Z

    if-eqz p1, :cond_2

    .line 119
    invoke-static {}, Lx/org/server/Settings$SdcardAppPath;->get()Lx/org/server/Settings$SdcardAppPath;

    move-result-object p1

    iget-object p2, p0, Lx/org/server/SettingsMenuMisc$DownloadConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-virtual {p1, p2}, Lx/org/server/Settings$SdcardAppPath;->bestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 120
    :cond_2
    iget-object p1, p0, Lx/org/server/SettingsMenuMisc$DownloadConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :goto_1
    sput-object p1, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    .line 121
    iget-object p1, p0, Lx/org/server/SettingsMenuMisc$DownloadConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
