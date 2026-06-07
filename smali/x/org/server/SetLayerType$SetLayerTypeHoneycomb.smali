.class Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;
.super Lx/org/server/SetLayerType;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SetLayerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetLayerTypeHoneycomb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/SetLayerType$SetLayerTypeHoneycomb$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1639
    invoke-direct {p0}, Lx/org/server/SetLayerType;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lx/org/server/SetLayerType$1;)V
    .locals 0

    .line 1639
    invoke-direct {p0}, Lx/org/server/SetLayerType$SetLayerTypeHoneycomb;-><init>()V

    return-void
.end method


# virtual methods
.method public setLayerType(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1647
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
