.class Lx/org/server/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->downloadFinishedInitSDL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lx/org/server/MainActivity$1;->this$0:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 396
    sget-boolean v0, Lx/org/server/Globals;->AutoDetectOrientation:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lx/org/server/MainActivity$1;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->isCurrentOrientationHorizontal()Z

    move-result v0

    sput-boolean v0, Lx/org/server/Globals;->HorizontalOrientation:Z

    .line 398
    :cond_0
    :goto_0
    iget-object v0, p0, Lx/org/server/MainActivity$1;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->isCurrentOrientationHorizontal()Z

    move-result v0

    sget-boolean v1, Lx/org/server/Globals;->HorizontalOrientation:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lx/org/server/MainActivity$1;->this$0:Lx/org/server/MainActivity;

    const-string v1, "keyguard"

    .line 399
    invoke-virtual {v0, v1}, Lx/org/server/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 412
    :cond_1
    iget-object v0, p0, Lx/org/server/MainActivity$1;->this$0:Lx/org/server/MainActivity;

    new-instance v1, Lx/org/server/MainActivity$1$1;

    invoke-direct {v1, p0}, Lx/org/server/MainActivity$1$1;-><init>(Lx/org/server/MainActivity$1;)V

    invoke-virtual {v0, v1}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 401
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: Waiting for screen orientation to change to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lx/org/server/Globals;->HorizontalOrientation:Z

    if-eqz v1, :cond_3

    const-string v1, "landscape"

    goto :goto_2

    :cond_3
    const-string v1, "portrait"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", and for disabling lockscreen mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    .line 403
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 405
    :goto_3
    iget-object v0, p0, Lx/org/server/MainActivity$1;->this$0:Lx/org/server/MainActivity;

    iget-boolean v0, v0, Lx/org/server/MainActivity;->_isPaused:Z

    if-eqz v0, :cond_4

    .line 407
    const-string v0, "libSDL: Application paused, cancelling SDL initialization until it will be brought to foreground"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 410
    :cond_4
    iget-object v0, p0, Lx/org/server/MainActivity$1;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lx/org/server/MainActivity$1;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    goto :goto_0
.end method
