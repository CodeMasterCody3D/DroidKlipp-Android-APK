.class Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;
.super Ljava/lang/Object;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DifferentTouchInput$MultiTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "touchEvent"
.end annotation


# instance fields
.field public down:Z

.field public pressure:I

.field public size:I

.field final synthetic this$0:Lx/org/server/DifferentTouchInput$MultiTouchInput;

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>(Lx/org/server/DifferentTouchInput$MultiTouchInput;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->this$0:Lx/org/server/DifferentTouchInput$MultiTouchInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->down:Z

    .line 162
    iput p1, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->x:I

    .line 163
    iput p1, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->y:I

    .line 164
    iput p1, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->pressure:I

    .line 165
    iput p1, p0, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;->size:I

    return-void
.end method

.method synthetic constructor <init>(Lx/org/server/DifferentTouchInput$MultiTouchInput;Lx/org/server/DifferentTouchInput$1;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lx/org/server/DifferentTouchInput$MultiTouchInput$touchEvent;-><init>(Lx/org/server/DifferentTouchInput$MultiTouchInput;)V

    return-void
.end method
