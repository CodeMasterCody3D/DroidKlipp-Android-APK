.class Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser32;
.super Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;
.source "GLSurfaceView_SDL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/GLSurfaceView_SDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleEGLConfigChooser32"
.end annotation


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    const/16 v6, 0x10

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/16 p1, 0x8

    if-eqz p2, :cond_1

    const/16 v7, 0x8

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    move-object v1, p0

    move v8, p3

    move v9, p4

    .line 841
    invoke-direct/range {v1 .. v9}, Lx/org/server/GLSurfaceView_SDL$ComponentSizeChooser;-><init>(IIIIIIZZ)V

    .line 842
    iput p1, p0, Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser32;->mRedSize:I

    .line 843
    iput p1, p0, Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser32;->mGreenSize:I

    .line 844
    iput p1, p0, Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser32;->mBlueSize:I

    .line 845
    iput p1, p0, Lx/org/server/GLSurfaceView_SDL$SimpleEGLConfigChooser32;->mAlphaSize:I

    return-void
.end method
