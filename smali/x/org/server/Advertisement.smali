.class Lx/org/server/Advertisement;
.super Ljava/lang/Object;
.source "Advertisement.java"


# instance fields
.field parent:Lx/org/server/MainActivity;


# direct methods
.method public constructor <init>(Lx/org/server/MainActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lx/org/server/Advertisement;->parent:Lx/org/server/MainActivity;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestNewAd()V
    .locals 0

    return-void
.end method
