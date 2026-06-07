.class Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;

.field final synthetic val$more_options:I

.field final synthetic val$p:Lx/org/server/MainActivity;

.field final synthetic val$size_desktop:I

.field final synthetic val$size_large:I

.field final synthetic val$size_small:I

.field final synthetic val$size_small_touchpad:I


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;IIIIILx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->this$0:Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;

    iput p2, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_desktop:I

    iput p3, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_large:I

    iput p4, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small:I

    iput p5, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small_touchpad:I

    iput p6, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$more_options:I

    iput-object p7, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 184
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    iget p1, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_desktop:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    .line 187
    sput v1, Lx/org/server/Globals;->LeftClickMethod:I

    .line 188
    sput-boolean v1, Lx/org/server/Globals;->RelativeMouseMovement:Z

    .line 189
    sput v1, Lx/org/server/Globals;->ShowScreenUnderFinger:I

    .line 190
    sput-boolean v0, Lx/org/server/Globals;->ForceHardwareMouse:Z

    .line 192
    :cond_0
    iget p1, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_large:I

    if-ne p2, p1, :cond_1

    .line 194
    sput v1, Lx/org/server/Globals;->LeftClickMethod:I

    .line 195
    sput-boolean v1, Lx/org/server/Globals;->RelativeMouseMovement:Z

    .line 196
    sput v1, Lx/org/server/Globals;->ShowScreenUnderFinger:I

    .line 197
    sput-boolean v1, Lx/org/server/Globals;->ForceHardwareMouse:Z

    .line 199
    :cond_1
    iget p1, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small:I

    if-ne p2, p1, :cond_2

    .line 201
    sput v0, Lx/org/server/Globals;->LeftClickMethod:I

    .line 202
    sput-boolean v1, Lx/org/server/Globals;->RelativeMouseMovement:Z

    .line 203
    sput v0, Lx/org/server/Globals;->ShowScreenUnderFinger:I

    .line 204
    sput-boolean v1, Lx/org/server/Globals;->ForceHardwareMouse:Z

    .line 206
    :cond_2
    iget p1, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$size_small_touchpad:I

    if-ne p2, p1, :cond_3

    const/4 p1, 0x7

    .line 208
    sput p1, Lx/org/server/Globals;->LeftClickMethod:I

    .line 209
    sput-boolean v0, Lx/org/server/Globals;->RelativeMouseMovement:Z

    .line 210
    sput v1, Lx/org/server/Globals;->ShowScreenUnderFinger:I

    .line 211
    sput-boolean v1, Lx/org/server/Globals;->ForceHardwareMouse:Z

    .line 213
    :cond_3
    iget p1, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$more_options:I

    if-ne p2, p1, :cond_4

    .line 215
    sget-object p1, Lx/org/server/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 216
    new-instance p1, Lx/org/server/SettingsMenu$MainMenu;

    invoke-direct {p1}, Lx/org/server/SettingsMenu$MainMenu;-><init>()V

    iget-object p2, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$p:Lx/org/server/MainActivity;

    invoke-virtual {p1, p2}, Lx/org/server/SettingsMenu$MainMenu;->run(Lx/org/server/MainActivity;)V

    return-void

    .line 219
    :cond_4
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
