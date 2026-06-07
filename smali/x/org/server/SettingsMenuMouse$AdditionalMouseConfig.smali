.class Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMouse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdditionalMouseConfig"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 428
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method

.method static showGyroscopeMouseMovementConfig(Lx/org/server/MainActivity;)V
    .locals 4

    .line 500
    sget-boolean v0, Lx/org/server/Globals;->MoveMouseWithGyroscope:Z

    if-nez v0, :cond_0

    .line 502
    invoke-static {p0}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;->showRelativeMouseMovementConfig(Lx/org/server/MainActivity;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 506
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_veryslow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 507
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_slow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 508
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 509
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_fast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 510
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_veryfast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 512
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    sget v2, Lx/org/server/R$string;->mouse_gyroscope_mouse_sensitivity:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 514
    sget v2, Lx/org/server/Globals;->MoveMouseWithGyroscopeSpeed:I

    new-instance v3, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$4;

    invoke-direct {v3, p0}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$4;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 524
    new-instance v0, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$5;

    invoke-direct {v0, p0}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$5;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 532
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 533
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static showRelativeMouseMovementConfig(Lx/org/server/MainActivity;)V
    .locals 4

    .line 538
    sget-boolean v0, Lx/org/server/Globals;->RelativeMouseMovement:Z

    if-nez v0, :cond_0

    .line 540
    invoke-static {p0}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 544
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_veryslow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 545
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_slow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 546
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 547
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_fast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 548
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_veryfast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 550
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    sget v2, Lx/org/server/R$string;->mouse_relative_speed:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 552
    sget v2, Lx/org/server/Globals;->RelativeMouseMovementSpeed:I

    new-instance v3, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$6;

    invoke-direct {v3, p0}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$6;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    new-instance v0, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$7;

    invoke-direct {v0, p0}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$7;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 569
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 570
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 571
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static showRelativeMouseMovementConfig1(Lx/org/server/MainActivity;)V
    .locals 4

    const/4 v0, 0x4

    .line 576
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->none:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 577
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_slow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 578
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 579
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_fast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 581
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 582
    sget v2, Lx/org/server/R$string;->mouse_relative_accel:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 583
    sget v2, Lx/org/server/Globals;->RelativeMouseMovementAccel:I

    new-instance v3, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$8;

    invoke-direct {v3, p0}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$8;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 593
    new-instance v0, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$9;

    invoke-direct {v0, p0}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$9;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 600
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 601
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 602
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method run(Lx/org/server/MainActivity;)V
    .locals 10

    const/4 v0, 0x7

    .line 436
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 437
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lx/org/server/R$string;->mouse_hover_jitter_filter:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 438
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lx/org/server/R$string;->mouse_joystickmouse:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 439
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lx/org/server/R$string;->click_with_dpadcenter:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 440
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lx/org/server/R$string;->mouse_relative:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 441
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lx/org/server/R$string;->mouse_gyroscope_mouse:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 442
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lx/org/server/R$string;->mouse_finger_hover:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 443
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v9, Lx/org/server/R$string;->mouse_subframe_touch_events:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 446
    new-array v0, v0, [Z

    sget-boolean v2, Lx/org/server/Globals;->HoverJitterFilter:Z

    aput-boolean v2, v0, v3

    sget-boolean v2, Lx/org/server/Globals;->MoveMouseWithJoystick:Z

    aput-boolean v2, v0, v4

    sget-boolean v2, Lx/org/server/Globals;->ClickMouseWithDpad:Z

    aput-boolean v2, v0, v5

    sget-boolean v2, Lx/org/server/Globals;->RelativeMouseMovement:Z

    aput-boolean v2, v0, v6

    sget-boolean v2, Lx/org/server/Globals;->MoveMouseWithGyroscope:Z

    aput-boolean v2, v0, v7

    sget-boolean v2, Lx/org/server/Globals;->FingerHover:Z

    aput-boolean v2, v0, v8

    sget-boolean v2, Lx/org/server/Globals;->GenerateSubframeTouchEvents:Z

    aput-boolean v2, v0, v9

    .line 456
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 457
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lx/org/server/R$string;->advanced:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 458
    new-instance v3, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$1;

    invoke-direct {v3, p0}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$1;-><init>(Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lx/org/server/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$2;

    invoke-direct {v1, p0, p1}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$2;-><init>(Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    new-instance v0, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$3;

    invoke-direct {v0, p0, p1}, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$3;-><init>(Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 493
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 494
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 495
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 432
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->advanced:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
