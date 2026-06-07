.class Lx/org/server/SettingsMenu$Menu$1;
.super Ljava/lang/Object;
.source "SettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$list:[Lx/org/server/SettingsMenu$Menu;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenu$Menu;[Lx/org/server/SettingsMenu$Menu;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lx/org/server/SettingsMenu$Menu$1;->this$0:Lx/org/server/SettingsMenu$Menu;

    iput-object p2, p0, Lx/org/server/SettingsMenu$Menu$1;->val$list:[Lx/org/server/SettingsMenu$Menu;

    iput-object p3, p0, Lx/org/server/SettingsMenu$Menu$1;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 114
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    iget-object p1, p0, Lx/org/server/SettingsMenu$Menu$1;->val$list:[Lx/org/server/SettingsMenu$Menu;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 119
    invoke-virtual {v3}, Lx/org/server/SettingsMenu$Menu;->enabledOrHidden()Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v2, p2, :cond_0

    .line 123
    iget-object p1, p0, Lx/org/server/SettingsMenu$Menu$1;->val$p:Lx/org/server/MainActivity;

    invoke-virtual {v3, p1}, Lx/org/server/SettingsMenu$Menu;->run(Lx/org/server/MainActivity;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
