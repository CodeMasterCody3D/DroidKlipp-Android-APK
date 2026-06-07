.class Lx/org/server/MainActivity$1onClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onClickListener"
.end annotation


# instance fields
.field public p:Lx/org/server/MainActivity;

.field final synthetic this$0:Lx/org/server/MainActivity;

.field final synthetic val$loadedLibraries:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;Lx/org/server/MainActivity;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/org/server/MainActivity;",
            ")V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lx/org/server/MainActivity$1onClickListener;->this$0:Lx/org/server/MainActivity;

    iput-object p3, p0, Lx/org/server/MainActivity$1onClickListener;->val$loadedLibraries:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx/org/server/MainActivity$1onClickListener;->p:Lx/org/server/MainActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lx/org/server/MainActivity$1onClickListener;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->setUpStatusLabel()V

    .line 159
    const-string p1, "SDL"

    const-string v0, "libSDL: User clicked change phone config button"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lx/org/server/MainActivity$1onClickListener;->val$loadedLibraries:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 161
    iget-object p1, p0, Lx/org/server/MainActivity$1onClickListener;->this$0:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->setScreenOrientation()V

    .line 162
    iget-object p1, p0, Lx/org/server/MainActivity$1onClickListener;->p:Lx/org/server/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lx/org/server/SettingsMenu;->showConfig(Lx/org/server/MainActivity;Z)V

    return-void
.end method
