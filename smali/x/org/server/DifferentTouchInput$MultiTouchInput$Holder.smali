.class Lx/org/server/DifferentTouchInput$MultiTouchInput$Holder;
.super Ljava/lang/Object;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput$MultiTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lx/org/server/DifferentTouchInput$MultiTouchInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Lx/org/server/DifferentTouchInput$MultiTouchInput;

    invoke-direct {v0}, Lx/org/server/DifferentTouchInput$MultiTouchInput;-><init>()V

    sput-object v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$Holder;->sInstance:Lx/org/server/DifferentTouchInput$MultiTouchInput;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lx/org/server/DifferentTouchInput$MultiTouchInput;
    .locals 1

    .line 177
    sget-object v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$Holder;->sInstance:Lx/org/server/DifferentTouchInput$MultiTouchInput;

    return-object v0
.end method
