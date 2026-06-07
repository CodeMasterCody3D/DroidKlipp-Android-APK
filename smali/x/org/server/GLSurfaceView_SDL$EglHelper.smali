.class Lx/org/server/GLSurfaceView_SDL$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceView_SDL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/GLSurfaceView_SDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lx/org/server/GLSurfaceView_SDL;


# direct methods
.method public constructor <init>(Lx/org/server/GLSurfaceView_SDL;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->this$0:Lx/org/server/GLSurfaceView_SDL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .line 917
    const-string v0, "SDL"

    const-string v1, "GLSurfaceView_SDL::EglHelper::createSurface(): creating GL context"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 930
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 944
    :cond_0
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 951
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, p1, p1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 954
    iget-object p1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    .line 955
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->this$0:Lx/org/server/GLSurfaceView_SDL;

    invoke-static {v0}, Lx/org/server/GLSurfaceView_SDL;->access$100(Lx/org/server/GLSurfaceView_SDL;)Lx/org/server/GLSurfaceView_SDL$GLWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->this$0:Lx/org/server/GLSurfaceView_SDL;

    invoke-static {v0}, Lx/org/server/GLSurfaceView_SDL;->access$100(Lx/org/server/GLSurfaceView_SDL;)Lx/org/server/GLSurfaceView_SDL$GLWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lx/org/server/GLSurfaceView_SDL$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public finish()V
    .locals 6

    .line 979
    const-string v0, "SDL"

    const-string v1, "GLSurfaceView_SDL::EglHelper::finish(): destroying GL context"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 984
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 985
    iput-object v1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 987
    :cond_0
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 988
    iget-object v2, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 989
    iput-object v1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 991
    :cond_1
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 992
    iget-object v2, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 993
    iput-object v1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method

.method public start()V
    .locals 9

    .line 873
    const-string v0, "GLSurfaceView_SDL::EglHelper::start(): creating GL context"

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 882
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x2

    .line 887
    new-array v3, v2, [I

    .line 888
    iget-object v4, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 889
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->this$0:Lx/org/server/GLSurfaceView_SDL;

    invoke-static {v0}, Lx/org/server/GLSurfaceView_SDL;->access$000(Lx/org/server/GLSurfaceView_SDL;)Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;

    move-result-object v0

    iget-object v3, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v3, v4}, Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_0

    .line 891
    const-string v0, "GLSurfaceView_SDL::EglHelper::start(): mEglConfig is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    .line 898
    new-array v3, v0, [I

    const/4 v4, 0x0

    const/16 v5, 0x3098

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v2, v3, v6

    const/16 v7, 0x3038

    aput v7, v3, v2

    .line 899
    new-array v8, v0, [I

    aput v5, v8, v4

    aput v0, v8, v6

    aput v7, v8, v2

    .line 901
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 903
    iget-object v6, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->this$0:Lx/org/server/GLSurfaceView_SDL;

    invoke-static {v6}, Lx/org/server/GLSurfaceView_SDL;->access$000(Lx/org/server/GLSurfaceView_SDL;)Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;

    move-result-object v6

    invoke-interface {v6}, Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;->isGles3Required()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move-object v3, v8

    goto :goto_0

    .line 904
    :cond_1
    iget-object v6, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->this$0:Lx/org/server/GLSurfaceView_SDL;

    invoke-static {v6}, Lx/org/server/GLSurfaceView_SDL;->access$000(Lx/org/server/GLSurfaceView_SDL;)Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;

    move-result-object v6

    invoke-interface {v6}, Lx/org/server/GLSurfaceView_SDL$EGLConfigChooser;->isGles2Required()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v7

    .line 901
    :goto_0
    invoke-interface {v0, v2, v4, v5, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_3

    .line 906
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_4

    .line 907
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GLSurfaceView_SDL::EglHelper::start(): mEglContext is EGL_NO_CONTEXT, error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_4
    iput-object v7, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method public swap()Z
    .locals 3

    .line 967
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 975
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
