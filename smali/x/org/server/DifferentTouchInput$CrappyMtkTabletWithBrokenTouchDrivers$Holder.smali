.class Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers$Holder;
.super Ljava/lang/Object;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 423
    new-instance v0, Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;-><init>(Lx/org/server/DifferentTouchInput$1;)V

    sput-object v0, Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers$Holder;->sInstance:Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;
    .locals 1

    .line 421
    sget-object v0, Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers$Holder;->sInstance:Lx/org/server/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;

    return-object v0
.end method
