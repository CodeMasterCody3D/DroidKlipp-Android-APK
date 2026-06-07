.class Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMouse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisplaySizeConfig"
.end annotation


# instance fields
.field firstStart:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;->firstStart:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    .line 116
    iput-boolean p1, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;->firstStart:Z

    return-void
.end method


# virtual methods
.method run(Lx/org/server/MainActivity;)V
    .locals 14

    const/4 v0, 0x4

    .line 124
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 125
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lx/org/server/R$string;->display_size_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 126
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lx/org/server/R$string;->display_size_small_touchpad:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 127
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lx/org/server/R$string;->display_size_large:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 128
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lx/org/server/R$string;->display_size_desktop:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x3

    aput-object v3, v2, v8

    .line 136
    sget-boolean v3, Lx/org/server/Globals;->SwVideoMode:Z

    if-nez v3, :cond_0

    .line 138
    new-array v2, v8, [Ljava/lang/CharSequence;

    .line 139
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lx/org/server/R$string;->display_size_small_touchpad:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 140
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lx/org/server/R$string;->display_size_large:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 141
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v9, Lx/org/server/R$string;->display_size_desktop:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x3e8

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x3

    :goto_0
    const/4 v11, 0x1

    .line 149
    iget-boolean v12, p0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;->firstStart:Z

    if-eqz v12, :cond_1

    const/4 v2, 0x5

    .line 151
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 152
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lx/org/server/R$string;->display_size_small:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v4

    .line 153
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lx/org/server/R$string;->display_size_small_touchpad:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v11

    .line 154
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lx/org/server/R$string;->display_size_large:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v6

    .line 155
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lx/org/server/R$string;->display_size_desktop:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v8

    .line 156
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lx/org/server/R$string;->show_more_options:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v0

    .line 159
    sget-boolean v12, Lx/org/server/Globals;->SwVideoMode:Z

    if-nez v12, :cond_1

    .line 161
    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v12, Lx/org/server/R$string;->display_size_small_touchpad:I

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 163
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lx/org/server/R$string;->display_size_large:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v11

    .line 164
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lx/org/server/R$string;->display_size_desktop:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 165
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lx/org/server/R$string;->show_more_options:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    move-object v8, v2

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    move-object v8, v2

    const/4 v6, 0x4

    .line 178
    :goto_1
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    sget v0, Lx/org/server/R$string;->display_size:I

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 222
    new-instance v0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;

    move-object v1, p0

    move-object v7, p1

    move v4, v3

    move v3, v9

    move v2, v10

    invoke-direct/range {v0 .. v7}, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;-><init>(Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;IIIIILx/org/server/MainActivity;)V

    invoke-virtual {v11, v8, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    new-instance v0, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1;

    invoke-direct {v0, p0, p1}, Lx/org/server/SettingsMenuMouse$DisplaySizeConfig$1;-><init>(Lx/org/server/SettingsMenuMouse$DisplaySizeConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 120
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->display_size_mouse:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
