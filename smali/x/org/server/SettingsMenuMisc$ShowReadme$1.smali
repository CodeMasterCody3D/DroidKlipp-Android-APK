.class Lx/org/server/SettingsMenuMisc$ShowReadme$1;
.super Ljava/lang/Object;
.source "SettingsMenuMisc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMisc$ShowReadme;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMisc$ShowReadme;

.field final synthetic val$alertDismiss:[Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMisc$ShowReadme;[Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 489
    iput-object p1, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$1;->this$0:Lx/org/server/SettingsMenuMisc$ShowReadme;

    iput-object p2, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$1;->val$alertDismiss:[Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 492
    iget-object p1, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$1;->val$alertDismiss:[Landroid/app/AlertDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
