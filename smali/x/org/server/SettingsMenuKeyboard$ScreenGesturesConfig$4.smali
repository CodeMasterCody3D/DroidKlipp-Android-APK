.class Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$4;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;->showScreenGesturesConfig2(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 561
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$4;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 564
    sput p2, Lx/org/server/Globals;->MultitouchGestureSensitivity:I

    .line 566
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 567
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$4;->val$p:Lx/org/server/MainActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;->showScreenGesturesConfig3(Lx/org/server/MainActivity;I)V

    return-void
.end method
