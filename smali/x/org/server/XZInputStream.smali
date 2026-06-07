.class public Lx/org/server/XZInputStream;
.super Ljava/io/InputStream;
.source "XZInputStream.java"


# instance fields
.field private in:Ljava/io/InputStream;

.field private inAvailable:I

.field private final inBuf:[B

.field private inOffset:I

.field private nativeData:J

.field private offsets:[I

.field private outBufEof:Z

.field private final tempBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lx/org/server/XZInputStream;->nativeData:J

    const/16 v2, 0x2000

    .line 41
    new-array v2, v2, [B

    iput-object v2, p0, Lx/org/server/XZInputStream;->inBuf:[B

    const/4 v2, 0x0

    .line 42
    iput v2, p0, Lx/org/server/XZInputStream;->inOffset:I

    .line 43
    iput v2, p0, Lx/org/server/XZInputStream;->inAvailable:I

    .line 44
    iput-boolean v2, p0, Lx/org/server/XZInputStream;->outBufEof:Z

    const/4 v2, 0x2

    .line 45
    new-array v2, v2, [I

    iput-object v2, p0, Lx/org/server/XZInputStream;->offsets:[I

    const/4 v2, 0x1

    .line 47
    new-array v2, v2, [B

    iput-object v2, p0, Lx/org/server/XZInputStream;->tempBuf:[B

    .line 51
    iput-object p1, p0, Lx/org/server/XZInputStream;->in:Ljava/io/InputStream;

    if-eqz p1, :cond_1

    .line 56
    invoke-direct {p0}, Lx/org/server/XZInputStream;->nativeInit()J

    move-result-wide v2

    iput-wide v2, p0, Lx/org/server/XZInputStream;->nativeData:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/OutOfMemoryError;

    const-string v0, "Cannot initialize JNI liblzma object"

    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "InputStream == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeRead(J[BI[BI[I)I
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    monitor-enter p0

    .line 74
    :try_start_0
    iget-wide v0, p0, Lx/org/server/XZInputStream;->nativeData:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 75
    invoke-direct {p0, v0, v1}, Lx/org/server/XZInputStream;->nativeClose(J)V

    .line 76
    :cond_0
    iput-wide v2, p0, Lx/org/server/XZInputStream;->nativeData:J

    .line 77
    iget-object v0, p0, Lx/org/server/XZInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 80
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    iput-object v1, p0, Lx/org/server/XZInputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lx/org/server/XZInputStream;->in:Ljava/io/InputStream;

    .line 83
    throw v0

    .line 85
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lx/org/server/XZInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catchall_1
    move-exception v0

    .line 95
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    throw v0

    :catchall_2
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lx/org/server/XZInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lx/org/server/XZInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lx/org/server/XZInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lx/org/server/XZInputStream;->outBufEof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-gtz p3, :cond_1

    return v0

    .line 120
    :cond_1
    iget v2, p0, Lx/org/server/XZInputStream;->inOffset:I

    iget v3, p0, Lx/org/server/XZInputStream;->inAvailable:I

    if-lt v2, v3, :cond_2

    if-eq v3, v1, :cond_2

    .line 122
    iget-object v2, p0, Lx/org/server/XZInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lx/org/server/XZInputStream;->inBuf:[B

    array-length v4, v3

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    iput v2, p0, Lx/org/server/XZInputStream;->inAvailable:I

    .line 123
    iput v0, p0, Lx/org/server/XZInputStream;->inOffset:I

    .line 127
    :cond_2
    iget-object v10, p0, Lx/org/server/XZInputStream;->offsets:[I

    iget v2, p0, Lx/org/server/XZInputStream;->inOffset:I

    aput v2, v10, v0

    const/4 v2, 0x1

    .line 128
    aput p2, v10, v2

    .line 129
    iget-wide v4, p0, Lx/org/server/XZInputStream;->nativeData:J

    iget-object v6, p0, Lx/org/server/XZInputStream;->inBuf:[B

    iget v7, p0, Lx/org/server/XZInputStream;->inAvailable:I

    move-object v3, p0

    move-object v8, p1

    move v9, p3

    invoke-direct/range {v3 .. v10}, Lx/org/server/XZInputStream;->nativeRead(J[BI[BI[I)I

    move-result p1

    .line 130
    iget-object p3, p0, Lx/org/server/XZInputStream;->offsets:[I

    aget v3, p3, v0

    iput v3, p0, Lx/org/server/XZInputStream;->inOffset:I

    .line 131
    aget p3, p3, v2

    if-eqz p1, :cond_7

    if-ne p1, v2, :cond_6

    .line 139
    iget p1, p0, Lx/org/server/XZInputStream;->inAvailable:I

    const-string v4, "Garbage at the end of LZMA stream"

    if-lt v3, p1, :cond_5

    if-eq p1, v1, :cond_3

    .line 142
    iget-object p1, p0, Lx/org/server/XZInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lx/org/server/XZInputStream;->inBuf:[B

    array-length v5, v3

    invoke-virtual {p1, v3, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iput p1, p0, Lx/org/server/XZInputStream;->inAvailable:I

    .line 143
    :cond_3
    iget p1, p0, Lx/org/server/XZInputStream;->inAvailable:I

    if-ne p1, v1, :cond_4

    .line 145
    iput-boolean v2, p0, Lx/org/server/XZInputStream;->outBufEof:Z

    goto :goto_0

    .line 144
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_6
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "LZMA error "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    :goto_0
    sub-int/2addr p3, p2

    return p3
.end method
