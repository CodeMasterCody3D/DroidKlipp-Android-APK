.class Lx/org/server/DataDownloader$1;
.super Landroid/os/storage/OnObbStateChangeListener;
.source "DataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/DataDownloader;->DownloadDataFile(Ljava/lang/String;Ljava/lang/String;III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/DataDownloader;

.field final synthetic val$ObbMounted:[Z

.field final synthetic val$ObbMountedError:[Z


# direct methods
.method constructor <init>(Lx/org/server/DataDownloader;[Z[Z)V
    .locals 0

    .line 463
    iput-object p1, p0, Lx/org/server/DataDownloader$1;->this$0:Lx/org/server/DataDownloader;

    iput-object p2, p0, Lx/org/server/DataDownloader$1;->val$ObbMounted:[Z

    iput-object p3, p0, Lx/org/server/DataDownloader$1;->val$ObbMountedError:[Z

    invoke-direct {p0}, Landroid/os/storage/OnObbStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onObbStateChange(Ljava/lang/String;I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/16 v1, 0x18

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    iget-object p2, p0, Lx/org/server/DataDownloader$1;->val$ObbMountedError:[Z

    aput-boolean v0, p2, p1

    return-void

    .line 469
    :cond_1
    :goto_0
    iget-object p2, p0, Lx/org/server/DataDownloader$1;->val$ObbMounted:[Z

    aput-boolean v0, p2, p1

    return-void
.end method
