.class public Lx/org/server/GLSurfaceView_SDL;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView_SDL.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/GLSurfaceView_SDL$GLWrapper;,
        Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;,
        Lx/org/server/GLSurfaceView_SDL$GLThread;,
        Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;,
        Lx/org/server/GLSurfaceView_SDL$Renderer;,
        Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser16;,
        Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser24;,
        Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser32;,
        Lx/org/server/GLSurfaceView_SDL$LogWriter;,
        Lx/org/server/GLSurfaceView_SDL$EglHelper;,
        Lx/org/server/GLSurfaceView_SDL$BaseConfigChooser;,
        Lx/org/server/GLSurfaceView_SDL$SwapBuffersCallback;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sEglSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;

.field private mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

.field private mGLWrapper:Lx/org/server/GLSurfaceView_SDL$GLWrapper;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1311
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lx/org/server/GLSurfaceView_SDL;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 1312
    iput-boolean p1, p0, Lx/org/server/GLSurfaceView_SDL;->mSizeChanged:Z

    .line 198
    invoke-direct {p0}, Lx/org/server/GLSurfaceView_SDL;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 1312
    iput-boolean p1, p0, Lx/org/server/GLSurfaceView_SDL;->mSizeChanged:Z

    .line 207
    invoke-direct {p0}, Lx/org/server/GLSurfaceView_SDL;->init()V

    return-void
.end method

.method static synthetic access$000(Lx/org/server/GLSurfaceView_SDL;)Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;
    .locals 0

    .line 155
    iget-object p0, p0, Lx/org/server/GLSurfaceView_SDL;->mEGLConfigChooser:Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;

    return-object p0
.end method

.method static synthetic access$100(Lx/org/server/GLSurfaceView_SDL;)Lx/org/server/GLSurfaceView_SDL$GLWrapper;
    .locals 0

    .line 155
    iget-object p0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLWrapper:Lx/org/server/GLSurfaceView_SDL$GLWrapper;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/Semaphore;
    .locals 1

    .line 155
    sget-object v0, Lx/org/server/GLSurfaceView_SDL;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$302(Lx/org/server/GLSurfaceView_SDL;Z)Z
    .locals 0

    .line 155
    iput-boolean p1, p0, Lx/org/server/GLSurfaceView_SDL;->mSizeChanged:Z

    return p1
.end method

.method static synthetic access$400(Lx/org/server/GLSurfaceView_SDL;)Landroid/app/KeyguardManager;
    .locals 0

    .line 155
    iget-object p0, p0, Lx/org/server/GLSurfaceView_SDL;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method private static getEglConfigChooser(IZZZZ)Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;
    .locals 1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    .line 850
    new-instance p0, Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser16;

    invoke-direct {p0, p1, p2, p3, p4}, Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser16;-><init>(ZZZZ)V

    return-object p0

    :cond_0
    const/16 v0, 0x18

    if-ne p0, v0, :cond_1

    .line 852
    new-instance p0, Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser24;

    invoke-direct {p0, p1, p2, p3, p4}, Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser24;-><init>(ZZZZ)V

    return-object p0

    :cond_1
    const/16 v0, 0x20

    if-ne p0, v0, :cond_2

    .line 854
    new-instance p0, Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser32;

    invoke-direct {p0, p1, p2, p3, p4}, Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser32;-><init>(ZZZZ)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lx/org/server/GLSurfaceView_SDL;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 214
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x2

    .line 215
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 216
    invoke-virtual {p0}, Lx/org/server/GLSurfaceView_SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .line 254
    iget v0, p0, Lx/org/server/GLSurfaceView_SDL;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 378
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-virtual {v0}, Lx/org/server/GLSurfaceView_SDL$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 455
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 456
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-virtual {v0}, Lx/org/server/GLSurfaceView_SDL$GLThread;->requestExitAndWait()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 424
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-virtual {v0}, Lx/org/server/GLSurfaceView_SDL$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 435
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-virtual {v0}, Lx/org/server/GLSurfaceView_SDL$GLThread;->onResume()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-virtual {v0, p1}, Lx/org/server/GLSurfaceView_SDL$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 389
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-virtual {v0}, Lx/org/server/GLSurfaceView_SDL$GLThread;->requestRender()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .line 246
    iput p1, p0, Lx/org/server/GLSurfaceView_SDL;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIIIZZ)V
    .locals 9

    .line 347
    new-instance v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;-><init>(IIIIIIZZ)V

    invoke-virtual {p0, v0}, Lx/org/server/GLSurfaceView_SDL;->setEGLConfigChooser(Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(IZZZZ)V
    .locals 0

    .line 329
    invoke-static {p1, p2, p3, p4, p5}, Lx/org/server/GLSurfaceView_SDL;->getEglConfigChooser(IZZZZ)Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lx/org/server/GLSurfaceView_SDL;->setEGLConfigChooser(Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    if-nez v0, :cond_0

    .line 311
    iput-object p1, p0, Lx/org/server/GLSurfaceView_SDL;->mEGLConfigChooser:Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;

    return-void

    .line 308
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setRenderer has already been called for this instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGLWrapper(Lx/org/server/GLSurfaceView_SDL$GLWrapper;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lx/org/server/GLSurfaceView_SDL;->mGLWrapper:Lx/org/server/GLSurfaceView_SDL$GLWrapper;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 367
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-virtual {v0, p1}, Lx/org/server/GLSurfaceView_SDL$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Lx/org/server/GLSurfaceView_SDL$Renderer;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mEGLConfigChooser:Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 289
    invoke-static {v0, v1, v1, v1, v1}, Lx/org/server/GLSurfaceView_SDL;->getEglConfigChooser(IZZZZ)Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;

    move-result-object v0

    iput-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mEGLConfigChooser:Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;

    .line 291
    :cond_0
    new-instance v0, Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-direct {v0, p0, p1}, Lx/org/server/GLSurfaceView_SDL$GLThread;-><init>(Lx/org/server/GLSurfaceView_SDL;Lx/org/server/GLSurfaceView_SDL$Renderer;)V

    iput-object v0, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    .line 292
    invoke-virtual {v0}, Lx/org/server/GLSurfaceView_SDL$GLThread;->start()V

    return-void

    .line 285
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setRenderer has already been called for this instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 414
    iget-object p1, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-virtual {p1, p3, p4}, Lx/org/server/GLSurfaceView_SDL$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 397
    iget-object p1, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-virtual {p1}, Lx/org/server/GLSurfaceView_SDL$GLThread;->surfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 406
    iget-object p1, p0, Lx/org/server/GLSurfaceView_SDL;->mGLThread:Lx/org/server/GLSurfaceView_SDL$GLThread;

    invoke-virtual {p1}, Lx/org/server/GLSurfaceView_SDL$GLThread;->surfaceDestroyed()V

    return-void
.end method
