.class Lx/org/server/MainActivity$2Callback;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->startDownloader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field public Parent:Lx/org/server/MainActivity;

.field final synthetic this$0:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lx/org/server/MainActivity$2Callback;->this$0:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 376
    iget-object v0, p0, Lx/org/server/MainActivity$2Callback;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->setUpStatusLabel()V

    .line 377
    const-string v0, "SDL"

    const-string v1, "libSDL: Starting downloader"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lx/org/server/MainActivity;->access$200()Lx/org/server/DataDownloader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Lx/org/server/DataDownloader;

    iget-object v1, p0, Lx/org/server/MainActivity$2Callback;->Parent:Lx/org/server/MainActivity;

    invoke-static {v1}, Lx/org/server/MainActivity;->access$300(Lx/org/server/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lx/org/server/DataDownloader;-><init>(Lx/org/server/MainActivity;Landroid/widget/TextView;)V

    invoke-static {v0}, Lx/org/server/MainActivity;->access$202(Lx/org/server/DataDownloader;)Lx/org/server/DataDownloader;

    :cond_0
    return-void
.end method
