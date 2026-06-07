.class Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoSettingsConfig"
.end annotation


# static fields
.field static debugMenuShowCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method run(Lx/org/server/MainActivity;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 323
    sget v2, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;->debugMenuShowCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;->debugMenuShowCount:I

    const/16 v2, 0x8

    .line 324
    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 325
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lx/org/server/R$string;->mouse_keepaspectratio:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 326
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lx/org/server/R$string;->video_smooth:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 327
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lx/org/server/R$string;->video_immersive:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 328
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lx/org/server/R$string;->video_draw_cutout:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    .line 329
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lx/org/server/R$string;->video_orientation_autodetect:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x4

    aput-object v5, v4, v9

    .line 330
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Lx/org/server/R$string;->video_orientation_vertical:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x5

    aput-object v5, v4, v10

    .line 331
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v11, Lx/org/server/R$string;->video_bpp_24:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x6

    aput-object v5, v4, v11

    .line 332
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v12, Lx/org/server/R$string;->tv_borders:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x7

    aput-object v5, v4, v12

    .line 334
    sget-boolean v5, Lx/org/server/Globals;->HorizontalOrientation:Z

    xor-int/2addr v5, v3

    sget v13, Lx/org/server/Globals;->VideoDepthBpp:I

    const/16 v14, 0x18

    if-ne v13, v14, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    new-array v15, v2, [Z

    sget-boolean v16, Lx/org/server/Globals;->KeepAspectRatio:Z

    aput-boolean v16, v15, v6

    sget-boolean v16, Lx/org/server/Globals;->VideoLinearFilter:Z

    aput-boolean v16, v15, v3

    sget-boolean v16, Lx/org/server/Globals;->ImmersiveMode:Z

    aput-boolean v16, v15, v7

    sget-boolean v16, Lx/org/server/Globals;->DrawInDisplayCutout:Z

    aput-boolean v16, v15, v8

    sget-boolean v16, Lx/org/server/Globals;->AutoDetectOrientation:Z

    aput-boolean v16, v15, v9

    aput-boolean v5, v15, v10

    aput-boolean v13, v15, v11

    sget-boolean v5, Lx/org/server/Globals;->TvBorders:Z

    aput-boolean v5, v15, v12

    .line 345
    sget-boolean v5, Lx/org/server/Globals;->SwVideoMode:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lx/org/server/Globals;->CompatibilityHacksVideo:Z

    if-nez v5, :cond_2

    const/16 v4, 0x9

    .line 347
    new-array v5, v4, [Ljava/lang/CharSequence;

    .line 348
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lx/org/server/R$string;->mouse_keepaspectratio:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    .line 349
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lx/org/server/R$string;->video_smooth:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v3

    .line 350
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lx/org/server/R$string;->video_immersive:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v7

    .line 351
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lx/org/server/R$string;->video_draw_cutout:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v8

    .line 352
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lx/org/server/R$string;->video_orientation_autodetect:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v9

    .line 353
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lx/org/server/R$string;->video_orientation_vertical:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v10

    .line 354
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lx/org/server/R$string;->video_bpp_24:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v11

    .line 355
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lx/org/server/R$string;->tv_borders:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    .line 356
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v15, Lx/org/server/R$string;->video_separatethread:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v2

    .line 358
    sget-boolean v13, Lx/org/server/Globals;->HorizontalOrientation:Z

    xor-int/2addr v13, v3

    sget v15, Lx/org/server/Globals;->VideoDepthBpp:I

    if-ne v15, v14, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    new-array v15, v4, [Z

    sget-boolean v4, Lx/org/server/Globals;->KeepAspectRatio:Z

    aput-boolean v4, v15, v6

    sget-boolean v4, Lx/org/server/Globals;->VideoLinearFilter:Z

    aput-boolean v4, v15, v3

    sget-boolean v3, Lx/org/server/Globals;->ImmersiveMode:Z

    aput-boolean v3, v15, v7

    sget-boolean v3, Lx/org/server/Globals;->DrawInDisplayCutout:Z

    aput-boolean v3, v15, v8

    sget-boolean v3, Lx/org/server/Globals;->AutoDetectOrientation:Z

    aput-boolean v3, v15, v9

    aput-boolean v13, v15, v10

    aput-boolean v14, v15, v11

    sget-boolean v3, Lx/org/server/Globals;->TvBorders:Z

    aput-boolean v3, v15, v12

    sget-boolean v3, Lx/org/server/Globals;->MultiThreadedVideo:Z

    aput-boolean v3, v15, v2

    move-object v4, v5

    .line 385
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lx/org/server/R$string;->video:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 387
    new-instance v3, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig$1;

    invoke-direct {v3, v0}, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig$1;-><init>(Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;)V

    invoke-virtual {v2, v4, v15, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lx/org/server/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig$2;

    invoke-direct {v4, v0, v1}, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig$2;-><init>(Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    new-instance v3, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig$3;

    invoke-direct {v3, v0, v1}, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig$3;-><init>(Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 426
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 427
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 428
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 318
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->video:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
