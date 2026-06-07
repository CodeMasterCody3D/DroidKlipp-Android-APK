.class public Lx/org/server/SettingsMenuMouse$KeyRemapToolMouseClick;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyRemapToolMouseClick"
.end annotation


# instance fields
.field leftClick:Z

.field p:Lx/org/server/MainActivity;


# direct methods
.method public constructor <init>(Lx/org/server/MainActivity;Z)V
    .locals 2

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lx/org/server/SettingsMenuMouse$KeyRemapToolMouseClick;->p:Lx/org/server/MainActivity;

    .line 404
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lx/org/server/R$string;->remap_hwkeys_press:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/org/server/MainActivity;->setText(Ljava/lang/String;)V

    .line 405
    iput-boolean p2, p0, Lx/org/server/SettingsMenuMouse$KeyRemapToolMouseClick;->leftClick:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 411
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$KeyRemapToolMouseClick;->p:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p1, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/16 p3, 0xff

    if-le p2, p3, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 418
    :goto_0
    iget-boolean p2, p0, Lx/org/server/SettingsMenuMouse$KeyRemapToolMouseClick;->leftClick:Z

    if-eqz p2, :cond_2

    .line 419
    sput p1, Lx/org/server/Globals;->LeftClickKey:I

    goto :goto_1

    .line 421
    :cond_2
    sput p1, Lx/org/server/Globals;->RightClickKey:I

    .line 423
    :goto_1
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$KeyRemapToolMouseClick;->p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    const/4 p1, 0x1

    return p1
.end method
