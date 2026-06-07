.class Lx/org/server/DemoRenderer$1Callback;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/DemoRenderer;->showScreenKeyboard(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field public oldText:Ljava/lang/String;

.field public parent:Lx/org/server/MainActivity;

.field final synthetic this$0:Lx/org/server/DemoRenderer;


# direct methods
.method constructor <init>(Lx/org/server/DemoRenderer;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lx/org/server/DemoRenderer$1Callback;->this$0:Lx/org/server/DemoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 790
    iget-object v0, p0, Lx/org/server/DemoRenderer$1Callback;->parent:Lx/org/server/MainActivity;

    iget-object v1, p0, Lx/org/server/DemoRenderer$1Callback;->oldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/org/server/MainActivity;->showScreenKeyboard(Ljava/lang/String;)V

    return-void
.end method
