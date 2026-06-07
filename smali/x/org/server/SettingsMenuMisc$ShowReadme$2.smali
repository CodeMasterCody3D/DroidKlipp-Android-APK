.class Lx/org/server/SettingsMenuMisc$ShowReadme$2;
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

.field final synthetic val$p:Lx/org/server/MainActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMisc$ShowReadme;Ljava/lang/String;Lx/org/server/MainActivity;[Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$2;->this$0:Lx/org/server/SettingsMenuMisc$ShowReadme;

    iput-object p2, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$2;->val$p:Lx/org/server/MainActivity;

    iput-object p4, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$2;->val$alertDismiss:[Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 509
    iget-object p1, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$2;->val$url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 511
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 513
    iget-object v0, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$2;->val$p:Lx/org/server/MainActivity;

    invoke-virtual {v0, p1}, Lx/org/server/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 515
    :cond_0
    iget-object p1, p0, Lx/org/server/SettingsMenuMisc$ShowReadme$2;->val$alertDismiss:[Landroid/app/AlertDialog;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    .line 516
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
