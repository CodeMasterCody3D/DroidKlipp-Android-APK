.class Lx/org/server/MainActivity$3Callback;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->setAdvertisementPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/MainActivity;

.field final synthetic val$layout:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1100
    iput-object p1, p0, Lx/org/server/MainActivity$3Callback;->this$0:Lx/org/server/MainActivity;

    iput-object p2, p0, Lx/org/server/MainActivity$3Callback;->val$layout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1104
    iget-object v0, p0, Lx/org/server/MainActivity$3Callback;->this$0:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$800(Lx/org/server/MainActivity;)Lx/org/server/Advertisement;

    move-result-object v0

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lx/org/server/MainActivity$3Callback;->val$layout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
