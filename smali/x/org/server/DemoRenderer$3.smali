.class Lx/org/server/DemoRenderer$3;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/DemoRenderer;->cloudSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/DemoRenderer;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$dialogTitle:Ljava/lang/String;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$imageFile:Ljava/lang/String;

.field final synthetic val$playedTimeMs:J

.field final synthetic val$saveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lx/org/server/DemoRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 877
    iput-object p1, p0, Lx/org/server/DemoRenderer$3;->this$0:Lx/org/server/DemoRenderer;

    iput-object p2, p0, Lx/org/server/DemoRenderer$3;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lx/org/server/DemoRenderer$3;->val$saveId:Ljava/lang/String;

    iput-object p4, p0, Lx/org/server/DemoRenderer$3;->val$dialogTitle:Ljava/lang/String;

    iput-object p5, p0, Lx/org/server/DemoRenderer$3;->val$description:Ljava/lang/String;

    iput-object p6, p0, Lx/org/server/DemoRenderer$3;->val$imageFile:Ljava/lang/String;

    iput-wide p7, p0, Lx/org/server/DemoRenderer$3;->val$playedTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 880
    iget-object v0, p0, Lx/org/server/DemoRenderer$3;->this$0:Lx/org/server/DemoRenderer;

    invoke-static {v0}, Lx/org/server/DemoRenderer;->access$000(Lx/org/server/DemoRenderer;)Lx/org/server/MainActivity;

    move-result-object v0

    iget-object v1, v0, Lx/org/server/MainActivity;->cloudSave:Lx/org/server/CloudSave;

    iget-object v2, p0, Lx/org/server/DemoRenderer$3;->val$filename:Ljava/lang/String;

    iget-object v3, p0, Lx/org/server/DemoRenderer$3;->val$saveId:Ljava/lang/String;

    iget-object v4, p0, Lx/org/server/DemoRenderer$3;->val$dialogTitle:Ljava/lang/String;

    iget-object v5, p0, Lx/org/server/DemoRenderer$3;->val$description:Ljava/lang/String;

    iget-object v6, p0, Lx/org/server/DemoRenderer$3;->val$imageFile:Ljava/lang/String;

    iget-wide v7, p0, Lx/org/server/DemoRenderer$3;->val$playedTimeMs:J

    invoke-virtual/range {v1 .. v8}, Lx/org/server/CloudSave;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    return-void
.end method
