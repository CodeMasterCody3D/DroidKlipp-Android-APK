.class Lx/org/server/MainActivity$3;
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

.field final synthetic val$keyboard:I


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 716
    iput-object p1, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iput p2, p0, Lx/org/server/MainActivity$3;->val$keyboard:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 719
    iget-object v0, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/org/server/DemoGLSurfaceView;->captureMouse(Z)V

    .line 720
    iget v0, p0, Lx/org/server/MainActivity$3;->val$keyboard:I

    .line 728
    iget-object v2, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    if-nez v0, :cond_0

    .line 722
    invoke-static {v2}, Lx/org/server/MainActivity;->access$500(Lx/org/server/MainActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 723
    iget-object v0, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$500(Lx/org/server/MainActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v1, v1, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 724
    iget-object v0, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    .line 728
    :cond_0
    iget-object v0, v2, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    if-eqz v0, :cond_1

    return-void

    .line 775
    :cond_1
    new-instance v0, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    iget-object v1, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;-><init>(Lx/org/server/MainActivity$3;Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x3f333333    # 0.7f

    .line 776
    invoke-virtual {v0, v1}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->setAlpha(F)V

    .line 777
    invoke-virtual {v0}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->ChangeKeyboard()V

    .line 778
    new-instance v1, Lx/org/server/MainActivity$3$1;

    invoke-direct {v1, p0, v0}, Lx/org/server/MainActivity$3$1;-><init>(Lx/org/server/MainActivity$3;Lx/org/server/MainActivity$3$1BuiltInKeyboardView;)V

    invoke-virtual {v0, v1}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 876
    iget-object v1, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iput-object v0, v1, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    .line 877
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 878
    iget-object v1, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v1, v1, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v2, v2, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    iget-object v0, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v1, v1, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method
