.class public abstract Lx/org/server/SettingsMenu$Menu;
.super Ljava/lang/Object;
.source "SettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Menu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method enabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method enabledOrHidden()Z
    .locals 6

    .line 92
    sget-object v0, Lx/org/server/Globals;->HiddenMenuOptions:[Lx/org/server/SettingsMenu$Menu;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 94
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lx/org/server/SettingsMenu$Menu;->enabled()Z

    move-result v0

    return v0
.end method

.method abstract run(Lx/org/server/MainActivity;)V
.end method

.method showMenuOptionsList(Lx/org/server/MainActivity;[Lx/org/server/SettingsMenu$Menu;)V
    .locals 6

    .line 101
    sget-object v0, Lx/org/server/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 105
    invoke-virtual {v4}, Lx/org/server/SettingsMenu$Menu;->enabledOrHidden()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v4, p1}, Lx/org/server/SettingsMenu$Menu;->title(Lx/org/server/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p0, p1}, Lx/org/server/SettingsMenu$Menu;->title(Lx/org/server/MainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lx/org/server/SettingsMenu$Menu$1;

    invoke-direct {v2, p0, p2, p1}, Lx/org/server/SettingsMenu$Menu$1;-><init>(Lx/org/server/SettingsMenu$Menu;[Lx/org/server/SettingsMenu$Menu;Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    new-instance p2, Lx/org/server/SettingsMenu$Menu$2;

    invoke-direct {p2, p0, p1}, Lx/org/server/SettingsMenu$Menu$2;-><init>(Lx/org/server/SettingsMenu$Menu;Lx/org/server/MainActivity;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    .line 139
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 140
    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method abstract title(Lx/org/server/MainActivity;)Ljava/lang/String;
.end method
