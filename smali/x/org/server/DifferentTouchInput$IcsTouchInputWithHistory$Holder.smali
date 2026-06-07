.class Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory$Holder;
.super Ljava/lang/Object;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 397
    new-instance v0, Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;-><init>(Lx/org/server/DifferentTouchInput$1;)V

    sput-object v0, Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory$Holder;->sInstance:Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;
    .locals 1

    .line 395
    sget-object v0, Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory$Holder;->sInstance:Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;

    return-object v0
.end method
