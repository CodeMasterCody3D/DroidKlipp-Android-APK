.class Lx/org/server/DemoRenderer$1;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/DemoRenderer;-><init>(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/DemoRenderer;


# direct methods
.method constructor <init>(Lx/org/server/DemoRenderer;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lx/org/server/DemoRenderer$1;->this$0:Lx/org/server/DemoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 617
    invoke-static {}, Lx/org/server/DemoRenderer;->nativeClipboardChanged()V

    return-void
.end method
