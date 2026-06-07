.class Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;
.super Lx/org/server/GLSurfaceView_SDL$BaseConfigChooser;
.source "GLSurfaceView_SDL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/GLSurfaceView_SDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComponentSizeChooser"
.end annotation


# static fields
.field public static final EGL_OPENGL_BIT:I = 0x8

.field public static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EGL_OPENGL_ES3_BIT:I = 0x10

.field public static final EGL_OPENGL_ES_BIT:I = 0x1

.field public static final EGL_OPENVG_BIT:I = 0x2


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mIsGles2:Z

.field protected mIsGles3:Z

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method public constructor <init>(IIIIIIZZ)V
    .locals 1

    const/16 v0, 0x3038

    .line 679
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lx/org/server/GLSurfaceView_SDL$BaseConfigChooser;-><init>([I)V

    const/4 v0, 0x1

    .line 680
    new-array v0, v0, [I

    iput-object v0, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mValue:[I

    .line 681
    iput p1, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mRedSize:I

    .line 682
    iput p2, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mGreenSize:I

    .line 683
    iput p3, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mBlueSize:I

    .line 684
    iput p4, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mAlphaSize:I

    .line 685
    iput p5, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mDepthSize:I

    .line 686
    iput p6, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mStencilSize:I

    .line 687
    iput-boolean p7, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles2:Z

    .line 688
    iput-boolean p8, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles3:Z

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 3

    .line 778
    iget-object v0, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mValue:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 779
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 780
    iget-object p1, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mValue:[I

    aget p1, p1, v2

    return p1

    .line 782
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "GLSurfaceView_SDL::EGLConfigChooser::findConfigAttrib(): attribute doesn\'t exist: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDL"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v6, p3

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Desired GL config: R"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mRedSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "G"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mGreenSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "B"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mBlueSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "A"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mAlphaSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " depth "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mDepthSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " stencil "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mStencilSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " type "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles3:Z

    const-string v13, "GLES"

    if-eqz v2, :cond_0

    const-string v2, "GLES3"

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles2:Z

    if-eqz v2, :cond_1

    const-string v2, "GLES2"

    goto :goto_0

    :cond_1
    move-object v2, v13

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "SDL"

    invoke-static {v14, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    array-length v15, v6

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    const-string v3, ""

    const/16 v16, 0x0

    const/4 v4, -0x1

    move-object/from16 v17, v1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/16 v18, -0x1

    :goto_1
    const-string v4, ": "

    if-ge v1, v15, :cond_1b

    move-object/from16 v19, v3

    aget-object v3, v6, v1

    if-nez v3, :cond_2

    move/from16 v20, v1

    move v1, v5

    move-object v0, v11

    move-object v6, v12

    move-object v5, v14

    move/from16 v4, v18

    move-object/from16 v3, v19

    move-object v14, v13

    move/from16 v18, v15

    goto/16 :goto_10

    :cond_2
    move-object/from16 v20, v4

    const/16 v4, 0x3024

    move/from16 v21, v5

    const/4 v5, 0x0

    move/from16 v6, v18

    move/from16 v18, v15

    move/from16 v15, v21

    move/from16 v21, v6

    move/from16 v22, v2

    move-object/from16 v6, v20

    move-object/from16 v2, p2

    move/from16 v20, v1

    move-object/from16 v1, p1

    .line 704
    invoke-direct/range {v0 .. v5}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    move v0, v4

    const/16 v4, 0x3023

    move-object/from16 v23, v14

    move v14, v0

    move-object/from16 v0, p0

    .line 706
    invoke-direct/range {v0 .. v5}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    move v0, v4

    const/16 v4, 0x3022

    move-object/from16 v24, v6

    move v6, v0

    move-object/from16 v0, p0

    .line 708
    invoke-direct/range {v0 .. v5}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    move v0, v4

    const/16 v4, 0x3021

    move/from16 v25, v15

    move v15, v0

    move-object/from16 v0, p0

    .line 710
    invoke-direct/range {v0 .. v5}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    move v0, v4

    const/16 v4, 0x3025

    move-object/from16 v26, v13

    move v13, v0

    move-object/from16 v0, p0

    .line 712
    invoke-direct/range {v0 .. v5}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    move v0, v4

    const/16 v4, 0x3026

    move-object/from16 v27, v12

    move v12, v0

    move-object/from16 v0, p0

    .line 714
    invoke-direct/range {v0 .. v5}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    move v0, v4

    const/16 v4, 0x3040

    move-object/from16 v28, v11

    move v11, v0

    move-object/from16 v0, p0

    .line 716
    invoke-direct/range {v0 .. v5}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    .line 718
    iget-boolean v1, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles3:Z

    const/16 v29, 0x1

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    move v1, v4

    const/16 v30, 0x10

    goto :goto_2

    :cond_3
    iget-boolean v1, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles2:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    move v1, v4

    const/16 v30, 0x4

    goto :goto_2

    :cond_4
    move v1, v4

    const/16 v30, 0x1

    :goto_2
    const/16 v4, 0x302d

    const/4 v5, 0x0

    move-object/from16 v2, p2

    move/from16 v31, v11

    move v11, v1

    move-object/from16 v1, p1

    .line 719
    invoke-direct/range {v0 .. v5}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    move v0, v4

    const/16 v4, 0x3027

    const/16 v5, 0x3038

    move/from16 v32, v0

    move-object/from16 v0, p0

    .line 721
    invoke-direct/range {v0 .. v5}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    .line 723
    iget v1, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mRedSize:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mGreenSize:I

    sub-int v2, v6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mBlueSize:I

    sub-int v2, v15, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 725
    iget v2, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mAlphaSize:I

    sub-int v5, v2, v13

    if-lez v5, :cond_5

    sub-int/2addr v2, v13

    add-int/2addr v2, v1

    goto :goto_3

    :cond_5
    sub-int/2addr v2, v13

    if-gez v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    if-lez v12, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v33, v3

    .line 730
    iget v3, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mDepthSize:I

    move/from16 v34, v3

    if-lez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    const/16 v35, 0x5

    if-eq v5, v3, :cond_a

    if-lez v34, :cond_9

    const/4 v3, 0x5

    goto :goto_6

    :cond_9
    const/4 v3, 0x1

    :goto_6
    add-int/2addr v3, v2

    goto :goto_7

    :cond_a
    move v3, v2

    :goto_7
    if-lez v31, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    move/from16 v34, v3

    .line 733
    iget v3, v0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mStencilSize:I

    if-lez v3, :cond_c

    const/4 v0, 0x1

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    :goto_9
    if-eq v5, v0, :cond_e

    if-lez v3, :cond_d

    const/16 v29, 0x5

    :cond_d
    add-int v3, v34, v29

    goto :goto_a

    :cond_e
    move/from16 v3, v34

    :goto_a
    and-int v0, v11, v30

    if-nez v0, :cond_f

    add-int/lit8 v0, v3, 0x5

    goto :goto_b

    :cond_f
    move v0, v3

    :goto_b
    const/16 v5, 0x3050

    if-ne v4, v5, :cond_10

    add-int/lit8 v29, v0, 0x4

    goto :goto_c

    :cond_10
    move/from16 v29, v0

    :goto_c
    const/16 v5, 0x3051

    if-ne v4, v5, :cond_11

    add-int/lit8 v29, v29, 0x1

    :cond_11
    move/from16 v36, v29

    .line 744
    new-instance v5, Ljava/lang/StringBuilder;

    move/from16 v35, v0

    const-string v0, "R"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v31

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    and-int/lit8 v13, v11, 0x1

    if-eqz v13, :cond_12

    .line 747
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v26

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_12
    move-object/from16 v14, v26

    :goto_d
    and-int/lit8 v13, v11, 0x4

    if-eqz v13, :cond_13

    .line 749
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " GLES2"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_13
    and-int/lit8 v13, v11, 0x10

    if-eqz v13, :cond_14

    .line 751
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " GLES3"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_14
    and-int/lit8 v13, v11, 0x8

    if-eqz v13, :cond_15

    .line 753
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " OPENGL"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_15
    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_16

    .line 755
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " OPENVG"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 756
    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 757
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " caveat "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3038

    if-ne v4, v11, :cond_17

    const-string v4, "none"

    goto :goto_e

    :cond_17
    const/16 v11, 0x3050

    if-ne v4, v11, :cond_18

    .line 758
    const-string v4, "SLOW"

    goto :goto_e

    :cond_18
    const/16 v11, 0x3051

    if-ne v4, v11, :cond_19

    .line 759
    const-string v4, "non-conformant"

    goto :goto_e

    .line 760
    :cond_19
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_e
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 761
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nr "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v32

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 762
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pos "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v36

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v34

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v35

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GL config "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v15, v25

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, v23

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, v22

    if-ge v4, v2, :cond_1a

    .line 767
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move v2, v4

    move v4, v15

    move-object/from16 v17, v33

    goto :goto_f

    :cond_1a
    move-object/from16 v3, v19

    move/from16 v4, v21

    :goto_f
    add-int/lit8 v1, v15, 0x1

    :goto_10
    add-int/lit8 v11, v20, 0x1

    move-object v12, v6

    move-object v13, v14

    move/from16 v15, v18

    move-object/from16 v6, p3

    move/from16 v18, v4

    move-object v14, v5

    move v5, v1

    move v1, v11

    move-object v11, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v19, v3

    move-object v3, v4

    move-object v5, v14

    move/from16 v21, v18

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLSurfaceView_SDL::EGLConfigChooser::chooseConfig(): selected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v17
.end method

.method public isGles2Required()Z
    .locals 1

    .line 788
    iget-boolean v0, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles2:Z

    return v0
.end method

.method public isGles3Required()Z
    .locals 1

    .line 793
    iget-boolean v0, p0, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;->mIsGles3:Z

    return v0
.end method
