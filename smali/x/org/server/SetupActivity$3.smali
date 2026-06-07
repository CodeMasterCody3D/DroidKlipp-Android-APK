.class Lx/org/server/SetupActivity$3;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SetupActivity;->showUsbDebuggingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SetupActivity;


# direct methods
.method constructor <init>(Lx/org/server/SetupActivity;)V
    .locals 0

    iput-object p1, p0, Lx/org/server/SetupActivity$3;->this$0:Lx/org/server/SetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lx/org/server/SetupActivity$3;->this$0:Lx/org/server/SetupActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lx/org/server/SetupActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
