.class Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OptionalDownloadConfig"
.end annotation


# instance fields
.field firstStart:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;->firstStart:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    .line 178
    iput-boolean p1, p0, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;->firstStart:Z

    return-void
.end method


# virtual methods
.method run(Lx/org/server/MainActivity;)V
    .locals 12

    .line 186
    sget-object v0, Lx/org/server/Globals;->DataDownloadUrl:[Ljava/lang/String;

    .line 188
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lx/org/server/R$string;->downloads:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 191
    array-length v2, v0

    new-array v2, v2, [I

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 194
    :goto_0
    array-length v7, v0

    const-string v8, "!"

    const/4 v9, 0x1

    if-ge v6, v7, :cond_2

    .line 196
    new-instance v7, Ljava/lang/String;

    aget-object v10, v0, v6

    const-string v11, "[|]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    .line 200
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 203
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    .line 205
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    aput v6, v2, v8

    .line 206
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 210
    :cond_2
    sget-object v6, Lx/org/server/Globals;->OptionalDataDownload:[Z

    if-eqz v6, :cond_3

    sget-object v6, Lx/org/server/Globals;->OptionalDataDownload:[Z

    array-length v6, v6

    array-length v7, v0

    if-eq v6, v7, :cond_6

    .line 212
    :cond_3
    array-length v6, v0

    new-array v6, v6, [Z

    sput-object v6, Lx/org/server/Globals;->OptionalDataDownload:[Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 214
    :goto_3
    array-length v10, v0

    if-ge v6, v10, :cond_5

    .line 216
    aget-object v10, v0, v6

    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    .line 218
    sget-object v7, Lx/org/server/Globals;->OptionalDataDownload:[Z

    aput-boolean v9, v7, v6

    const/4 v7, 0x0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    if-eqz v7, :cond_6

    .line 223
    sget-object v0, Lx/org/server/Globals;->OptionalDataDownload:[Z

    aput-boolean v9, v0, v5

    .line 225
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_7

    .line 227
    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void

    .line 232
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v6, 0x0

    .line 233
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 234
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 236
    :cond_8
    new-array v4, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$1;

    invoke-direct {v4, p0, v2}, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$1;-><init>(Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;[I)V

    invoke-virtual {v1, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lx/org/server/R$string;->ok:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$2;

    invoke-direct {v2, p0, p1}, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$2;-><init>(Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    iget-boolean v0, p0, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;->firstStart:Z

    if-eqz v0, :cond_9

    .line 253
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lx/org/server/R$string;->show_more_options:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$3;

    invoke-direct {v2, p0, p1}, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$3;-><init>(Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    :cond_9
    new-instance v0, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$4;

    invoke-direct {v0, p0, p1}, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$4;-><init>(Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 271
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 272
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 182
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->downloads:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
