.class Lx/org/server/SettingsMenu$Menu$2;
.super Ljava/lang/Object;
.source "SettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenu$Menu;->showMenuOptionsList(Lx/org/server/MainActivity;[Lx/org/server/SettingsMenu$Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenu$Menu;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenu$Menu;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lx/org/server/SettingsMenu$Menu$2;->this$0:Lx/org/server/SettingsMenu$Menu;

    iput-object p2, p0, Lx/org/server/SettingsMenu$Menu$2;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lx/org/server/SettingsMenu$Menu$2;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBackOuterMenu(Lx/org/server/MainActivity;)V

    return-void
.end method
