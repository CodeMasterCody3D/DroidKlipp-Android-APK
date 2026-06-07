.class Lx/org/server/DifferentTouchInput$MultiTouchInput;
.super Lx/org/server/DifferentTouchInput;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiTouchInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;,
        Lx/org/server/DifferentTouchInput$MultiTouchInput$Holder;
    }
.end annotation


# static fields
.field public static final TOUCH_EVENTS_MAX:I = 0x10


# instance fields
.field protected touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;


# direct methods
.method constructor <init>()V
    .locals 5

    .line 171
    invoke-direct {p0}, Lx/org/server/DifferentTouchInput;-><init>()V

    const/16 v0, 0x10

    .line 172
    new-array v1, v0, [Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    iput-object v1, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 174
    iget-object v2, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    new-instance v3, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;-><init>(Lx/org/server/DifferentTouchInput$MultiTouchInput;Lx/org/server/DifferentTouchInput$1;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public process(Landroid/view/MotionEvent;)V
    .locals 13

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_2

    .line 197
    iget-object v0, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v8

    iget-boolean v0, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v8

    iput-boolean v2, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    .line 200
    iget-object v0, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v8

    iget v5, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget-object v0, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v8

    iget v6, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget-object v0, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v8

    iget v9, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget-object v0, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v0, v0, v8

    iget v10, v0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    const/4 v7, 0x1

    invoke-static/range {v5 .. v10}, Lx/org/server/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/high16 v4, 0x44800000    # 1024.0f

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 207
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-lt v5, v1, :cond_3

    const/16 v5, 0xf

    const/16 v9, 0xf

    goto :goto_2

    :cond_3
    move v9, v5

    .line 212
    :goto_2
    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v9

    iput-boolean v3, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    .line 213
    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    .line 214
    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    .line 215
    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    iput v6, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    .line 216
    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    iput v6, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    .line 217
    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v9

    iget v6, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v9

    iget v7, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v9

    iget v10, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v9

    iget v11, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lx/org/server/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x6

    const/4 v6, 0x2

    if-eq v0, v6, :cond_5

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v7, 0x5

    if-eq v0, v7, :cond_5

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v5, :cond_d

    .line 233
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v5, :cond_6

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v5, 0xff00

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_6
    const/4 v0, -0x1

    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v1, :cond_d

    const/4 v5, 0x0

    .line 239
    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 241
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-ne v10, v7, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 244
    :cond_8
    :goto_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-lt v5, v7, :cond_9

    .line 247
    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v10

    iget-boolean v5, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v5, :cond_c

    .line 250
    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v10

    iput-boolean v2, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    .line 251
    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v10

    iget v7, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v10

    iget v8, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v10

    iget v11, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v10

    iget v12, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    const/4 v9, 0x1

    invoke-static/range {v7 .. v12}, Lx/org/server/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    goto :goto_8

    :cond_9
    if-ne v0, v10, :cond_a

    .line 256
    iget-object v7, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v7, v7, v0

    iget-boolean v7, v7, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v7, :cond_a

    .line 259
    iget-object v7, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v7, v7, v10

    iput-boolean v2, v7, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    const/4 v9, 0x1

    goto :goto_7

    .line 261
    :cond_a
    iget-object v7, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v7, v7, v10

    iget-boolean v7, v7, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    if-eqz v7, :cond_b

    const/4 v9, 0x2

    goto :goto_7

    .line 268
    :cond_b
    iget-object v7, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v7, v7, v10

    iput-boolean v3, v7, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    const/4 v9, 0x0

    .line 270
    :goto_7
    iget-object v7, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v7, v7, v10

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    .line 271
    iget-object v7, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v7, v7, v10

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    .line 272
    iget-object v7, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v7, v7, v10

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v8

    mul-float v8, v8, v4

    float-to-int v8, v8

    iput v8, v7, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    .line 273
    iget-object v7, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v7, v7, v10

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    iput v5, v7, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    .line 274
    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v10

    iget v7, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v10

    iget v8, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v10

    iget v11, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    iget-object v5, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput;->touchEvents:[Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;

    aget-object v5, v5, v10

    iget v12, v5, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    invoke-static/range {v7 .. v12}, Lx/org/server/DemoGLSurfaceView;->nativeMotionEvent(IIIIII)V

    :cond_c
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    :cond_d
    return-void
.end method

.method public processGenericEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lx/org/server/DifferentTouchInput$MultiTouchInput;->process(Landroid/view/MotionEvent;)V

    return-void
.end method
