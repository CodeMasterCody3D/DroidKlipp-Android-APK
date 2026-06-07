.class public final Lkotlin/time/UnboundLocalDateTime$Companion;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/UnboundLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime$Companion;",
        "",
        "<init>",
        "()V",
        "fromInstant",
        "Lkotlin/time/UnboundLocalDateTime;",
        "instant",
        "Lkotlin/time/Instant;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInstant(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;
    .locals 24

    const-string v0, "instant"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1}, Lkotlin/time/Instant;->getEpochSeconds()J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    .line 514
    div-long v6, v2, v4

    xor-long v8, v2, v4

    const-wide/16 v10, -0x1

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-gez v0, :cond_0

    mul-long v8, v6, v4

    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    add-long/2addr v6, v10

    .line 515
    :cond_0
    rem-long/2addr v2, v4

    xor-long v8, v2, v4

    neg-long v14, v2

    or-long/2addr v14, v2

    and-long/2addr v8, v14

    const/16 v0, 0x3f

    shr-long/2addr v8, v0

    and-long/2addr v4, v8

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 520
    move-object/from16 v2, p0

    check-cast v2, Lkotlin/time/UnboundLocalDateTime$Companion;

    const-wide/32 v2, 0xafa6c

    add-long/2addr v2, v6

    const-wide/32 v4, 0x23ab1

    const-wide/16 v8, 0x190

    cmp-long v14, v2, v12

    if-gez v14, :cond_1

    const-wide/32 v14, 0xafa6d

    add-long/2addr v6, v14

    .line 527
    div-long/2addr v6, v4

    const-wide/16 v14, 0x1

    sub-long/2addr v6, v14

    mul-long v14, v6, v8

    neg-long v6, v6

    mul-long v6, v6, v4

    add-long/2addr v2, v6

    goto :goto_0

    :cond_1
    move-wide v14, v12

    :goto_0
    mul-long v6, v8, v2

    const-wide/16 v16, 0x24f

    add-long v6, v6, v16

    .line 531
    div-long/2addr v6, v4

    const-wide/16 v4, 0x16d

    mul-long v16, v4, v6

    const-wide/16 v18, 0x4

    .line 532
    div-long v20, v6, v18

    add-long v16, v16, v20

    const-wide/16 v20, 0x64

    div-long v22, v6, v20

    sub-long v16, v16, v22

    div-long v22, v6, v8

    add-long v16, v16, v22

    sub-long v16, v2, v16

    cmp-long v22, v16, v12

    if-gez v22, :cond_2

    add-long/2addr v6, v10

    mul-long v4, v4, v6

    .line 535
    div-long v10, v6, v18

    add-long/2addr v4, v10

    div-long v10, v6, v20

    sub-long/2addr v4, v10

    div-long v8, v6, v8

    add-long/2addr v4, v8

    sub-long v16, v2, v4

    :cond_2
    move-wide/from16 v2, v16

    add-long/2addr v6, v14

    long-to-int v3, v2

    mul-int/lit8 v2, v3, 0x5

    add-int/lit8 v2, v2, 0x2

    .line 542
    div-int/lit16 v2, v2, 0x99

    add-int/lit8 v4, v2, 0x2

    .line 543
    rem-int/lit8 v4, v4, 0xc

    add-int/lit8 v10, v4, 0x1

    mul-int/lit16 v4, v2, 0x132

    add-int/lit8 v4, v4, 0x5

    .line 544
    div-int/lit8 v4, v4, 0xa

    sub-int/2addr v3, v4

    add-int/lit8 v11, v3, 0x1

    .line 545
    div-int/lit8 v2, v2, 0xa

    int-to-long v2, v2

    add-long/2addr v6, v2

    long-to-int v9, v6

    .line 547
    div-int/lit16 v12, v0, 0xe10

    mul-int/lit16 v2, v12, 0xe10

    sub-int/2addr v0, v2

    .line 549
    div-int/lit8 v13, v0, 0x3c

    mul-int/lit8 v2, v13, 0x3c

    sub-int v14, v0, v2

    .line 551
    new-instance v8, Lkotlin/time/UnboundLocalDateTime;

    invoke-virtual {v1}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    move-result v15

    invoke-direct/range {v8 .. v15}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    return-object v8
.end method
