.class Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenGesturesConfig"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 497
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method

.method static showScreenGesturesConfig2(Lx/org/server/MainActivity;)V
    .locals 4

    const/4 v0, 0x4

    .line 551
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 552
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_slow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 553
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 554
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_fast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 555
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->accel_veryfast:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 558
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 559
    sget v2, Lx/org/server/R$string;->remap_screenkb_button_gestures_sensitivity:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 560
    sget v2, Lx/org/server/Globals;->MultitouchGestureSensitivity:I

    new-instance v3, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$4;

    invoke-direct {v3, p0}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$4;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    new-instance v0, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$5;

    invoke-direct {v0, p0}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$5;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 577
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 578
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 579
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static showScreenGesturesConfig3(Lx/org/server/MainActivity;I)V
    .locals 4

    const/4 v0, 0x4

    .line 584
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 585
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->remap_screenkb_button_zoomin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 586
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->remap_screenkb_button_zoomout:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 587
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lx/org/server/R$string;->remap_screenkb_button_rotateleft:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 588
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lx/org/server/R$string;->remap_screenkb_button_rotateright:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 591
    sget-object v1, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 593
    invoke-static {p0}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void

    .line 596
    :cond_0
    sget-object v1, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_1

    add-int/2addr p1, v2

    .line 598
    invoke-static {p0, p1}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;->showScreenGesturesConfig3(Lx/org/server/MainActivity;I)V

    return-void

    .line 602
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 604
    sget-object v0, Lx/org/server/SDL_Keys;->namesSorted:[Ljava/lang/String;

    sget-object v2, Lx/org/server/SDL_Keys;->namesSortedBackIdx:[Ljava/lang/Integer;

    sget-object v3, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$6;

    invoke-direct {v3, p1, p0}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$6;-><init>(ILx/org/server/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 614
    new-instance p1, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$7;

    invoke-direct {p1, p0}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$7;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 621
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 622
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 623
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method run(Lx/org/server/MainActivity;)V
    .locals 10

    const/4 v0, 0x4

    .line 506
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 507
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lx/org/server/R$string;->remap_screenkb_button_zoomin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 508
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lx/org/server/R$string;->remap_screenkb_button_zoomout:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 509
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lx/org/server/R$string;->remap_screenkb_button_rotateleft:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 510
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lx/org/server/R$string;->remap_screenkb_button_rotateright:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 513
    sget-object v2, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    aget-boolean v2, v2, v3

    sget-object v7, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    aget-boolean v7, v7, v4

    sget-object v8, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    aget-boolean v8, v8, v5

    sget-object v9, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    aget-boolean v9, v9, v6

    new-array v0, v0, [Z

    aput-boolean v2, v0, v3

    aput-boolean v7, v0, v4

    aput-boolean v8, v0, v5

    aput-boolean v9, v0, v6

    .line 520
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 521
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lx/org/server/R$string;->remap_screenkb_button_gestures:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 522
    new-instance v3, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$1;

    invoke-direct {v3, p0}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$1;-><init>(Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 529
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lx/org/server/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$2;

    invoke-direct {v1, p0, p1}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$2;-><init>(Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    new-instance v0, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$3;

    invoke-direct {v0, p0, p1}, Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig$3;-><init>(Lx/org/server/SettingsMenuKeyboard$ScreenGesturesConfig;Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 544
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 545
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 546
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 501
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->remap_screenkb_button_gestures:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
