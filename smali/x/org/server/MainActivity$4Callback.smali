.class Lx/org/server/MainActivity$4Callback;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->setAdvertisementVisible(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/MainActivity;

.field final synthetic val$visible:I


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1114
    iput-object p1, p0, Lx/org/server/MainActivity$4Callback;->this$0:Lx/org/server/MainActivity;

    iput p2, p0, Lx/org/server/MainActivity$4Callback;->val$visible:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1118
    iget v0, p0, Lx/org/server/MainActivity$4Callback;->val$visible:I

    .line 1121
    iget-object v1, p0, Lx/org/server/MainActivity$4Callback;->this$0:Lx/org/server/MainActivity;

    if-nez v0, :cond_0

    .line 1119
    invoke-static {v1}, Lx/org/server/MainActivity;->access$800(Lx/org/server/MainActivity;)Lx/org/server/Advertisement;

    move-result-object v0

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1121
    :cond_0
    invoke-static {v1}, Lx/org/server/MainActivity;->access$800(Lx/org/server/MainActivity;)Lx/org/server/Advertisement;

    move-result-object v0

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
