.class Lx/org/server/DemoRenderer$2;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/DemoRenderer;->onWindowResize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/DemoRenderer;

.field final synthetic val$h:I

.field final synthetic val$resizeThreadIndex:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lx/org/server/DemoRenderer;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 660
    iput-object p1, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    iput p2, p0, Lx/org/server/DemoRenderer$2;->val$resizeThreadIndex:I

    iput p3, p0, Lx/org/server/DemoRenderer$2;->val$w:I

    iput p4, p0, Lx/org/server/DemoRenderer$2;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 664
    iget v0, p0, Lx/org/server/DemoRenderer$2;->val$resizeThreadIndex:I

    iget-object v1, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    iget v1, v1, Lx/org/server/DemoRenderer;->mLastPendingResize:I

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 666
    :cond_0
    iget v0, p0, Lx/org/server/DemoRenderer$2;->val$w:I

    rem-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    .line 667
    iget v1, p0, Lx/org/server/DemoRenderer$2;->val$h:I

    rem-int/lit8 v2, v1, 0x2

    sub-int/2addr v1, v2

    .line 668
    iget-object v2, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    invoke-static {v2}, Lx/org/server/DemoRenderer;->access$000(Lx/org/server/DemoRenderer;)Lx/org/server/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 669
    sget-boolean v3, Lx/org/server/Globals;->ImmersiveMode:Z

    if-eqz v3, :cond_1

    .line 671
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 672
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 675
    :cond_1
    iget-object v2, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    invoke-static {v2}, Lx/org/server/DemoRenderer;->access$000(Lx/org/server/DemoRenderer;)Lx/org/server/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lx/org/server/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 677
    iget-object v2, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    iget v2, v2, Lx/org/server/DemoRenderer;->mWidth:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    iget v2, v2, Lx/org/server/DemoRenderer;->mHeight:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    iget v2, v2, Lx/org/server/DemoRenderer;->mWidth:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    iget v2, v2, Lx/org/server/DemoRenderer;->mHeight:I

    if-eq v2, v1, :cond_3

    .line 679
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "libSDL: DemoRenderer.onWindowResize(): screen size changed from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    iget v3, v3, Lx/org/server/DemoRenderer;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    iget v4, v4, Lx/org/server/DemoRenderer;->mHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SDL"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v2, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    invoke-static {v2}, Lx/org/server/DemoRenderer;->access$101(Lx/org/server/DemoRenderer;)V

    .line 681
    iget-object v2, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    invoke-static {v2, v0, v1}, Lx/org/server/DemoRenderer;->access$201(Lx/org/server/DemoRenderer;II)V

    .line 683
    :cond_3
    sget-boolean v2, Lx/org/server/Globals;->AutoDetectOrientation:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    iget v5, v5, Lx/org/server/DemoRenderer;->mWidth:I

    iget-object v6, p0, Lx/org/server/DemoRenderer$2;->this$0:Lx/org/server/DemoRenderer;

    iget v6, v6, Lx/org/server/DemoRenderer;->mHeight:I

    if-le v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-eq v4, v5, :cond_7

    if-le v0, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 684
    :goto_2
    sput-boolean v2, Lx/org/server/Globals;->HorizontalOrientation:Z

    :cond_7
    :goto_3
    return-void
.end method
