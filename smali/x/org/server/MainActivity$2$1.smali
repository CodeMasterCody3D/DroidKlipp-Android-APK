.class Lx/org/server/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity$2;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lx/org/server/MainActivity$2;

.field final synthetic val$heightDiff:I

.field final synthetic val$r:Landroid/graphics/Rect;

.field final synthetic val$widthDiff:I


# direct methods
.method constructor <init>(Lx/org/server/MainActivity$2;Landroid/graphics/Rect;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 579
    iput-object p1, p0, Lx/org/server/MainActivity$2$1;->this$1:Lx/org/server/MainActivity$2;

    iput-object p2, p0, Lx/org/server/MainActivity$2$1;->val$r:Landroid/graphics/Rect;

    iput p3, p0, Lx/org/server/MainActivity$2$1;->val$widthDiff:I

    iput p4, p0, Lx/org/server/MainActivity$2$1;->val$heightDiff:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 582
    iget-object v0, p0, Lx/org/server/MainActivity$2$1;->this$1:Lx/org/server/MainActivity$2;

    iget-object v0, v0, Lx/org/server/MainActivity$2;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lx/org/server/MainActivity$2$1;->this$1:Lx/org/server/MainActivity$2;

    iget-object v1, v1, Lx/org/server/MainActivity$2;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    .line 583
    iget-object v0, p0, Lx/org/server/MainActivity$2$1;->this$1:Lx/org/server/MainActivity$2;

    iget-object v0, v0, Lx/org/server/MainActivity$2;->this$0:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    iget-object v0, p0, Lx/org/server/MainActivity$2$1;->val$r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lx/org/server/MainActivity$2$1;->val$widthDiff:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lx/org/server/MainActivity$2$1;->val$r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lx/org/server/MainActivity$2$1;->val$heightDiff:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lx/org/server/MainActivity$2$1;->val$r:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lx/org/server/MainActivity$2$1;->val$r:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lx/org/server/DemoGLSurfaceView;->nativeScreenVisibleRect(IIII)V

    return-void
.end method
