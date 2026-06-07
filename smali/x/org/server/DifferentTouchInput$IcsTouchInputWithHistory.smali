.class Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;
.super Lx/org/server/DifferentTouchInput$IcsTouchInput;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IcsTouchInputWithHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 393
    invoke-direct {p0, v0}, Lx/org/server/DifferentTouchInput$IcsTouchInput;-><init>(Lx/org/server/DifferentTouchInput$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lx/org/server/DifferentTouchInput$1;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 404
    iget-object v3, p0, Lx/org/server/DifferentTouchInput$IcsTouchInputWithHistory;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lt v1, v2, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, v1

    .line 411
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 413
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    float-to-int v2, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v1

    float-to-int v3, v1

    .line 414
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v1

    const/high16 v4, 0x44800000    # 1024.0f

    mul-float v1, v1, v4

    float-to-int v6, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getHistoricalSize(I)F

    move-result v1

    mul-float v1, v1, v4

    float-to-int v7, v1

    const/4 v4, 0x2

    .line 413
    invoke-static/range {v2 .. v7}, Lx/org/server/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 416
    :cond_3
    invoke-super {p0, p1}, Lx/org/server/DifferentTouchInput$IcsTouchInput;->process(Landroid/view/MotionEvent;)V

    return-void
.end method
