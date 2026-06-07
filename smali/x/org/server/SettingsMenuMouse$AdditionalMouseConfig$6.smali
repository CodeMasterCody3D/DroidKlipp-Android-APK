.class Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$6;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;->showRelativeMouseMovementConfig(Lx/org/server/MainActivity;)V
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

    .line 553
    iput-object p1, p0, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$6;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 556
    sput p2, Lx/org/server/Globals;->RelativeMouseMovementSpeed:I

    .line 558
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 559
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$6;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;->showRelativeMouseMovementConfig1(Lx/org/server/MainActivity;)V

    return-void
.end method
