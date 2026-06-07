.class Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$1;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$1;->this$0:Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 526
    sget-object p1, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    aput-boolean p3, p1, p2

    return-void
.end method
