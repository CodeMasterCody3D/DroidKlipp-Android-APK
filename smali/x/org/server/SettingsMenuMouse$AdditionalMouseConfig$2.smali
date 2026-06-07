.class Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$2;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 479
    iput-object p1, p0, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$2;->this$0:Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;

    iput-object p2, p0, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$2;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 482
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 483
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$2;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;->showGyroscopeMouseMovementConfig(Lx/org/server/MainActivity;)V

    return-void
.end method
