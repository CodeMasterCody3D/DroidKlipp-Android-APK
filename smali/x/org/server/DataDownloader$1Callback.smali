.class Lx/org/server/DataDownloader$1Callback;
.super Ljava/lang/Object;
.source "DataDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/DataDownloader;->initParent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field public Parent:Lx/org/server/MainActivity;

.field final synthetic this$0:Lx/org/server/DataDownloader;


# direct methods
.method constructor <init>(Lx/org/server/DataDownloader;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lx/org/server/DataDownloader$1Callback;->this$0:Lx/org/server/DataDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 854
    iget-object v0, p0, Lx/org/server/DataDownloader$1Callback;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->downloadFinishedInitSDL()V

    return-void
.end method
