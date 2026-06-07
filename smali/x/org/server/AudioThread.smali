.class Lx/org/server/AudioThread;
.super Ljava/lang/Object;
.source "Audio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/AudioThread$RecordingThread;
    }
.end annotation


# instance fields
.field private mAudio:Landroid/media/AudioTrack;

.field private mAudioBuffer:[B

.field private mParent:Lx/org/server/MainActivity;

.field private mRecordThread:Lx/org/server/AudioThread$RecordingThread;

.field private mRecorder:Landroid/media/AudioRecord;

.field private mRecorderBufferSize:I

.field private mVirtualBufSize:I


# direct methods
.method public constructor <init>(Lx/org/server/MainActivity;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    .line 166
    iput-object v0, p0, Lx/org/server/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    .line 167
    iput v1, p0, Lx/org/server/AudioThread;->mRecorderBufferSize:I

    .line 55
    iput-object p1, p0, Lx/org/server/AudioThread;->mParent:Lx/org/server/MainActivity;

    .line 56
    iput-object v0, p0, Lx/org/server/AudioThread;->mAudio:Landroid/media/AudioTrack;

    .line 57
    iput-object v0, p0, Lx/org/server/AudioThread;->mAudioBuffer:[B

    .line 58
    invoke-direct {p0}, Lx/org/server/AudioThread;->nativeAudioInitJavaCallbacks()I

    return-void
.end method

.method static synthetic access$000(Lx/org/server/AudioThread;)Landroid/media/AudioRecord;
    .locals 0

    .line 45
    iget-object p0, p0, Lx/org/server/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$100(Lx/org/server/AudioThread;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lx/org/server/AudioThread;->nativeAudioRecordCallback()V

    return-void
.end method

.method private native nativeAudioInitJavaCallbacks()I
.end method

.method private native nativeAudioRecordCallback()V
.end method

.method private startRecording(IIII)[B
    .locals 10

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lx/org/server/AudioThread;->mParent:Lx/org/server/MainActivity;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Lx/org/server/MainActivity;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object p1, p0, Lx/org/server/AudioThread;->mParent:Lx/org/server/MainActivity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Lx/org/server/MainActivity;[Ljava/lang/String;I)V

    return-object v2

    .line 181
    :cond_0
    iget-object v0, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lx/org/server/AudioThread$RecordingThread;

    invoke-direct {v0, p0}, Lx/org/server/AudioThread$RecordingThread;-><init>(Lx/org/server/AudioThread;)V

    iput-object v0, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    .line 184
    invoke-virtual {v0}, Lx/org/server/AudioThread$RecordingThread;->start()V

    .line 186
    :cond_1
    iget-object v0, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    invoke-virtual {v0}, Lx/org/server/AudioThread$RecordingThread;->isStopped()Z

    move-result v0

    const-string v1, "SDL"

    if-nez v0, :cond_2

    .line 188
    const-string p1, "SDL: error: application already opened audio recording device"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 192
    :cond_2
    iget-object v0, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    invoke-virtual {v0, p4}, Lx/org/server/AudioThread$RecordingThread;->init(I)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const/16 v3, 0x10

    const/16 v7, 0x10

    goto :goto_0

    :cond_3
    const/16 v3, 0xc

    const/16 v7, 0xc

    :goto_0
    if-ne p3, v0, :cond_4

    const/4 v3, 0x2

    const/4 v8, 0x2

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    const/4 v8, 0x3

    .line 199
    :goto_1
    invoke-static {p1, v7, v8}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    mul-int/lit8 v4, p4, 0x8

    .line 200
    rem-int v5, v3, p4

    sub-int v5, p4, v5

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SDL: app opened recording device, rate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " channels "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sample size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v0

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bufsize "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " internal bufsize "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p3, p0, Lx/org/server/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result p3

    if-ne p3, p1, :cond_6

    iget-object p3, p0, Lx/org/server/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    .line 203
    invoke-virtual {p3}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result p3

    if-ne p3, p2, :cond_6

    iget-object p2, p0, Lx/org/server/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    .line 204
    invoke-virtual {p2}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result p2

    if-ne p2, v8, :cond_6

    iget p2, p0, Lx/org/server/AudioThread;->mRecorderBufferSize:I

    if-eq p2, v9, :cond_5

    goto :goto_2

    .line 232
    :cond_5
    const-string p1, "SDL: reusing old recording device"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 207
    :cond_6
    :goto_2
    iget-object p2, p0, Lx/org/server/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    if-eqz p2, :cond_7

    .line 208
    invoke-virtual {p2}, Landroid/media/AudioRecord;->release()V

    .line 209
    :cond_7
    iput-object v2, p0, Lx/org/server/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    .line 211
    :try_start_0
    new-instance v4, Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    move v6, p1

    :try_start_1
    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v4, p0, Lx/org/server/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    .line 212
    iput v9, p0, Lx/org/server/AudioThread;->mRecorderBufferSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move v6, p1

    .line 214
    :catch_1
    const-string p1, "SDL: error: failed to open MIC recording device!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :try_start_2
    new-instance v4, Landroid/media/AudioRecord;

    const/4 v5, 0x6

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v4, p0, Lx/org/server/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    .line 217
    iput v9, p0, Lx/org/server/AudioThread;->mRecorderBufferSize:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 219
    :catch_2
    const-string p1, "SDL: error: failed to open VOICE_RECOGNITION recording device!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_3
    new-instance v4, Landroid/media/AudioRecord;

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v4, p0, Lx/org/server/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    .line 222
    iput v9, p0, Lx/org/server/AudioThread;->mRecorderBufferSize:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 234
    :goto_3
    iget-object p1, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    invoke-virtual {p1}, Lx/org/server/AudioThread$RecordingThread;->startRecording()V

    .line 235
    iget-object p1, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    iget-object p1, p1, Lx/org/server/AudioThread$RecordingThread;->mRecordBuffer:[B

    return-object p1

    .line 224
    :catch_3
    const-string p1, "SDL: error: failed to open DEFAULT recording device!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private stopRecording()V
    .locals 2

    .line 240
    iget-object v0, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    const-string v1, "SDL"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lx/org/server/AudioThread$RecordingThread;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    invoke-virtual {v0}, Lx/org/server/AudioThread$RecordingThread;->stopRecording()V

    .line 246
    const-string v0, "SDL: app closed recording device"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 242
    :cond_1
    :goto_0
    const-string v0, "SDL: error: application already closed audio recording device"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public deinitAudio()I
    .locals 2

    .line 118
    iget-object v0, p0, Lx/org/server/AudioThread;->mAudio:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 121
    iget-object v0, p0, Lx/org/server/AudioThread;->mAudio:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 122
    iput-object v1, p0, Lx/org/server/AudioThread;->mAudio:Landroid/media/AudioTrack;

    .line 124
    :cond_0
    iput-object v1, p0, Lx/org/server/AudioThread;->mAudioBuffer:[B

    const/4 v0, 0x1

    return v0
.end method

.method public fillBuffer()I
    .locals 4

    .line 63
    iget-object v0, p0, Lx/org/server/AudioThread;->mParent:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    .line 66
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lx/org/server/AudioThread;->mAudio:Landroid/media/AudioTrack;

    iget-object v1, p0, Lx/org/server/AudioThread;->mAudioBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lx/org/server/AudioThread;->mVirtualBufSize:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    :catch_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBuffer()[B
    .locals 1

    .line 113
    iget-object v0, p0, Lx/org/server/AudioThread;->mAudioBuffer:[B

    return-object v0
.end method

.method public initAudio(IIII)I
    .locals 10

    .line 82
    iget-object v0, p0, Lx/org/server/AudioThread;->mAudio:Landroid/media/AudioTrack;

    if-nez v0, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    :goto_0
    if-ne p3, v2, :cond_1

    const/4 v7, 0x2

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    .line 89
    :goto_1
    iput p4, p0, Lx/org/server/AudioThread;->mVirtualBufSize:I

    .line 91
    invoke-static {p1, v6, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p2

    if-le p2, p4, :cond_2

    .line 92
    invoke-static {p1, v6, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p4

    .line 94
    :cond_2
    sget p2, Lx/org/server/Globals;->AudioBufferConfig:I

    if-eqz p2, :cond_3

    int-to-float p2, p4

    .line 95
    sget p3, Lx/org/server/Globals;->AudioBufferConfig:I

    sub-int/2addr p3, v2

    int-to-float p3, p3

    const/high16 p4, 0x40200000    # 2.5f

    mul-float p3, p3, p4

    const/high16 p4, 0x3f800000    # 1.0f

    add-float/2addr p3, p4

    mul-float p2, p2, p3

    float-to-int p4, p2

    .line 96
    iput p4, p0, Lx/org/server/AudioThread;->mVirtualBufSize:I

    :cond_3
    move v8, p4

    .line 98
    new-array p2, v8, [B

    iput-object p2, p0, Lx/org/server/AudioThread;->mAudioBuffer:[B

    .line 100
    new-instance v3, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    const/4 v9, 0x1

    move v5, p1

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v3, p0, Lx/org/server/AudioThread;->mAudio:Landroid/media/AudioTrack;

    .line 106
    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 108
    :cond_4
    iget p1, p0, Lx/org/server/AudioThread;->mVirtualBufSize:I

    return p1
.end method

.method public initAudioThread()I
    .locals 2

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public pauseAudioPlayback()I
    .locals 1

    .line 137
    iget-object v0, p0, Lx/org/server/AudioThread;->mAudio:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 141
    :cond_0
    iget-object v0, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Lx/org/server/AudioThread$RecordingThread;->pauseRecording()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public resumeAudioPlayback()I
    .locals 1

    .line 150
    iget-object v0, p0, Lx/org/server/AudioThread;->mAudio:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 154
    :cond_0
    iget-object v0, p0, Lx/org/server/AudioThread;->mRecordThread:Lx/org/server/AudioThread$RecordingThread;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Lx/org/server/AudioThread$RecordingThread;->resumeRecording()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
