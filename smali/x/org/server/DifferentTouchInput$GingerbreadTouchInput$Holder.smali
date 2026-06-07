.class Lx/org/server/DifferentTouchInput$GingerbreadTouchInput$Holder;
.super Ljava/lang/Object;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 284
    new-instance v0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;

    invoke-direct {v0}, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;-><init>()V

    sput-object v0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput$Holder;->sInstance:Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;
    .locals 1

    .line 282
    sget-object v0, Lx/org/server/DifferentTouchInput$GingerbreadTouchInput$Holder;->sInstance:Lx/org/server/DifferentTouchInput$GingerbreadTouchInput;

    return-object v0
.end method
