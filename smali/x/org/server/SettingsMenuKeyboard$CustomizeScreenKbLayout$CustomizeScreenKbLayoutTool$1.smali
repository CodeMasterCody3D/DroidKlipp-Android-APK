.class Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool$1;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;-><init>(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool$1;->this$0:Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 762
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool$1;->this$0:Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;

    iget-object p1, p1, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool$1;->this$0:Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;

    iget-object v0, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 763
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool$1;->this$0:Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;

    const/4 v0, 0x0

    iput-object v0, p1, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    .line 764
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool$1;->this$0:Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;

    iget-object p1, p1, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
