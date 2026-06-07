.class public abstract Lx/org/server/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/Clipboard$NewerClipboard;,
        Lx/org/server/Clipboard$OlderClipboard;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lx/org/server/Clipboard;
    .locals 1

    .line 57
    invoke-static {}, Lx/org/server/Clipboard$NewerClipboard$Holder;->access$000()Lx/org/server/Clipboard$NewerClipboard;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract get(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract set(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract setListener(Landroid/content/Context;Ljava/lang/Runnable;)V
.end method
