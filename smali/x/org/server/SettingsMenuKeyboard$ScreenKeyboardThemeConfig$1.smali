.class Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardThemeConfig$1;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardThemeConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardThemeConfig;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardThemeConfig;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardThemeConfig$1;->this$0:Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardThemeConfig;

    iput-object p2, p0, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardThemeConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 214
    sput p2, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    .line 216
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 217
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardThemeConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
