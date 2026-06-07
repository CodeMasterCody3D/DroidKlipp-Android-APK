.class Lx/org/server/DemoGLSurfaceView$2;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/DemoGLSurfaceView;->captureMouse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/DemoGLSurfaceView;


# direct methods
.method constructor <init>(Lx/org/server/DemoGLSurfaceView;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lx/org/server/DemoGLSurfaceView$2;->this$0:Lx/org/server/DemoGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1221
    const-string v0, "SDL"

    const-string v1, "captureMouse::releasePointerCapture()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView$2;->this$0:Lx/org/server/DemoGLSurfaceView;

    invoke-static {v0}, Lx/org/server/MainActivity$$ExternalSyntheticApiModelOutline2;->m$1(Lx/org/server/DemoGLSurfaceView;)V

    return-void
.end method
