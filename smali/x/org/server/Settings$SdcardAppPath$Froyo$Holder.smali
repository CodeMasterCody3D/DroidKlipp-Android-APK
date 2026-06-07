.class Lx/org/server/Settings$SdcardAppPath$Froyo$Holder;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/Settings$SdcardAppPath$Froyo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lx/org/server/Settings$SdcardAppPath$Froyo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 785
    new-instance v0, Lx/org/server/Settings$SdcardAppPath$Froyo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/org/server/Settings$SdcardAppPath$Froyo;-><init>(Lx/org/server/Settings$1;)V

    sput-object v0, Lx/org/server/Settings$SdcardAppPath$Froyo$Holder;->sInstance:Lx/org/server/Settings$SdcardAppPath$Froyo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lx/org/server/Settings$SdcardAppPath$Froyo;
    .locals 1

    .line 783
    sget-object v0, Lx/org/server/Settings$SdcardAppPath$Froyo$Holder;->sInstance:Lx/org/server/Settings$SdcardAppPath$Froyo;

    return-object v0
.end method
