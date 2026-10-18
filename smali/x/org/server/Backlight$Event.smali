.class final Lx/org/server/Backlight$Event;
.super Ljava/lang/Object;
.source "Backlight.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final kind:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx/org/server/Backlight$Event;->kind:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lx/org/server/Backlight$Event;->kind:I

    invoke-static {v0}, Lx/org/server/Backlight;->dispatch(I)V

    return-void
.end method
