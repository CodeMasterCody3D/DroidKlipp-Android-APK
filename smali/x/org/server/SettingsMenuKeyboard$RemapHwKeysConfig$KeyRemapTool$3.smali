.class Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->ShowAllKeys(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

.field final synthetic val$KeyIndex:I


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;->this$0:Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iput p2, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;->val$KeyIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 352
    sget-object v0, Lx/org/server/Globals;->RemapHwKeycode:[I

    iget v1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;->val$KeyIndex:I

    sget-object v2, Lx/org/server/SDL_Keys;->namesSortedIdx:[Ljava/lang/Integer;

    aget-object p2, v2, p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, v1

    .line 354
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 355
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;->this$0:Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;

    iget-object p1, p1, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
