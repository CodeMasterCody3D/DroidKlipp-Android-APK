.class Lx/org/server/MainActivity$1Callback;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field p:Lx/org/server/MainActivity;

.field final synthetic this$0:Lx/org/server/MainActivity;

.field final synthetic val$loadedLibraries:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;Lx/org/server/MainActivity;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/org/server/MainActivity;",
            ")V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lx/org/server/MainActivity$1Callback;->this$0:Lx/org/server/MainActivity;

    iput-object p3, p0, Lx/org/server/MainActivity$1Callback;->val$loadedLibraries:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx/org/server/MainActivity$1Callback;->p:Lx/org/server/MainActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0xc8

    .line 247
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 250
    :goto_0
    invoke-static {}, Lx/org/server/MainActivity;->access$000()Lx/org/server/AudioThread;

    move-result-object v0

    const-string v1, "SDL"

    if-nez v0, :cond_0

    .line 252
    const-string v0, "libSDL: Loading libraries"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback;->p:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->LoadLibraries()V

    .line 254
    new-instance v0, Lx/org/server/AudioThread;

    iget-object v2, p0, Lx/org/server/MainActivity$1Callback;->p:Lx/org/server/MainActivity;

    invoke-direct {v0, v2}, Lx/org/server/AudioThread;-><init>(Lx/org/server/MainActivity;)V

    invoke-static {v0}, Lx/org/server/MainActivity;->access$002(Lx/org/server/AudioThread;)Lx/org/server/AudioThread;

    .line 255
    const-string v0, "libSDL: Loading settings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 276
    new-instance v2, Lx/org/server/MainActivity$1Callback$1Callback2;

    invoke-direct {v2, p0, v0}, Lx/org/server/MainActivity$1Callback$1Callback2;-><init>(Lx/org/server/MainActivity$1Callback;Ljava/util/concurrent/Semaphore;)V

    .line 277
    iget-object v3, p0, Lx/org/server/MainActivity$1Callback;->p:Lx/org/server/MainActivity;

    iput-object v3, v2, Lx/org/server/MainActivity$1Callback$1Callback2;->Parent:Lx/org/server/MainActivity;

    .line 278
    iget-object v3, p0, Lx/org/server/MainActivity$1Callback;->p:Lx/org/server/MainActivity;

    invoke-virtual {v3, v2}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 279
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 280
    sget-boolean v0, Lx/org/server/Globals;->CompatibilityHacksStaticInit:Z

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback;->p:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->LoadApplicationLibrary(Landroid/content/Context;)V

    .line 284
    :cond_0
    sget-boolean v0, Lx/org/server/Settings;->settingsChanged:Z

    if-nez v0, :cond_3

    .line 286
    sget v0, Lx/org/server/Globals;->StartupMenuButtonTimeout:I

    if-lez v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "libSDL: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lx/org/server/Globals;->StartupMenuButtonTimeout:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-msec timeout in startup screen"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :try_start_1
    sget v0, Lx/org/server/Globals;->StartupMenuButtonTimeout:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 293
    :cond_1
    :goto_1
    sget-boolean v0, Lx/org/server/Settings;->settingsChanged:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 295
    :cond_2
    const-string v0, "libSDL: Timeout reached in startup screen, process with downloader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback;->p:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->startDownloader()V

    :cond_3
    :goto_2
    return-void
.end method
