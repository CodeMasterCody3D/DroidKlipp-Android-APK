.class Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$KeyIndexFinal:I


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->this$0:Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iput p2, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->val$KeyIndexFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 322
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x6

    if-lt p2, p1, :cond_0

    .line 324
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->this$0:Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iget p2, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->val$KeyIndexFinal:I

    invoke-virtual {p1, p2}, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->ShowAllKeys(I)V

    return-void

    .line 327
    :cond_0
    sget-object p1, Lx/org/server/Globals;->RemapHwKeycode:[I

    iget v0, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->val$KeyIndexFinal:I

    sget-object v1, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    aget p2, v1, p2

    aput p2, p1, v0

    .line 328
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;->this$0:Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iget-object p1, p1, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
