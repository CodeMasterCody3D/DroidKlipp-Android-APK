.class Lx/org/server/SettingsMenuMouse$LeftClickConfig$1;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMouse$LeftClickConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMouse$LeftClickConfig;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMouse$LeftClickConfig;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lx/org/server/SettingsMenuMouse$LeftClickConfig$1;->this$0:Lx/org/server/SettingsMenuMouse$LeftClickConfig;

    iput-object p2, p0, Lx/org/server/SettingsMenuMouse$LeftClickConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 268
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 269
    sput p2, Lx/org/server/Globals;->LeftClickMethod:I

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 271
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$LeftClickConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Lx/org/server/SettingsMenuMouse$KeyRemapToolMouseClick;

    iget-object v0, p0, Lx/org/server/SettingsMenuMouse$LeftClickConfig$1;->val$p:Lx/org/server/MainActivity;

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lx/org/server/SettingsMenuMouse$KeyRemapToolMouseClick;-><init>(Lx/org/server/MainActivity;Z)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :cond_0
    const/4 p1, 0x5

    if-eq p2, p1, :cond_2

    const/4 p1, 0x7

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$LeftClickConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void

    .line 273
    :cond_2
    :goto_0
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$LeftClickConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenuMouse$LeftClickConfig;->showLeftClickTimeoutConfig(Lx/org/server/MainActivity;)V

    return-void
.end method
