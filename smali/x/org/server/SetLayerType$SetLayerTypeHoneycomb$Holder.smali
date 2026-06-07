.class Lx/org/server/SetLayerType$SetLayerTypeHoneycomb$Holder;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1643
    new-instance v0, Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;-><init>(Lx/org/server/SetLayerType$1;)V

    sput-object v0, Lx/org/server/SetLayerType$SetLayerTypeHoneycomb$Holder;->sInstance:Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;
    .locals 1

    .line 1641
    sget-object v0, Lx/org/server/SetLayerType$SetLayerTypeHoneycomb$Holder;->sInstance:Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;

    return-object v0
.end method
