.class Lx/org/server/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lx/org/server/MainActivity$3;

.field final synthetic val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity$3;Lx/org/server/MainActivity$3$1BuiltInKeyboardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 779
    iput-object p1, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iput-object p2, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 0

    return-void
.end method

.method public onPress(I)V
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    goto :goto_0

    .line 786
    :cond_1
    iget-object v0, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    invoke-virtual {v0}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    .line 788
    iget-boolean v3, v1, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v3, :cond_2

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    if-ne p1, v1, :cond_2

    :goto_0
    return-void

    :cond_3
    const v0, 0x186a0

    if-le p1, v0, :cond_4

    sub-int/2addr p1, v0

    .line 794
    iget-object v0, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iget-object v0, v0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v3, 0x3b

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lx/org/server/DemoGLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 796
    :cond_4
    iget-object v0, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iget-object v0, v0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lx/org/server/DemoGLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method public onRelease(I)V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 802
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 803
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iget-object p1, p1, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {p1, v1}, Lx/org/server/MainActivity;->showScreenKeyboardWithoutTextInputField(I)V

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x3b

    if-ne p1, v0, :cond_2

    .line 808
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    iget-boolean v0, p1, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->shift:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p1, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->shift:Z

    .line 809
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    iget-boolean p1, p1, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->shift:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    iget-boolean p1, p1, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->alt:Z

    if-nez p1, :cond_1

    .line 810
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iget-object p1, p1, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object p1, p1, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Lx/org/server/DemoGLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 812
    :cond_1
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iget-object p1, p1, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object p1, p1, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Lx/org/server/DemoGLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 813
    :goto_0
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    invoke-virtual {p1}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->ChangeKeyboard()V

    return-void

    :cond_2
    const/4 v0, -0x6

    if-ne p1, v0, :cond_4

    .line 818
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    iget-boolean v0, p1, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->alt:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p1, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->alt:Z

    .line 819
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    iget-boolean p1, p1, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->alt:Z

    if-eqz p1, :cond_3

    .line 820
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iget-object p1, p1, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object p1, p1, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Lx/org/server/DemoGLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 822
    :cond_3
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    iput-boolean v1, p1, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->shift:Z

    .line 823
    :goto_1
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    invoke-virtual {p1}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->ChangeKeyboard()V

    return-void

    :cond_4
    if-gez p1, :cond_5

    goto/16 :goto_4

    .line 828
    :cond_5
    iget-object v0, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    invoke-virtual {v0}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    .line 830
    iget-boolean v5, v4, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v5, :cond_6

    iget-object v5, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v5, v1

    if-ne p1, v5, :cond_6

    .line 832
    iget-boolean v0, v4, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 839
    iget-object v3, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    if-eqz v0, :cond_7

    .line 834
    iget-object v0, v3, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->stickyKeys:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v0, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iget-object v0, v0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Lx/org/server/DemoGLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void

    .line 839
    :cond_7
    iget-object v0, v3, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->stickyKeys:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 840
    iget-object v0, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iget-object v0, v0, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lx/org/server/DemoGLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return-void

    :cond_8
    const v0, 0x186a0

    if-le p1, v0, :cond_9

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    .line 853
    :goto_2
    iget-object v4, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iget-object v4, v4, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object v4, v4, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v4, p1, v5}, Lx/org/server/DemoGLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    if-eqz v0, :cond_b

    .line 857
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->this$1:Lx/org/server/MainActivity$3;

    iget-object p1, p1, Lx/org/server/MainActivity$3;->this$0:Lx/org/server/MainActivity;

    iget-object p1, p1, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Lx/org/server/DemoGLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 858
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    iget-object p1, p1, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->stickyKeys:Ljava/util/TreeSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 859
    iget-object p1, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    invoke-virtual {p1}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object p1

    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 861
    iget-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    if-ne v2, v3, :cond_a

    iget-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    if-eqz v2, :cond_a

    .line 863
    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 864
    iget-object v0, p0, Lx/org/server/MainActivity$3$1;->val$builtinKeyboard:Lx/org/server/MainActivity$3$1BuiltInKeyboardView;

    invoke-virtual {v0}, Lx/org/server/MainActivity$3$1BuiltInKeyboardView;->invalidateAllKeys()V

    goto :goto_3

    :cond_b
    :goto_4
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method
