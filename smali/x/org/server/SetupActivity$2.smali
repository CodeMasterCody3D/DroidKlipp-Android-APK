.class Lx/org/server/SetupActivity$2;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SetupActivity;->showDeveloperModeDialog()V
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

    iput-object p1, p0, Lx/org/server/SetupActivity$2;->this$0:Lx/org/server/SetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lx/org/server/SetupActivity$2;->this$0:Lx/org/server/SetupActivity;

    invoke-virtual {v0}, Lx/org/server/SetupActivity;->finish()V

    return-void
.end method
