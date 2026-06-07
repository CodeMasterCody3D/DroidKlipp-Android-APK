.class Lx/org/server/DemoRenderer$6;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/DemoRenderer;->cloudLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
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

    .line 910
    iput-object p1, p0, Lx/org/server/DemoRenderer$6;->this$0:Lx/org/server/DemoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 913
    iget-object v0, p0, Lx/org/server/DemoRenderer$6;->this$0:Lx/org/server/DemoRenderer;

    invoke-static {v0}, Lx/org/server/DemoRenderer;->access$000(Lx/org/server/DemoRenderer;)Lx/org/server/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lx/org/server/MainActivity;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
