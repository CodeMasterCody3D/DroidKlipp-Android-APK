.class Lx/org/server/DemoRenderer$2Callback;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/DemoRenderer;->hideScreenKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field public parent:Lx/org/server/MainActivity;

.field final synthetic this$0:Lx/org/server/DemoRenderer;


# direct methods
.method constructor <init>(Lx/org/server/DemoRenderer;)V
    .locals 0

    .line 801
    iput-object p1, p0, Lx/org/server/DemoRenderer$2Callback;->this$0:Lx/org/server/DemoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 806
    iget-object v0, p0, Lx/org/server/DemoRenderer$2Callback;->parent:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->hideScreenKeyboard()V

    return-void
.end method
