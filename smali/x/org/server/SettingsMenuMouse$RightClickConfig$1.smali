.class Lx/org/server/SettingsMenuMouse$RightClickConfig$1;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMouse$RightClickConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMouse$RightClickConfig;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMouse$RightClickConfig;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lx/org/server/SettingsMenuMouse$RightClickConfig$1;->this$0:Lx/org/server/SettingsMenuMouse$RightClickConfig;

    iput-object p2, p0, Lx/org/server/SettingsMenuMouse$RightClickConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 344
    sput p2, Lx/org/server/Globals;->RightClickMethod:I

    .line 345
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 347
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$RightClickConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Lx/org/server/SettingsMenuMouse$KeyRemapToolMouseClick;

    iget-object v0, p0, Lx/org/server/SettingsMenuMouse$RightClickConfig$1;->val$p:Lx/org/server/MainActivity;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lx/org/server/SettingsMenuMouse$KeyRemapToolMouseClick;-><init>(Lx/org/server/MainActivity;Z)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    .line 351
    :cond_0
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$RightClickConfig$1;->val$p:Lx/org/server/MainActivity;

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 349
    invoke-static {p1}, Lx/org/server/SettingsMenuMouse$RightClickConfig;->showRightClickTimeoutConfig(Lx/org/server/MainActivity;)V

    return-void

    .line 351
    :cond_1
    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
