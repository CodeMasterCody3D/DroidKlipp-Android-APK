.class Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig$1;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig$1;->this$0:Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig;

    iput-object p2, p0, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 128
    sput p2, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    .line 129
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 130
    sget p1, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 131
    new-instance p1, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout;

    invoke-direct {p1}, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout;-><init>()V

    iget-object p2, p0, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-virtual {p1, p2}, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout;->run(Lx/org/server/MainActivity;)V

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardSizeConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
