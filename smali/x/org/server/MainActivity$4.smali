.class Lx/org/server/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->showScreenKeyboardWithoutTextInputField(I)V
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

    .line 888
    iput-object p1, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 891
    iget-object v0, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    iget-object v1, v1, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 894
    iget-object v0, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    .line 896
    :cond_0
    iget-object v0, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 897
    iget-object v0, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$500(Lx/org/server/MainActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    iget-object v1, v1, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {v1}, Lx/org/server/DemoGLSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 898
    iget-object v0, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    .line 900
    iget-object v0, p0, Lx/org/server/MainActivity$4;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/org/server/DemoGLSurfaceView;->captureMouse(Z)V

    return-void
.end method
