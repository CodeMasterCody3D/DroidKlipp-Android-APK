.class public Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyRemapTool"
.end annotation


# instance fields
.field p:Lx/org/server/MainActivity;


# direct methods
.method public constructor <init>(Lx/org/server/MainActivity;)V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lx/org/server/MainActivity;

    return-void
.end method


# virtual methods
.method public ShowAllKeys(I)V
    .locals 4

    .line 346
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lx/org/server/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    sget v1, Lx/org/server/R$string;->remap_hwkeys_select:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 348
    sget-object v1, Lx/org/server/SDL_Keys;->namesSorted:[Ljava/lang/String;

    sget-object v2, Lx/org/server/SDL_Keys;->namesSortedBackIdx:[Ljava/lang/Integer;

    sget-object v3, Lx/org/server/Globals;->RemapHwKeycode:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;

    invoke-direct {v3, p0, p1}, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;-><init>(Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 358
    new-instance p1, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$4;

    invoke-direct {p1, p0}, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$4;-><init>(Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 366
    iget-object v0, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 367
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 295
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p1, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/16 p3, 0xff

    if-le p2, p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    const/4 p3, 0x7

    .line 303
    new-array p3, p3, [Ljava/lang/CharSequence;

    sget-object v0, Lx/org/server/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    aput-object v0, p3, p1

    sget-object v0, Lx/org/server/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    aget-object v0, v0, v1

    aput-object v0, p3, v2

    sget-object v0, Lx/org/server/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    aget-object v0, v0, v1

    aput-object v0, p3, v3

    sget-object v0, Lx/org/server/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    aget-object v0, v0, v1

    aput-object v0, p3, v3

    sget-object v0, Lx/org/server/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    aget-object v0, v0, v1

    aput-object v0, p3, v3

    sget-object v0, Lx/org/server/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    aget-object v0, v0, v1

    aput-object v0, p3, v3

    iget-object v0, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lx/org/server/MainActivity;

    .line 310
    invoke-virtual {v0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lx/org/server/R$string;->remap_hwkeys_select_more_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p3, v1

    .line 313
    :goto_0
    sget-object v0, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 314
    sget-object v0, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v3, "_"

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 316
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lx/org/server/MainActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    sget v0, Lx/org/server/R$string;->remap_hwkeys_select_simple:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 318
    new-instance v0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;

    invoke-direct {v0, p0, p2}, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;-><init>(Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;I)V

    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 332
    new-instance p2, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$2;

    invoke-direct {p2, p0}, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$2;-><init>(Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 340
    iget-object p2, p0, Lx/org/server/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 341
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v2
.end method
