.class Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$6;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;->showScreenGesturesConfig3(Lx/org/server/MainActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentButton:I

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(ILx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 605
    iput p1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$6;->val$currentButton:I

    iput-object p2, p0, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$6;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 608
    sget-object v0, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    iget v1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$6;->val$currentButton:I

    sget-object v2, Lx/org/server/SDL_Keys;->namesSortedIdx:[Ljava/lang/Integer;

    aget-object p2, v2, p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, v1

    .line 610
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 611
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$6;->val$p:Lx/org/server/MainActivity;

    iget p2, p0, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$6;->val$currentButton:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;->showScreenGesturesConfig3(Lx/org/server/MainActivity;I)V

    return-void
.end method
