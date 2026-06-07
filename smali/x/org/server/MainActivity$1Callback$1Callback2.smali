.class Lx/org/server/MainActivity$1Callback$1Callback2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity$1Callback;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback2"
.end annotation


# instance fields
.field public Parent:Lx/org/server/MainActivity;

.field final synthetic this$1:Lx/org/server/MainActivity$1Callback;

.field final synthetic val$loaded:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity$1Callback;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->this$1:Lx/org/server/MainActivity$1Callback;

    iput-object p2, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->val$loaded:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 262
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->Parent:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/Settings;->ProcessConfig(Lx/org/server/MainActivity;)V

    .line 263
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->this$1:Lx/org/server/MainActivity$1Callback;

    iget-object v0, v0, Lx/org/server/MainActivity$1Callback;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->setScreenOrientation()V

    .line 264
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->this$1:Lx/org/server/MainActivity$1Callback;

    iget-object v0, v0, Lx/org/server/MainActivity$1Callback;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->this$1:Lx/org/server/MainActivity$1Callback;

    iget-object v1, v1, Lx/org/server/MainActivity$1Callback;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    .line 265
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->val$loaded:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 266
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->this$1:Lx/org/server/MainActivity$1Callback;

    iget-object v0, v0, Lx/org/server/MainActivity$1Callback;->val$loadedLibraries:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 267
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->this$1:Lx/org/server/MainActivity$1Callback;

    iget-object v0, v0, Lx/org/server/MainActivity$1Callback;->this$0:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$100(Lx/org/server/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->this$1:Lx/org/server/MainActivity$1Callback;

    iget-object v0, v0, Lx/org/server/MainActivity$1Callback;->this$0:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$100(Lx/org/server/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->this$1:Lx/org/server/MainActivity$1Callback;

    iget-object v0, v0, Lx/org/server/MainActivity$1Callback;->this$0:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$100(Lx/org/server/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 271
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->this$1:Lx/org/server/MainActivity$1Callback;

    iget-object v0, v0, Lx/org/server/MainActivity$1Callback;->this$0:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$100(Lx/org/server/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 272
    iget-object v0, p0, Lx/org/server/MainActivity$1Callback$1Callback2;->this$1:Lx/org/server/MainActivity$1Callback;

    iget-object v0, v0, Lx/org/server/MainActivity$1Callback;->this$0:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$100(Lx/org/server/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    return-void
.end method
