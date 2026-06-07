.class Lx/org/server/Settings$SdcardAppPath$Kitkat$Holder;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/Settings$SdcardAppPath$Kitkat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lx/org/server/Settings$SdcardAppPath$Kitkat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 818
    new-instance v0, Lx/org/server/Settings$SdcardAppPath$Kitkat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/org/server/Settings$SdcardAppPath$Kitkat;-><init>(Lx/org/server/Settings$1;)V

    sput-object v0, Lx/org/server/Settings$SdcardAppPath$Kitkat$Holder;->sInstance:Lx/org/server/Settings$SdcardAppPath$Kitkat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lx/org/server/Settings$SdcardAppPath$Kitkat;
    .locals 1

    .line 816
    sget-object v0, Lx/org/server/Settings$SdcardAppPath$Kitkat$Holder;->sInstance:Lx/org/server/Settings$SdcardAppPath$Kitkat;

    return-object v0
.end method
