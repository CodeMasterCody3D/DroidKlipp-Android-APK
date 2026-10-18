.class final Lx/org/server/Backlight$Cmd;
.super Ljava/lang/Object;
.source "Backlight.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/org/server/Backlight$Cmd;->cmd:Ljava/lang/String;

    return-void
.end method


# virtual methods
# Runs `su -c <cmd>` and waits for it, on the Backlight executor thread.
.method public run()V
    .locals 5

    :try_start_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "su"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lx/org/server/Backlight$Cmd;->cmd:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    if-eqz v0, :done

    const-string v1, "DroidKlipp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backlight command failed, exit code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :done
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DroidKlipp"

    const-string v2, "Backlight command failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
