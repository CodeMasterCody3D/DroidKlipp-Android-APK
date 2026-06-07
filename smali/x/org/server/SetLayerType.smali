.class abstract Lx/org/server/SetLayerType;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;,
        Lx/org/server/SetLayerType$SetLayerTypeDummy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lx/org/server/SetLayerType;
    .locals 1

    .line 1633
    invoke-static {}, Lx/org/server/SetLayerType$SetLayerTypeHoneycomb$Holder;->access$000()Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract setLayerType(Landroid/view/View;)V
.end method
