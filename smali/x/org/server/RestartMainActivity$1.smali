.class Lx/org/server/RestartMainActivity$1;
.super Ljava/lang/Object;
.source "RestartMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/RestartMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/RestartMainActivity;


# direct methods
.method constructor <init>(Lx/org/server/RestartMainActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lx/org/server/RestartMainActivity$1;->this$0:Lx/org/server/RestartMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x7d0

    .line 129
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 131
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lx/org/server/RestartMainActivity$1;->this$0:Lx/org/server/RestartMainActivity;

    const-class v2, Lx/org/server/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    iget-object v1, p0, Lx/org/server/RestartMainActivity$1;->this$0:Lx/org/server/RestartMainActivity;

    invoke-virtual {v1}, Lx/org/server/RestartMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "libsdl.org.ACTIVITY_AUTODETECT_SCREEN_ORIENTATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lx/org/server/RestartMainActivity$1;->this$0:Lx/org/server/RestartMainActivity;

    invoke-virtual {v1}, Lx/org/server/RestartMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SDL_RESTART_PARAMS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 134
    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lx/org/server/RestartMainActivity$1;->this$0:Lx/org/server/RestartMainActivity;

    invoke-virtual {v1, v0}, Lx/org/server/RestartMainActivity;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v0, 0x3e8

    .line 138
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :catch_1
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void
.end method
