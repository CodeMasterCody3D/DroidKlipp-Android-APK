.class Lx/org/server/MainActivity$5Callback;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->requestNewAdvertisement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lx/org/server/MainActivity$5Callback;->this$0:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1150
    iget-object v0, p0, Lx/org/server/MainActivity$5Callback;->this$0:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$800(Lx/org/server/MainActivity;)Lx/org/server/Advertisement;

    move-result-object v0

    invoke-virtual {v0}, Lx/org/server/Advertisement;->requestNewAd()V

    return-void
.end method
