.class Lx/org/server/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->setScreenKeyboardHintMessage(Ljava/lang/String;)V
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

    .line 1057
    iput-object p1, p0, Lx/org/server/MainActivity$7;->this$0:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1060
    iget-object v0, p0, Lx/org/server/MainActivity$7;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx/org/server/MainActivity$7;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lx/org/server/MainActivity$7;->this$0:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$700(Lx/org/server/MainActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    iget-object v1, p0, Lx/org/server/MainActivity$7;->this$0:Lx/org/server/MainActivity;

    iget-object v1, v1, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx/org/server/MainActivity$7;->this$0:Lx/org/server/MainActivity;

    sget v2, Lx/org/server/R$string;->text_edit_click_here:I

    invoke-virtual {v0, v2}, Lx/org/server/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
