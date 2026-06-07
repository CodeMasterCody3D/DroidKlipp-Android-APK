.class Lx/org/server/MainActivity$1simpleKeyListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->showScreenKeyboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "simpleKeyListener"
.end annotation


# instance fields
.field _parent:Lx/org/server/MainActivity;

.field final synthetic this$0:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;Lx/org/server/MainActivity;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lx/org/server/MainActivity$1simpleKeyListener;->this$0:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx/org/server/MainActivity$1simpleKeyListener;->_parent:Lx/org/server/MainActivity;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 923
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x52

    if-eq p2, p1, :cond_0

    const/16 p1, 0x60

    if-eq p2, p1, :cond_0

    const/16 p1, 0x61

    if-eq p2, p1, :cond_0

    const/16 p1, 0x63

    if-eq p2, p1, :cond_0

    const/16 p1, 0x64

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbc

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbd

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbe

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbf

    if-ne p2, p1, :cond_1

    .line 936
    :cond_0
    iget-object p1, p0, Lx/org/server/MainActivity$1simpleKeyListener;->_parent:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->hideScreenKeyboard()V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
