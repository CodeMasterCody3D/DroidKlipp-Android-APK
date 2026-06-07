.class Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced$1;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced;)V
    .locals 0

    .line 914
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced$1;->this$0:Lx/org/server/SettingsMenuKeyboard$ScreenKeyboardAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 918
    sput-boolean p3, Lx/org/server/Globals;->FloatingScreenJoystick:Z

    :cond_0
    return-void
.end method
