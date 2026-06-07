.class Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$1;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMouse$JoystickMouseConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMouse$JoystickMouseConfig;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMouse$JoystickMouseConfig;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 625
    iput-object p1, p0, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$1;->this$0:Lx/org/server/SettingsMenuMouse$JoystickMouseConfig;

    iput-object p2, p0, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 628
    sput p2, Lx/org/server/Globals;->MoveMouseWithJoystickSpeed:I

    .line 630
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 631
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig$1;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenuMouse$JoystickMouseConfig;->showJoystickMouseAccelConfig(Lx/org/server/MainActivity;)V

    return-void
.end method
