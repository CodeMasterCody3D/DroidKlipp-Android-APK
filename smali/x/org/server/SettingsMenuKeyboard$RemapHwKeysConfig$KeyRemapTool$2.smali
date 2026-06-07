.class Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$2;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$2;->this$0:Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 336
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$2;->this$0:Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iget-object p1, p1, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
