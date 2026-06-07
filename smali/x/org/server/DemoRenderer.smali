.class Lx/org/server/DemoRenderer;
.super Lx/org/server/GLSurfaceView_SDL$Renderer;
.source "Video.java"


# instance fields
.field public accelerometer:Lx/org/server/AccelerometerReader;

.field private context:Lx/org/server/MainActivity;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFirstTimeStart:Z

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private mGlContextLost:Z

.field public mGlSurfaceCreated:Z

.field public mHeight:I

.field mLastPendingResize:I

.field mOrientationFrameHackyCounter:I

.field public mPaused:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Lx/org/server/MainActivity;)V
    .locals 2

    .line 611
    invoke-direct {p0}, Lx/org/server/GLSurfaceView_SDL$Renderer;-><init>()V

    const/4 v0, 0x0

    .line 651
    iput v0, p0, Lx/org/server/DemoRenderer;->mLastPendingResize:I

    const/4 v1, 0x0

    .line 987
    iput-object v1, p0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    .line 989
    iput-object v1, p0, Lx/org/server/DemoRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 990
    iput-object v1, p0, Lx/org/server/DemoRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 991
    iput-object v1, p0, Lx/org/server/DemoRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 992
    iput-object v1, p0, Lx/org/server/DemoRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 993
    iput-object v1, p0, Lx/org/server/DemoRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 994
    iput-boolean v0, p0, Lx/org/server/DemoRenderer;->mGlContextLost:Z

    .line 995
    iput-boolean v0, p0, Lx/org/server/DemoRenderer;->mGlSurfaceCreated:Z

    .line 996
    iput-boolean v0, p0, Lx/org/server/DemoRenderer;->mPaused:Z

    const/4 v1, 0x1

    .line 997
    iput-boolean v1, p0, Lx/org/server/DemoRenderer;->mFirstTimeStart:Z

    .line 998
    iput v0, p0, Lx/org/server/DemoRenderer;->mWidth:I

    .line 999
    iput v0, p0, Lx/org/server/DemoRenderer;->mHeight:I

    .line 1000
    iput v0, p0, Lx/org/server/DemoRenderer;->mOrientationFrameHackyCounter:I

    .line 612
    iput-object p1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    .line 613
    invoke-static {}, Lx/org/server/Clipboard;->get()Lx/org/server/Clipboard;

    move-result-object p1

    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    new-instance v1, Lx/org/server/DemoRenderer$1;

    invoke-direct {v1, p0}, Lx/org/server/DemoRenderer$1;-><init>(Lx/org/server/DemoRenderer;)V

    invoke-virtual {p1, v0, v1}, Lx/org/server/Clipboard;->setListener(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private PowerOf2(I)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic access$000(Lx/org/server/DemoRenderer;)Lx/org/server/MainActivity;
    .locals 0

    .line 608
    iget-object p0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    return-object p0
.end method

.method static synthetic access$101(Lx/org/server/DemoRenderer;)V
    .locals 0

    .line 608
    invoke-super {p0}, Lx/org/server/GLSurfaceView_SDL$Renderer;->ResetVideoSurface()V

    return-void
.end method

.method static synthetic access$201(Lx/org/server/DemoRenderer;II)V
    .locals 0

    .line 608
    invoke-super {p0, p1, p2}, Lx/org/server/GLSurfaceView_SDL$Renderer;->onWindowResize(II)V

    return-void
.end method

.method public static native nativeClipboardChanged()V
.end method

.method private native nativeDone()V
.end method

.method private native nativeGlContextLost()V
.end method

.method private native nativeInit(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method private native nativeInitJavaCallbacks()V
.end method

.method public static native nativeResize(III)V
.end method

.method public static native nativeTextInput(II)V
.end method

.method public static native nativeTextInputFinished()V
.end method


# virtual methods
.method public cloudLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 909
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    new-instance v1, Lx/org/server/DemoRenderer$6;

    invoke-direct {v1, p0}, Lx/org/server/DemoRenderer$6;-><init>(Lx/org/server/DemoRenderer;)V

    invoke-virtual {v0, v1}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 917
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->cloudSave:Lx/org/server/CloudSave;

    invoke-virtual {v0, p1, p2, p3}, Lx/org/server/CloudSave;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 919
    iget-object p2, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    new-instance p3, Lx/org/server/DemoRenderer$7;

    invoke-direct {p3, p0}, Lx/org/server/DemoRenderer$7;-><init>(Lx/org/server/DemoRenderer;)V

    invoke-virtual {p2, p3}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return p1
.end method

.method public cloudSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    .line 873
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->cloudSave:Lx/org/server/CloudSave;

    invoke-virtual {v0}, Lx/org/server/CloudSave;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 876
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lx/org/server/DemoRenderer$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lx/org/server/DemoRenderer$3;-><init>(Lx/org/server/DemoRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 882
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0

    .line 886
    :cond_0
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    new-instance v2, Lx/org/server/DemoRenderer$4;

    invoke-direct {v2, p0}, Lx/org/server/DemoRenderer$4;-><init>(Lx/org/server/DemoRenderer;)V

    invoke-virtual {v0, v2}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 894
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    iget-object v2, v0, Lx/org/server/MainActivity;->cloudSave:Lx/org/server/CloudSave;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lx/org/server/CloudSave;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    .line 896
    iget-object v2, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    new-instance v3, Lx/org/server/DemoRenderer$5;

    invoke-direct {v3, p0}, Lx/org/server/DemoRenderer$5;-><init>(Lx/org/server/DemoRenderer;)V

    invoke-virtual {v2, v3}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v0
.end method

.method public exitApp()V
    .locals 0

    .line 851
    invoke-direct {p0}, Lx/org/server/DemoRenderer;->nativeDone()V

    return-void
.end method

.method public getAdvertisementParams([I)V
    .locals 1

    .line 856
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0, p1}, Lx/org/server/MainActivity;->getAdvertisementParams([I)V

    return-void
.end method

.method public getClipboardText()Ljava/lang/String;
    .locals 2

    .line 835
    invoke-static {}, Lx/org/server/Clipboard;->get()Lx/org/server/Clipboard;

    move-result-object v0

    iget-object v1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0, v1}, Lx/org/server/Clipboard;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideScreenKeyboard()V
    .locals 2

    .line 809
    new-instance v0, Lx/org/server/DemoRenderer$2Callback;

    invoke-direct {v0, p0}, Lx/org/server/DemoRenderer$2Callback;-><init>(Lx/org/server/DemoRenderer;)V

    .line 810
    iget-object v1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    iput-object v1, v0, Lx/org/server/DemoRenderer$2Callback;->parent:Lx/org/server/MainActivity;

    .line 811
    iget-object v1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v1, v0}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isScreenKeyboardShown()I
    .locals 1

    .line 816
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->isScreenKeyboardShown()Z

    move-result v0

    return v0
.end method

.method public native nativeGlContextLostAsyncEvent()V
.end method

.method public native nativeGlContextRecreated()V
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 699
    iput-object p1, p0, Lx/org/server/DemoRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 700
    invoke-virtual {p0}, Lx/org/server/DemoRenderer;->SwapBuffers()Z

    .line 702
    invoke-direct {p0}, Lx/org/server/DemoRenderer;->nativeInitJavaCallbacks()V

    const/4 p1, 0x0

    .line 707
    iput-boolean p1, p0, Lx/org/server/DemoRenderer;->mGlContextLost:Z

    .line 709
    sget-boolean v0, Lx/org/server/Globals;->CompatibilityHacksStaticInit:Z

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->LoadApplicationLibrary(Landroid/content/Context;)V

    .line 711
    :cond_0
    :goto_0
    sget-boolean v0, Lx/org/server/MainActivity;->ApplicationLibraryLoaded:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0xc8

    .line 712
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 714
    :cond_1
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/Settings;->Apply(Lx/org/server/MainActivity;)V

    .line 715
    iget v0, p0, Lx/org/server/DemoRenderer;->mWidth:I

    iget v1, p0, Lx/org/server/DemoRenderer;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY_RESOLUTION_WIDTH"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget v0, p0, Lx/org/server/DemoRenderer;->mWidth:I

    iget v1, p0, Lx/org/server/DemoRenderer;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DISPLAY_RESOLUTION_HEIGHT"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    new-instance v0, Lx/org/server/AccelerometerReader;

    iget-object v1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-direct {v0, v1}, Lx/org/server/AccelerometerReader;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    .line 719
    sget-boolean v0, Lx/org/server/Globals;->MoveMouseWithGyroscope:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 720
    invoke-virtual {p0, v1}, Lx/org/server/DemoRenderer;->startAccelerometerGyroscope(I)V

    .line 722
    :cond_2
    sget v0, Lx/org/server/Globals;->AudioBufferConfig:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    .line 723
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 725
    :cond_3
    sget-object v0, Lx/org/server/Globals;->CommandLine:Ljava/lang/String;

    .line 726
    iget-object v2, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v2}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v2}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    .line 727
    invoke-virtual {v2}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    .line 728
    invoke-virtual {v2}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v2}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    :cond_4
    sget-object v2, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    .line 734
    sget-boolean v3, Lx/org/server/Globals;->SwVideoMode:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lx/org/server/Globals;->MultiThreadedVideo:Z

    if-nez v3, :cond_7

    :cond_5
    sget-boolean v3, Lx/org/server/Globals;->CompatibilityHacksVideo:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    .line 732
    :cond_7
    :goto_1
    invoke-direct {p0, v2, v0, v1, p1}, Lx/org/server/DemoRenderer;->nativeInit(Ljava/lang/String;Ljava/lang/String;II)V

    .line 736
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: DemoRenderer.onSurfaceChanged(): paused "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lx/org/server/DemoRenderer;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFirstTimeStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lx/org/server/DemoRenderer;->mFirstTimeStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " w "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, p3, :cond_0

    .line 635
    sget-boolean v0, Lx/org/server/Globals;->HorizontalOrientation:Z

    if-eqz v0, :cond_0

    move v2, p3

    move p3, p2

    move p2, v2

    .line 642
    :cond_0
    rem-int/lit8 v0, p2, 0x2

    sub-int/2addr p2, v0

    iput p2, p0, Lx/org/server/DemoRenderer;->mWidth:I

    .line 643
    rem-int/lit8 v0, p3, 0x2

    sub-int/2addr p3, v0

    iput p3, p0, Lx/org/server/DemoRenderer;->mHeight:I

    .line 644
    iput-object p1, p0, Lx/org/server/DemoRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 645
    sget-boolean p1, Lx/org/server/Globals;->KeepAspectRatio:Z

    invoke-static {p2, p3, p1}, Lx/org/server/DemoRenderer;->nativeResize(III)V

    .line 646
    sget-object p1, Lx/org/server/Globals;->TouchscreenCalibration:[I

    const/4 p2, 0x2

    aget p1, p1, p2

    sget-object p3, Lx/org/server/Globals;->TouchscreenCalibration:[I

    const/4 v0, 0x0

    aget p3, p3, v0

    if-le p1, p3, :cond_1

    .line 647
    sget-object p1, Lx/org/server/Globals;->TouchscreenCalibration:[I

    aget p1, p1, v0

    sget-object p3, Lx/org/server/Globals;->TouchscreenCalibration:[I

    const/4 v0, 0x1

    aget p3, p3, v0

    sget-object v0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    aget p2, v0, p2

    sget-object v0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {p1, p3, p2, v0}, Lx/org/server/Settings;->nativeSetTouchscreenCalibration(IIII)V

    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 624
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "libSDL: DemoRenderer.onSurfaceCreated(): paused "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lx/org/server/DemoRenderer;->mPaused:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mFirstTimeStart "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lx/org/server/DemoRenderer;->mFirstTimeStart:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SDL"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 625
    iput-boolean p2, p0, Lx/org/server/DemoRenderer;->mGlSurfaceCreated:Z

    .line 626
    iput-object p1, p0, Lx/org/server/DemoRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 627
    iget-boolean p1, p0, Lx/org/server/DemoRenderer;->mPaused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lx/org/server/DemoRenderer;->mFirstTimeStart:Z

    if-nez p1, :cond_0

    .line 628
    invoke-virtual {p0}, Lx/org/server/DemoRenderer;->nativeGlContextRecreated()V

    :cond_0
    const/4 p1, 0x0

    .line 629
    iput-boolean p1, p0, Lx/org/server/DemoRenderer;->mFirstTimeStart:Z

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: DemoRenderer.onSurfaceDestroyed(): paused "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lx/org/server/DemoRenderer;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mFirstTimeStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lx/org/server/DemoRenderer;->mFirstTimeStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 692
    iput-boolean v0, p0, Lx/org/server/DemoRenderer;->mGlSurfaceCreated:Z

    const/4 v0, 0x1

    .line 693
    iput-boolean v0, p0, Lx/org/server/DemoRenderer;->mGlContextLost:Z

    .line 694
    invoke-direct {p0}, Lx/org/server/DemoRenderer;->nativeGlContextLost()V

    return-void
.end method

.method public onWindowResize(II)V
    .locals 3

    .line 654
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->isRunningOnOUYA()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: DemoRenderer.onWindowResize(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget v0, p0, Lx/org/server/DemoRenderer;->mLastPendingResize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/org/server/DemoRenderer;->mLastPendingResize:I

    .line 659
    iget-object v1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    iget-object v1, v1, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v2, Lx/org/server/DemoRenderer$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lx/org/server/DemoRenderer$2;-><init>(Lx/org/server/DemoRenderer;III)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v1, v2, p1, p2}, Lx/org/server/DemoGLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public openExternalApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 933
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_0

    .line 934
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 936
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 939
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 941
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    :cond_1
    iget-object p1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {p1, v0}, Lx/org/server/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 945
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "libSDL: cannot start external app: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDL"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestNewAdvertisement()V
    .locals 1

    .line 868
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->requestNewAdvertisement()V

    return-void
.end method

.method public restartMyself(Ljava/lang/String;)V
    .locals 3

    .line 956
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    const-class v2, Lx/org/server/RestartMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 957
    const-string v1, "SDL_RESTART_PARAMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    iget-object p1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {p1, v0}, Lx/org/server/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 959
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public setAdvertisementPosition(II)V
    .locals 1

    .line 864
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0, p1, p2}, Lx/org/server/MainActivity;->setAdvertisementPosition(II)V

    return-void
.end method

.method public setAdvertisementVisible(I)V
    .locals 1

    .line 860
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0, p1}, Lx/org/server/MainActivity;->setAdvertisementVisible(I)V

    return-void
.end method

.method public setCapturedMousePosition(II)V
    .locals 0

    int-to-float p1, p1

    .line 845
    sput p1, Lx/org/server/DifferentTouchInput;->capturedMouseX:F

    int-to-float p1, p2

    .line 846
    sput p1, Lx/org/server/DifferentTouchInput;->capturedMouseY:F

    return-void
.end method

.method public setClipboardText(Ljava/lang/String;)V
    .locals 2

    .line 840
    invoke-static {}, Lx/org/server/Clipboard;->get()Lx/org/server/Clipboard;

    move-result-object v0

    iget-object v1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0, v1, p1}, Lx/org/server/Clipboard;->set(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setConfigOptionFromSDL(II)V
    .locals 0

    .line 964
    invoke-static {p1, p2}, Lx/org/server/Settings;->setConfigOptionFromSDL(II)V

    return-void
.end method

.method public setScreenKeyboardHintMessage(Ljava/lang/String;)V
    .locals 1

    .line 821
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0, p1}, Lx/org/server/MainActivity;->setScreenKeyboardHintMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setSystemMousePointerVisible(I)V
    .locals 1

    .line 951
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0, p1}, Lx/org/server/MainActivity;->setSystemMousePointerVisible(I)V

    return-void
.end method

.method public showInternalScreenKeyboard(I)V
    .locals 1

    .line 779
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0, p1}, Lx/org/server/MainActivity;->showScreenKeyboardWithoutTextInputField(I)V

    return-void
.end method

.method public showScreenKeyboard(Ljava/lang/String;I)V
    .locals 1

    .line 793
    new-instance p2, Lx/org/server/DemoRenderer$1Callback;

    invoke-direct {p2, p0}, Lx/org/server/DemoRenderer$1Callback;-><init>(Lx/org/server/DemoRenderer;)V

    .line 794
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    iput-object v0, p2, Lx/org/server/DemoRenderer$1Callback;->parent:Lx/org/server/MainActivity;

    .line 795
    iput-object p1, p2, Lx/org/server/DemoRenderer$1Callback;->oldText:Ljava/lang/String;

    .line 796
    iget-object p1, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {p1, p2}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showScreenKeyboardWithoutTextInputField()V
    .locals 2

    .line 774
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    sget v1, Lx/org/server/Globals;->TextInputKeyboard:I

    invoke-virtual {v0, v1}, Lx/org/server/MainActivity;->showScreenKeyboardWithoutTextInputField(I)V

    return-void
.end method

.method public startAccelerometerGyroscope(I)V
    .locals 1

    .line 826
    iget-object v0, p0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lx/org/server/AccelerometerReader;->openedBySDL:Z

    .line 827
    iget-object p1, p0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    iget-boolean p1, p1, Lx/org/server/AccelerometerReader;->openedBySDL:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lx/org/server/DemoRenderer;->mPaused:Z

    if-nez p1, :cond_1

    .line 828
    iget-object p1, p0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    invoke-virtual {p1}, Lx/org/server/AccelerometerReader;->start()V

    return-void

    .line 830
    :cond_1
    iget-object p1, p0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    invoke-virtual {p1}, Lx/org/server/AccelerometerReader;->stop()V

    return-void
.end method

.method public swapBuffers()I
    .locals 4

    .line 741
    invoke-super {p0}, Lx/org/server/GLSurfaceView_SDL$Renderer;->SwapBuffers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lx/org/server/Globals;->NonBlockingSwapBuffers:Z

    if-eqz v0, :cond_0

    return v1

    .line 746
    :cond_0
    iget-boolean v0, p0, Lx/org/server/DemoRenderer;->mGlContextLost:Z

    if-eqz v0, :cond_1

    .line 747
    iput-boolean v1, p0, Lx/org/server/DemoRenderer;->mGlContextLost:Z

    .line 748
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/DemoGLSurfaceView;->SetupTouchscreenKeyboardGraphics(Landroid/app/Activity;)V

    .line 749
    invoke-super {p0}, Lx/org/server/GLSurfaceView_SDL$Renderer;->SwapBuffers()Z

    .line 753
    :cond_1
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->isScreenKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lx/org/server/MainActivity;->keyboardWithoutTextInputShown:Z

    if-nez v0, :cond_2

    const-wide/16 v2, 0x32

    .line 756
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 762
    :cond_2
    :goto_0
    iget v0, p0, Lx/org/server/DemoRenderer;->mOrientationFrameHackyCounter:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lx/org/server/DemoRenderer;->mOrientationFrameHackyCounter:I

    const/16 v3, 0x64

    if-le v0, v3, :cond_3

    .line 765
    iput v1, p0, Lx/org/server/DemoRenderer;->mOrientationFrameHackyCounter:I

    .line 766
    iget-object v0, p0, Lx/org/server/DemoRenderer;->context:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->updateScreenOrientation()V

    :cond_3
    return v2
.end method
