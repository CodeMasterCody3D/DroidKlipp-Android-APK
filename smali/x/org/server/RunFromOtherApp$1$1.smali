.class Lx/org/server/RunFromOtherApp$1$1;
.super Ljava/lang/Object;
.source "RunFromOtherApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/RunFromOtherApp$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lx/org/server/RunFromOtherApp$1;

.field final synthetic val$callingActivity:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lx/org/server/RunFromOtherApp$1;Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lx/org/server/RunFromOtherApp$1$1;->this$1:Lx/org/server/RunFromOtherApp$1;

    iput-object p2, p0, Lx/org/server/RunFromOtherApp$1$1;->val$callingActivity:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x1f4

    .line 138
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    iget-object v1, p0, Lx/org/server/RunFromOtherApp$1$1;->val$callingActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching calling activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDL"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lx/org/server/RunFromOtherApp$1$1;->this$1:Lx/org/server/RunFromOtherApp$1;

    iget-object v1, v1, Lx/org/server/RunFromOtherApp$1;->this$0:Lx/org/server/RunFromOtherApp;

    invoke-virtual {v1, v0}, Lx/org/server/RunFromOtherApp;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
