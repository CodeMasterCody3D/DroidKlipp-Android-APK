.class Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomizeScreenKbLayoutTool"
.end annotation


# instance fields
.field bmps:[Landroid/graphics/Bitmap;

.field boundary:Landroid/widget/ImageView;

.field boundaryBmp:Landroid/graphics/Bitmap;

.field buttons:[I

.field currentButton:I

.field imgs:[Landroid/widget/ImageView;

.field layout:Landroid/widget/FrameLayout;

.field oldX:I

.field oldY:I

.field p:Lx/org/server/MainActivity;

.field resizing:Z


# direct methods
.method public constructor <init>(Lx/org/server/MainActivity;)V
    .locals 19

    move-object/from16 v0, p0

    .line 680
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 652
    iput-object v1, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    .line 653
    sget-object v2, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v2, v2

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    .line 654
    sget-object v2, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    .line 655
    iput-object v1, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    .line 656
    iput-object v1, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 657
    iput v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    .line 658
    sget v3, Lx/org/server/R$drawable;->dpad:I

    sget v4, Lx/org/server/R$drawable;->keyboard:I

    sget v5, Lx/org/server/R$drawable;->b1:I

    sget v6, Lx/org/server/R$drawable;->b2:I

    sget v7, Lx/org/server/R$drawable;->b3:I

    sget v8, Lx/org/server/R$drawable;->b4:I

    sget v9, Lx/org/server/R$drawable;->b5:I

    sget v10, Lx/org/server/R$drawable;->b6:I

    sget v11, Lx/org/server/R$drawable;->dpad:I

    sget v12, Lx/org/server/R$drawable;->dpad:I

    sget v13, Lx/org/server/R$drawable;->b1:I

    sget v14, Lx/org/server/R$drawable;->b2:I

    sget v15, Lx/org/server/R$drawable;->b3:I

    sget v16, Lx/org/server/R$drawable;->b4:I

    sget v17, Lx/org/server/R$drawable;->b5:I

    sget v18, Lx/org/server/R$drawable;->b6:I

    filled-new-array/range {v3 .. v18}, [I

    move-result-object v3

    iput-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->buttons:[I

    .line 676
    iput v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    iput v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    .line 677
    iput-boolean v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->resizing:Z

    .line 681
    array-length v3, v3

    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v4, v4

    const-string v5, "SDL"

    if-ne v3, v4, :cond_8

    move-object/from16 v3, p1

    .line 687
    iput-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    .line 688
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    .line 689
    iget-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {v3}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 690
    iget-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 691
    iget-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 692
    iget-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 693
    iget-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 694
    iget-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 695
    new-instance v3, Landroid/widget/ImageView;

    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    .line 696
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    iget-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 698
    iget-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {v3}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lx/org/server/R$drawable;->rectangle:I

    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    .line 699
    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 700
    iget-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 701
    iput v7, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    .line 703
    iget-object v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {v3}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    .line 704
    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {v6}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    .line 706
    sget v8, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v8, v9, :cond_3

    .line 708
    invoke-static {v3, v6, v2}, Lx/org/server/DemoRenderer;->nativeResize(III)V

    .line 709
    sget-boolean v3, Lx/org/server/Globals;->AppUsesThirdJoystick:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    sget-boolean v3, Lx/org/server/Globals;->AppUsesSecondJoystick:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    sget-boolean v3, Lx/org/server/Globals;->AppUsesJoystick:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lx/org/server/Settings;->nativeSetJoystickUsed(I)V

    .line 710
    sget v12, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    sget v13, Lx/org/server/Globals;->TouchscreenKeyboardDrawSize:I

    sget v14, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    sget v15, Lx/org/server/Globals;->TouchscreenKeyboardTransparency:I

    .line 714
    sget-boolean v16, Lx/org/server/Globals;->FloatingScreenJoystick:Z

    sget v17, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysAmount:I

    .line 710
    invoke-static/range {v12 .. v17}, Lx/org/server/Settings;->nativeSetupScreenKeyboard(IIIIII)V

    const/4 v3, 0x0

    .line 716
    :goto_1
    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 718
    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v6, v6, v3

    invoke-static {v3, v2}, Lx/org/server/Settings;->nativeGetScreenKeyboardButtonLayout(II)I

    move-result v8

    aput v8, v6, v2

    .line 719
    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v6, v6, v3

    invoke-static {v3, v4}, Lx/org/server/Settings;->nativeGetScreenKeyboardButtonLayout(II)I

    move-result v8

    aput v8, v6, v4

    .line 720
    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v6, v6, v3

    invoke-static {v3, v10}, Lx/org/server/Settings;->nativeGetScreenKeyboardButtonLayout(II)I

    move-result v8

    aput v8, v6, v10

    .line 721
    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v6, v6, v3

    invoke-static {v3, v11}, Lx/org/server/Settings;->nativeGetScreenKeyboardButtonLayout(II)I

    move-result v8

    aput v8, v6, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 725
    :goto_2
    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v6, v6

    if-ge v3, v6, :cond_6

    .line 727
    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    aget-boolean v6, v6, v3

    if-nez v6, :cond_4

    goto/16 :goto_3

    .line 729
    :cond_4
    iget v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    if-ne v6, v7, :cond_5

    .line 730
    iput v3, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    .line 731
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Screen kb button "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " coords "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v8, v8, v3

    aget v8, v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v12, v12, v3

    aget v12, v12, v4

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v12, v12, v3

    aget v12, v12, v10

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v8, v8, v3

    aget v8, v8, v11

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/ImageView;

    iget-object v12, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-direct {v8, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v8, v6, v3

    .line 734
    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v6, v6, v3

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v6, v6, v3

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 736
    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    iget-object v8, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {v8}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v12, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->buttons:[I

    aget v12, v12, v3

    invoke-static {v8, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v6, v3

    .line 737
    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v6, v6, v3

    iget-object v8, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 738
    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v6, v6, v3

    const/16 v8, 0x80

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 739
    iget-object v6, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 740
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 741
    new-instance v8, Landroid/graphics/RectF;

    iget-object v12, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    aget-object v12, v12, v3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    aget-object v13, v13, v3

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-direct {v8, v14, v14, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 742
    new-instance v12, Landroid/graphics/RectF;

    sget-object v13, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v13, v13, v3

    aget v13, v13, v2

    int-to-float v13, v13

    sget-object v14, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v14, v14, v3

    aget v14, v14, v4

    int-to-float v14, v14

    sget-object v15, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v15, v15, v3

    aget v15, v15, v10

    int-to-float v15, v15

    sget-object v16, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v16, v16, v3

    aget v2, v16, v11

    int-to-float v2, v2

    invoke-direct {v12, v13, v14, v15, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 744
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v8, v12, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 745
    iget-object v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 747
    :cond_6
    iget-object v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->bringToFront()V

    .line 748
    iget v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    if-ne v2, v7, :cond_7

    .line 749
    invoke-virtual {v0, v1, v9, v1}, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    goto :goto_4

    .line 751
    :cond_7
    invoke-virtual {v0, v2}, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->setupButton(I)V

    .line 753
    :goto_4
    new-instance v1, Landroid/widget/Button;

    iget-object v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 754
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x104000a

    .line 755
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 758
    new-instance v2, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool$1;

    invoke-direct {v2, v0}, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool$1;-><init>(Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    iget-object v2, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x31

    invoke-direct {v4, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    iget-object v1, v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool$2;

    invoke-direct {v2, v0}, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool$2;-><init>(Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 683
    :cond_8
    const-string v1, "Assertion failed: buttons.length != Globals.ScreenKbControlsLayout.length"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 885
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 886
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->layout:Landroid/widget/FrameLayout;

    .line 887
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 814
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez p1, :cond_2

    .line 816
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    .line 817
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    .line 818
    iput-boolean v2, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->resizing:Z

    const/4 p1, 0x0

    .line 819
    :goto_0
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v4, v4

    if-ge p1, v4, :cond_2

    .line 821
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    aget-boolean v4, v4, p1

    if-nez v4, :cond_0

    goto :goto_1

    .line 823
    :cond_0
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v4, v4, p1

    aget v4, v4, v1

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    if-gt v4, v5, :cond_1

    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v4, v4, p1

    aget v4, v4, v3

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    if-lt v4, v5, :cond_1

    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v4, v4, p1

    aget v4, v4, v2

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    if-gt v4, v5, :cond_1

    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v4, v4, p1

    aget v4, v4, v0

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    if-lt v4, v5, :cond_1

    .line 828
    iput p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    .line 829
    invoke-virtual {p0, p1}, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->setupButton(I)V

    .line 830
    iput-boolean v1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->resizing:Z

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 835
    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 837
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget v4, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    sub-int/2addr p1, v4

    .line 838
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget v4, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    sub-int/2addr p2, v4

    .line 839
    iget-boolean v4, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->resizing:Z

    if-eqz v4, :cond_5

    .line 842
    div-int/lit8 p1, p1, 0x6

    .line 843
    div-int/lit8 p2, p2, 0x6

    .line 844
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    aget v4, v4, v1

    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v6, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_3

    .line 846
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    aget v5, v4, v1

    sub-int/2addr v5, p1

    aput v5, v4, v1

    .line 847
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    .line 849
    :cond_3
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    aget v4, v4, v2

    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v6, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v5, v5, v6

    aget v5, v5, v0

    mul-int/lit8 v6, p2, 0x2

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_4

    .line 851
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    aget v5, v4, v2

    add-int/2addr v5, p2

    aput v5, v4, v2

    .line 852
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    aget v5, v4, v0

    sub-int/2addr v5, p2

    aput v5, v4, v0

    :cond_4
    mul-int/lit8 p1, p1, 0x6

    mul-int/lit8 p2, p2, 0x6

    goto :goto_3

    .line 859
    :cond_5
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    aget v5, v4, v1

    add-int/2addr v5, p1

    aput v5, v4, v1

    .line 860
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    .line 861
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    aget v5, v4, v2

    add-int/2addr v5, p2

    aput v5, v4, v2

    .line 862
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    aget v5, v4, v0

    add-int/2addr v5, p2

    aput v5, v4, v0

    .line 864
    :goto_3
    iget v4, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    add-int/2addr v4, p1

    iput v4, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldX:I

    .line 865
    iget p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    add-int/2addr p1, p2

    iput p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->oldY:I

    .line 866
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 867
    new-instance p2, Landroid/graphics/RectF;

    iget-object v4, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    iget v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    iget v6, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {p2, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 868
    new-instance v4, Landroid/graphics/RectF;

    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v7, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v5, v5, v7

    aget v1, v5, v1

    int-to-float v1, v1

    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v7, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v5, v5, v7

    aget v5, v5, v2

    int-to-float v5, v5

    sget-object v7, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v8, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v7, v7, v8

    aget v3, v7, v3

    int-to-float v3, v3

    sget-object v7, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    iget v8, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object v7, v7, v8

    aget v0, v7, v0

    int-to-float v0, v0

    invoke-direct {v4, v1, v5, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 870
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p2, v4, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 871
    iget-object p2, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    iget v0, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->currentButton:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 872
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 873
    new-instance p2, Landroid/graphics/RectF;

    iget-object v0, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p2, v6, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 874
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p2, v4, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 875
    iget-object p2, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_6
    return v2
.end method

.method setupButton(I)V
    .locals 11

    .line 781
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 782
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->bmps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 783
    new-instance v2, Landroid/graphics/RectF;

    sget-object v3, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v3, v3, p1

    const/4 v5, 0x0

    aget v3, v3, v5

    int-to-float v3, v3

    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v5, v5, p1

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    sget-object v7, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v7, v7, p1

    const/4 v8, 0x2

    aget v7, v7, v8

    int-to-float v7, v7

    sget-object v9, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v9, v9, p1

    const/4 v10, 0x3

    aget v9, v9, v10

    int-to-float v9, v9

    invoke-direct {v2, v3, v5, v7, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 785
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 786
    iget-object v1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->imgs:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 787
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 788
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundaryBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v4, v4, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 789
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 790
    iget-object v1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->boundary:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    if-lt p1, v8, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lx/org/server/R$string;->remap_screenkb_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 794
    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, " "

    const-string v2, "_"

    if-lt p1, v8, :cond_1

    add-int/lit8 v3, p1, -0x2

    sget-object v4, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 795
    sget-object v0, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez p1, :cond_2

    .line 797
    const-string v0, "Joystick"

    :cond_2
    if-ne p1, v6, :cond_3

    .line 799
    const-string v0, "Text input"

    :cond_3
    const/16 v3, 0x8

    if-ne p1, v3, :cond_4

    .line 801
    const-string v0, "Joystick 2"

    :cond_4
    const/16 v3, 0x9

    if-ne p1, v3, :cond_5

    .line 803
    const-string v0, "Joystick 3"

    :cond_5
    const/16 v3, 0xa

    if-lt p1, v3, :cond_6

    const/16 v4, 0xf

    if-gt p1, v4, :cond_6

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {v4}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lx/org/server/R$string;->remap_screenkb_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, -0x4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-lt p1, v3, :cond_7

    add-int/lit8 p1, p1, -0x4

    .line 806
    sget-object v3, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge p1, v3, :cond_7

    .line 807
    sget-object v0, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 808
    :cond_7
    iget-object p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {v2}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lx/org/server/R$string;->screenkb_custom_layout_help:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/org/server/MainActivity;->setText(Ljava/lang/String;)V

    return-void
.end method
