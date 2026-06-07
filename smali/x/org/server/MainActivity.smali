.class public Lx/org/server/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field static final ADVERTISEMENT_POSITION_BOTTOM:I = -0x1

.field static final ADVERTISEMENT_POSITION_CENTER:I = -0x2

.field static final ADVERTISEMENT_POSITION_RIGHT:I = -0x1

.field public static ApplicationLibraryLoaded:Z = false

.field private static downloader:Lx/org/server/DataDownloader; = null

.field public static instance:Lx/org/server/MainActivity; = null

.field static keyboardWithoutTextInputShown:Z = false

.field private static mAudioThread:Lx/org/server/AudioThread;


# instance fields
.field public ObbMountPath:Ljava/lang/String;

.field private TextInputKeyboardList:[[I

.field private _ad:Lx/org/server/Advertisement;

.field private _btn:Landroid/widget/Button;

.field private _inputManager:Landroid/view/inputmethod/InputMethodManager;

.field _isPaused:Z

.field private _layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private _layout2:Landroid/widget/LinearLayout;

.field public _screenKeyboard:Landroid/view/View;

.field private _screenKeyboardHintMessage:Ljava/lang/String;

.field private _tv:Landroid/widget/TextView;

.field _videoLayout:Landroid/widget/FrameLayout;

.field public assetPackPath:Ljava/lang/String;

.field public cloudSave:Lx/org/server/CloudSave;

.field public loadingDialog:Landroid/app/ProgressDialog;

.field mGLView:Lx/org/server/DemoGLSurfaceView;

.field public readExternalStoragePermissionDialogAnswered:Z

.field private sdlInited:Z

.field public textInput:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public writeExternalStoragePermissionDialogAnswered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 112
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 702
    sget v0, Lx/org/server/R$xml;->qwerty:I

    sget v1, Lx/org/server/R$xml;->c64:I

    sget v2, Lx/org/server/R$xml;->amiga:I

    sget v3, Lx/org/server/R$xml;->atari800:I

    const/4 v4, 0x0

    filled-new-array {v4, v0, v1, v2, v3}, [I

    move-result-object v0

    sget v1, Lx/org/server/R$xml;->qwerty_shift:I

    sget v2, Lx/org/server/R$xml;->c64:I

    sget v3, Lx/org/server/R$xml;->amiga_shift:I

    sget v5, Lx/org/server/R$xml;->atari800:I

    filled-new-array {v4, v1, v2, v3, v5}, [I

    move-result-object v1

    sget v2, Lx/org/server/R$xml;->qwerty_alt:I

    sget v3, Lx/org/server/R$xml;->c64:I

    sget v5, Lx/org/server/R$xml;->amiga_alt:I

    sget v6, Lx/org/server/R$xml;->atari800:I

    filled-new-array {v4, v2, v3, v5, v6}, [I

    move-result-object v2

    sget v3, Lx/org/server/R$xml;->qwerty_alt_shift:I

    sget v5, Lx/org/server/R$xml;->c64:I

    sget v6, Lx/org/server/R$xml;->amiga_alt_shift:I

    sget v7, Lx/org/server/R$xml;->atari800:I

    filled-new-array {v4, v3, v5, v6, v7}, [I

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [[I

    aput-object v0, v5, v4

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    iput-object v5, p0, Lx/org/server/MainActivity;->TextInputKeyboardList:[[I

    const/4 v0, 0x0

    .line 1555
    iput-object v0, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    .line 1559
    iput-object v0, p0, Lx/org/server/MainActivity;->_tv:Landroid/widget/TextView;

    .line 1560
    iput-object v0, p0, Lx/org/server/MainActivity;->_btn:Landroid/widget/Button;

    .line 1561
    iput-object v0, p0, Lx/org/server/MainActivity;->_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1562
    iput-object v0, p0, Lx/org/server/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    .line 1563
    iput-object v0, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    .line 1564
    iput-object v0, p0, Lx/org/server/MainActivity;->cloudSave:Lx/org/server/CloudSave;

    .line 1565
    iput-object v0, p0, Lx/org/server/MainActivity;->loadingDialog:Landroid/app/ProgressDialog;

    .line 1567
    iput-object v0, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    .line 1568
    iput-object v0, p0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    .line 1569
    iput-object v0, p0, Lx/org/server/MainActivity;->_screenKeyboardHintMessage:Ljava/lang/String;

    .line 1571
    iput-boolean v4, p0, Lx/org/server/MainActivity;->sdlInited:Z

    .line 1574
    iput-boolean v4, p0, Lx/org/server/MainActivity;->_isPaused:Z

    .line 1575
    iput-object v0, p0, Lx/org/server/MainActivity;->_inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 1577
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lx/org/server/MainActivity;->textInput:Ljava/util/LinkedList;

    .line 1579
    iput-boolean v4, p0, Lx/org/server/MainActivity;->readExternalStoragePermissionDialogAnswered:Z

    .line 1580
    iput-boolean v4, p0, Lx/org/server/MainActivity;->writeExternalStoragePermissionDialogAnswered:Z

    .line 1582
    iput-object v0, p0, Lx/org/server/MainActivity;->ObbMountPath:Ljava/lang/String;

    .line 1583
    iput-object v0, p0, Lx/org/server/MainActivity;->assetPackPath:Ljava/lang/String;

    return-void
.end method

.method public static GetMappedLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1420
    :goto_0
    sget-object v2, Lx/org/server/Globals;->LibraryNamesMap:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1422
    sget-object v2, Lx/org/server/Globals;->LibraryNamesMap:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1423
    sget-object p0, Lx/org/server/Globals;->LibraryNamesMap:[[Ljava/lang/String;

    aget-object p0, p0, v1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static LoadApplicationLibrary(Landroid/content/Context;)V
    .locals 10

    .line 1430
    const-string v0, "libSDL: loaded library "

    sget-object v1, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-static {v1}, Lx/org/server/Settings;->nativeChdir(Ljava/lang/String;)V

    .line 1431
    sget-object v1, Lx/org/server/Globals;->AppMainLibraries:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "SDL"

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 1433
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "libSDL: loading library "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :try_start_0
    invoke-static {v5}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1437
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/../lib/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1447
    :catch_0
    :try_start_1
    invoke-static {v5}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1448
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1456
    :catch_1
    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1457
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1461
    :cond_0
    const-string p0, "libSDL: loaded all libraries"

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 1462
    sput-boolean p0, Lx/org/server/MainActivity;->ApplicationLibraryLoaded:Z

    return-void
.end method

.method static synthetic access$000()Lx/org/server/AudioThread;
    .locals 1

    .line 112
    sget-object v0, Lx/org/server/MainActivity;->mAudioThread:Lx/org/server/AudioThread;

    return-object v0
.end method

.method static synthetic access$002(Lx/org/server/AudioThread;)Lx/org/server/AudioThread;
    .locals 0

    .line 112
    sput-object p0, Lx/org/server/MainActivity;->mAudioThread:Lx/org/server/AudioThread;

    return-object p0
.end method

.method static synthetic access$100(Lx/org/server/MainActivity;)Landroid/widget/Button;
    .locals 0

    .line 112
    iget-object p0, p0, Lx/org/server/MainActivity;->_btn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200()Lx/org/server/DataDownloader;
    .locals 1

    .line 112
    sget-object v0, Lx/org/server/MainActivity;->downloader:Lx/org/server/DataDownloader;

    return-object v0
.end method

.method static synthetic access$202(Lx/org/server/DataDownloader;)Lx/org/server/DataDownloader;
    .locals 0

    .line 112
    sput-object p0, Lx/org/server/MainActivity;->downloader:Lx/org/server/DataDownloader;

    return-object p0
.end method

.method static synthetic access$300(Lx/org/server/MainActivity;)Landroid/widget/TextView;
    .locals 0

    .line 112
    iget-object p0, p0, Lx/org/server/MainActivity;->_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lx/org/server/MainActivity;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lx/org/server/MainActivity;->initSDLInternal()V

    return-void
.end method

.method static synthetic access$500(Lx/org/server/MainActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 112
    iget-object p0, p0, Lx/org/server/MainActivity;->_inputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$600(Lx/org/server/MainActivity;)[[I
    .locals 0

    .line 112
    iget-object p0, p0, Lx/org/server/MainActivity;->TextInputKeyboardList:[[I

    return-object p0
.end method

.method static synthetic access$700(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lx/org/server/MainActivity;->_screenKeyboardHintMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lx/org/server/MainActivity;)Lx/org/server/Advertisement;
    .locals 0

    .line 112
    iget-object p0, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    return-object p0
.end method

.method private initSDLInternal()V
    .locals 12

    .line 438
    iget-boolean v0, p0, Lx/org/server/MainActivity;->sdlInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 440
    :cond_0
    const-string v0, "SDL"

    const-string v1, "libSDL: Initializing video and SDL application"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 442
    iput-boolean v0, p0, Lx/org/server/MainActivity;->sdlInited:Z

    .line 443
    iget-object v1, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v1, v2}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    .line 444
    iget-object v1, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lx/org/server/MainActivity;->_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 445
    iget-object v1, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v1}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v2}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x0

    .line 447
    iput-object v1, p0, Lx/org/server/MainActivity;->_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 448
    iput-object v1, p0, Lx/org/server/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    .line 449
    iput-object v1, p0, Lx/org/server/MainActivity;->_btn:Landroid/widget/Button;

    .line 450
    iput-object v1, p0, Lx/org/server/MainActivity;->_tv:Landroid/widget/TextView;

    .line 451
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lx/org/server/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lx/org/server/MainActivity;->_inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 452
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    .line 453
    invoke-static {}, Lx/org/server/SetLayerType;->get()Lx/org/server/SetLayerType;

    move-result-object v1

    iget-object v2, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lx/org/server/SetLayerType;->setLayerType(Landroid/view/View;)V

    .line 454
    iget-object v1, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lx/org/server/MainActivity;->setContentView(Landroid/view/View;)V

    .line 455
    new-instance v1, Lx/org/server/DemoGLSurfaceView;

    invoke-direct {v1, p0}, Lx/org/server/DemoGLSurfaceView;-><init>(Lx/org/server/MainActivity;)V

    iput-object v1, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    .line 456
    invoke-static {}, Lx/org/server/SetLayerType;->get()Lx/org/server/SetLayerType;

    move-result-object v1

    iget-object v2, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {v1, v2}, Lx/org/server/SetLayerType;->setLayerType(Landroid/view/View;)V

    .line 458
    invoke-virtual {p0}, Lx/org/server/MainActivity;->isRunningOnOUYA()Z

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    sget-boolean v1, Lx/org/server/Globals;->TvBorders:Z

    if-eqz v1, :cond_2

    .line 460
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 471
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lx/org/server/R$dimen;->screen_border_horizontal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-direct {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x9

    .line 472
    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xa

    .line 473
    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 474
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 475
    sget v8, Lx/org/server/R$id;->left:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 476
    sget v8, Lx/org/server/R$drawable;->tv_border_left:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 478
    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lx/org/server/R$dimen;->screen_border_horizontal:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-direct {v5, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xb

    .line 481
    invoke-virtual {v5, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 482
    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 483
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 484
    sget v9, Lx/org/server/R$id;->right:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 485
    sget v9, Lx/org/server/R$drawable;->tv_border_left:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/high16 v9, -0x40800000    # -1.0f

    .line 487
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 488
    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lx/org/server/R$dimen;->screen_border_vertical:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-direct {v5, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 491
    invoke-virtual {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 492
    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 493
    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 494
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 495
    sget v10, Lx/org/server/R$id;->top:I

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 496
    sget v10, Lx/org/server/R$drawable;->tv_border_top:I

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 497
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 498
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lx/org/server/R$dimen;->screen_border_vertical:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    invoke-direct {v5, v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xc

    .line 501
    invoke-virtual {v5, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 502
    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-virtual {v5, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 503
    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-virtual {v5, v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 504
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 505
    sget v11, Lx/org/server/R$id;->bottom:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setId(I)V

    .line 506
    sget v11, Lx/org/server/R$drawable;->tv_border_top:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 508
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 509
    invoke-virtual {v1, v10, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 512
    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v7

    invoke-virtual {v5, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 513
    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v7

    invoke-virtual {v5, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v7, 0x3

    .line 514
    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v6, 0x2

    .line 515
    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 516
    iget-object v6, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {v6, v5}, Lx/org/server/DemoGLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object v5, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 520
    iget-object v5, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 524
    :cond_2
    iget-object v1, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    :goto_0
    iget-object v1, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {v1, v0}, Lx/org/server/DemoGLSurfaceView;->captureMouse(Z)V

    .line 527
    sget-boolean v0, Lx/org/server/Globals;->HideSystemMousePointer:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 529
    iget-object v0, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-static {p0, v3}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/MainActivity$$ExternalSyntheticApiModelOutline2;->m(Lx/org/server/DemoGLSurfaceView;Landroid/view/PointerIcon;)V

    .line 533
    :cond_3
    iget-object v0, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v1}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 536
    iget-object v0, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    :cond_4
    iget-object v0, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    .line 541
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 542
    iget-object v1, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 543
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2, v3, v0}, Lx/org/server/DemoGLSurfaceView;->nativeScreenVisibleRect(IIII)V

    .line 544
    iget-object v0, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lx/org/server/MainActivity$2;

    invoke-direct {v1, p0}, Lx/org/server/MainActivity$2;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public LoadLibraries()V
    .locals 20

    .line 1205
    const-string v0, "libSDL: loaded lib "

    const-string v1, "/"

    const-string v2, "SDL"

    :try_start_0
    sget-boolean v3, Lx/org/server/Globals;->NeedGles3:Z

    if-eqz v3, :cond_0

    .line 1207
    const-string v3, "GLESv3"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1208
    const-string v3, "libSDL: loaded GLESv3 lib"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1210
    :cond_0
    sget-boolean v3, Lx/org/server/Globals;->NeedGles2:Z

    if-eqz v3, :cond_1

    .line 1212
    const-string v3, "GLESv2"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1213
    const-string v3, "libSDL: loaded GLESv2 lib"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1218
    :catch_0
    const-string v3, "libSDL: Cannot load GLESv3 or GLESv2 lib"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_1
    :goto_0
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 1222
    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1224
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 1228
    :cond_2
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v4, 0x0

    .line 1233
    :try_start_1
    sget-object v5, Lx/org/server/Globals;->AppLibraries:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 1235
    invoke-static {v8}, Lx/org/server/MainActivity;->GetMappedLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_3

    .line 1238
    :try_start_2
    invoke-static {v8}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1239
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/../lib/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1242
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1249
    :catch_1
    :try_start_3
    invoke-static {v8}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1250
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1253
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1258
    :catch_2
    :try_start_4
    invoke-static {v8}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1259
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from System.loadLibrary(l)"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    .line 1266
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "libSDL: Error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_3
    :try_start_5
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-virtual/range {p0 .. p0}, Lx/org/server/MainActivity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    const/4 v5, 0x0

    .line 1276
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    array-length v7, v3

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_4

    aget-object v9, v3, v8

    .line 1279
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "binaries-"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".zip"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1281
    :cond_4
    const-string v7, "binaries.zip"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    new-array v8, v4, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 1284
    array-length v8, v6

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_15

    aget-object v10, v6, v9

    .line 1292
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lx/org/server/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1293
    :try_start_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "libSDL: Found binaries at assets/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_5
    const/4 v11, 0x0

    .line 1297
    :catch_6
    :goto_6
    :try_start_8
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1299
    array-length v12, v3

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_6

    aget-object v14, v3, v13
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    if-nez v11, :cond_5

    if-eqz v5, :cond_5

    .line 1306
    :try_start_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lib/"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "libSDL: Found binaries at lib/"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_6
    if-eqz v11, :cond_14

    .line 1317
    :try_start_a
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v11}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1319
    invoke-virtual/range {p0 .. p0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    .line 1322
    :try_start_b
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    :catch_8
    const/16 v11, 0x4000

    .line 1326
    :try_start_c
    new-array v12, v11, [B

    .line 1330
    :goto_8
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13

    if-nez v13, :cond_7

    .line 1335
    const-string v0, "Extracting binaries finished"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1338
    :cond_7
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    const-string v15, "Security exception: "

    if-eqz v14, :cond_b

    .line 1340
    :try_start_d
    new-instance v14, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1346
    :cond_8
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1347
    :cond_9
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    :cond_a
    const/4 v4, 0x0

    const/16 v11, 0x4000

    goto :goto_8

    .line 1352
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 1355
    :try_start_e
    new-instance v11, Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    move-object/from16 v16, v3

    const/4 v3, 0x0

    :try_start_f
    invoke-virtual {v4, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    move-object/from16 v17, v5

    :try_start_10
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1361
    :cond_c
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1362
    :cond_d
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_9

    :catch_9
    move-object/from16 v16, v3

    :catch_a
    move-object/from16 v17, v5

    .line 1368
    :catch_b
    :cond_e
    :goto_9
    :try_start_11
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/util/zip/CRC32;

    invoke-direct {v11}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v3, v5, v11}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    const/16 v11, 0x4000

    :goto_a
    const/4 v5, 0x0

    .line 1369
    :try_start_12
    invoke-virtual {v3, v12, v5, v11}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    move-result v14

    if-lez v14, :cond_f

    goto :goto_a

    .line 1370
    :cond_f
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 1371
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v18

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v13

    cmp-long v3, v18, v13

    if-nez v3, :cond_10

    .line 1377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' exists and passed CRC check - not overwriting it"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move-object/from16 v3, v16

    move-object/from16 v5, v17

    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1373
    :cond_10
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1375
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    :catch_c
    const/16 v11, 0x4000

    .line 1381
    :catch_d
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving to file \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1388
    :cond_11
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {v0, v12}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    :goto_c
    if-ltz v5, :cond_13

    if-lez v5, :cond_12

    const/4 v13, 0x0

    .line 1393
    :try_start_14
    invoke-virtual {v3, v12, v13, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_d

    :cond_12
    const/4 v13, 0x0

    .line 1394
    :goto_d
    invoke-virtual {v0, v12}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    goto :goto_c

    :cond_13
    const/4 v13, 0x0

    .line 1397
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1398
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    const/16 v3, 0x1ed

    .line 1399
    invoke-static {v4, v3}, Lx/org/server/Settings;->nativeChmod(Ljava/lang/String;I)I

    goto/16 :goto_b

    :cond_14
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    const/4 v13, 0x0

    .line 1315
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "libSDL: Extracting binaries failed"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11

    :catch_e
    move-object/from16 v16, v3

    :catch_f
    move-object/from16 v17, v5

    :catch_10
    const/4 v13, 0x0

    :catch_11
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_15
    :goto_e
    move-object/from16 v17, v5

    if-eqz v17, :cond_16

    .line 1413
    :try_start_15
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    :catch_12
    :cond_16
    :goto_f
    return-void
.end method

.method public downloadFinishedInitSDL()V
    .locals 2

    .line 389
    invoke-virtual {p0}, Lx/org/server/MainActivity;->setScreenOrientation()V

    .line 390
    invoke-virtual {p0}, Lx/org/server/MainActivity;->updateScreenOrientation()V

    .line 391
    iget-object v0, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    .line 392
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lx/org/server/MainActivity$1;

    invoke-direct {v1, p0}, Lx/org/server/MainActivity$1;-><init>(Lx/org/server/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 433
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getAdvertisementParams([I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1131
    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1132
    :cond_0
    iget-object v1, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v1}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1134
    iget-object v1, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v1}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    aput v1, p1, v0

    .line 1135
    iget-object v0, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1136
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aput v1, p1, v2

    const/4 v1, 0x2

    .line 1137
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v0, p1, v1

    .line 1138
    iget-object v0, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 1139
    iget-object v0, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x4

    aput v0, p1, v1

    :cond_2
    return-void
.end method

.method public getApplicationVersion()I
    .locals 4

    const/4 v0, 0x0

    .line 1468
    :try_start_0
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1469
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1471
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "libSDL: Cannot get the version of our own package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDL"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getVideoLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1553
    iget-object v0, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hideScreenKeyboard()V
    .locals 7

    .line 1014
    sget-boolean v0, Lx/org/server/MainActivity;->keyboardWithoutTextInputShown:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1016
    sget v0, Lx/org/server/Globals;->TextInputKeyboard:I

    invoke-virtual {p0, v0}, Lx/org/server/MainActivity;->showScreenKeyboardWithoutTextInputField(I)V

    .line 1017
    iget-object v0, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {v0, v1}, Lx/org/server/DemoGLSurfaceView;->captureMouse(Z)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    if-eqz v0, :cond_3

    instance-of v0, v0, Landroid/widget/EditText;

    if-nez v0, :cond_1

    goto :goto_1

    .line 1023
    :cond_1
    iget-object v0, p0, Lx/org/server/MainActivity;->textInput:Ljava/util/LinkedList;

    monitor-enter v0

    .line 1025
    :try_start_0
    iget-object v2, p0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1026
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1028
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v5, v6}, Lx/org/server/DemoRenderer;->nativeTextInput(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1030
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    invoke-static {}, Lx/org/server/DemoRenderer;->nativeTextInputFinished()V

    .line 1032
    iget-object v0, p0, Lx/org/server/MainActivity;->_inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1033
    iget-object v0, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1034
    iput-object v0, p0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    .line 1035
    iget-object v0, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {v0, v1}, Lx/org/server/DemoGLSurfaceView;->captureMouse(Z)V

    .line 1036
    iget-object v0, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    .line 1038
    iget-object v0, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lx/org/server/MainActivity$6;

    invoke-direct {v1, p0}, Lx/org/server/MainActivity$6;-><init>(Lx/org/server/MainActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v1

    .line 1030
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public isCurrentOrientationHorizontal()Z
    .locals 4

    .line 1489
    sget-boolean v0, Lx/org/server/Globals;->AutoDetectOrientation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1492
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1496
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lt v3, v0, :cond_0

    return v1

    :cond_0
    return v2

    .line 1499
    :cond_1
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1500
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-lt v3, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public isPaused()Z
    .locals 1

    .line 661
    iget-boolean v0, p0, Lx/org/server/MainActivity;->_isPaused:Z

    return v0
.end method

.method public isRunningOnOUYA()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1479
    :try_start_0
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "tv.ouya"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    .line 1483
    const-string v2, "uimode"

    invoke-virtual {p0, v2}, Lx/org/server/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 1484
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    sget-boolean v2, Lx/org/server/Globals;->OuyaEmulation:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isScreenKeyboardShown()Z
    .locals 1

    .line 1049
    iget-object v0, p0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 697
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 698
    iget-object v0, p0, Lx/org/server/MainActivity;->cloudSave:Lx/org/server/CloudSave;

    invoke-virtual {v0, p1, p2, p3}, Lx/org/server/CloudSave;->onActivityResult(IILandroid/content/Intent;)V

    .line 699
    invoke-static {p0, p1, p2, p3}, Lx/org/server/SettingsMenuMisc$StorageAccessConfig;->onActivityResult(Lx/org/server/MainActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1161
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1162
    invoke-virtual {p0}, Lx/org/server/MainActivity;->updateScreenOrientation()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    .line 117
    const-string v0, "logo.png"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    sput-object v1, Lx/org/server/MainActivity;->instance:Lx/org/server/MainActivity;

    const/4 v3, 0x1

    .line 121
    invoke-virtual {v1, v3}, Lx/org/server/MainActivity;->requestWindowFeature(I)Z

    .line 122
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 124
    sget-boolean v4, Lx/org/server/Globals;->InhibitSuspend:Z

    if-eqz v4, :cond_0

    .line 125
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 129
    :cond_0
    invoke-static {v1}, Lx/org/server/Settings;->LoadConfig(Lx/org/server/MainActivity;)Z

    const/4 v4, 0x0

    .line 130
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v4, v5}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    .line 132
    const-string v4, "libSDL: Creating startup screen"

    const-string v5, "SDL"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    .line 135
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v4, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lx/org/server/MainActivity;->_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 136
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lx/org/server/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    .line 139
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setId(I)V

    .line 140
    iget-object v4, v1, Lx/org/server/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lx/org/server/MainActivity;->loadingDialog:Landroid/app/ProgressDialog;

    .line 142
    sget v6, Lx/org/server/R$string;->accessing_network:I

    invoke-virtual {v1, v6}, Lx/org/server/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 146
    sget v6, Lx/org/server/Globals;->StartupMenuButtonTimeout:I

    if-lez v6, :cond_1

    .line 148
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lx/org/server/MainActivity;->_btn:Landroid/widget/Button;

    .line 149
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    iget-object v6, v1, Lx/org/server/MainActivity;->_btn:Landroid/widget/Button;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v6, v1, Lx/org/server/MainActivity;->_btn:Landroid/widget/Button;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lx/org/server/R$string;->device_change_cfg:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v6, v1, Lx/org/server/MainActivity;->_btn:Landroid/widget/Button;

    new-instance v9, Lx/org/server/MainActivity$1onClickListener;

    invoke-direct {v9, v1, v1, v4}, Lx/org/server/MainActivity$1onClickListener;-><init>(Lx/org/server/MainActivity;Lx/org/server/MainActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v6, v1, Lx/org/server/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    iget-object v9, v1, Lx/org/server/MainActivity;->_btn:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    :cond_1
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 173
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    :try_start_0
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    sget v0, Lx/org/server/R$drawable;->publisherlogo:I

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    :goto_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 183
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v0, v1, Lx/org/server/MainActivity;->_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, v1, Lx/org/server/MainActivity;->_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v7, v1, Lx/org/server/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 188
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 189
    iget-object v0, v1, Lx/org/server/MainActivity;->_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 191
    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v0

    iget-object v6, v1, Lx/org/server/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getId()I

    move-result v6

    filled-new-array {v0, v6}, [I

    move-result-object v14

    const/4 v0, 0x2

    .line 192
    new-array v15, v0, [F

    fill-array-data v15, :array_0

    const/4 v13, 0x4

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    .line 193
    invoke-virtual/range {v9 .. v16}, Landroidx/constraintlayout/widget/ConstraintSet;->createVerticalChain(IIII[I[FI)V

    .line 197
    iget-object v0, v1, Lx/org/server/MainActivity;->_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 199
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    .line 200
    iget-object v6, v1, Lx/org/server/MainActivity;->_layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 202
    new-instance v0, Lx/org/server/Advertisement;

    invoke-direct {v0, v1}, Lx/org/server/Advertisement;-><init>(Lx/org/server/MainActivity;)V

    iput-object v0, v1, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    .line 203
    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, v1, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v6}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 206
    iget-object v0, v1, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x55

    const/4 v9, -0x2

    invoke-direct {v6, v9, v9, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    :cond_2
    iget-object v0, v1, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lx/org/server/MainActivity;->setContentView(Landroid/view/View;)V

    .line 210
    iget-object v0, v1, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 211
    iget-object v0, v1, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 212
    iget-object v0, v1, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 213
    iget-object v0, v1, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v0, v3}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    .line 220
    :try_start_1
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 221
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 223
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v3, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_4

    aget-object v7, v0, v6

    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package apk: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v9, "assetpack.apk"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 228
    iput-object v7, v1, Lx/org/server/MainActivity;->assetPackPath:Ljava/lang/String;

    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found asset pack: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lx/org/server/MainActivity;->assetPackPath:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Asset pack exception: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lx/org/server/MainActivity$1Callback;

    invoke-direct {v3, v1, v1, v4}, Lx/org/server/MainActivity$1Callback;-><init>(Lx/org/server/MainActivity;Lx/org/server/MainActivity;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 301
    sget-boolean v0, Lx/org/server/Globals;->CreateService:Z

    if-eqz v0, :cond_5

    .line 303
    const-string v0, "Starting dummy service - displaying notification"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lx/org/server/DummyService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    invoke-virtual {v1, v0}, Lx/org/server/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 307
    :cond_5
    new-instance v0, Lx/org/server/CloudSave;

    invoke-direct {v0, v1}, Lx/org/server/CloudSave;-><init>(Lx/org/server/MainActivity;)V

    iput-object v0, v1, Lx/org/server/MainActivity;->cloudSave:Lx/org/server/CloudSave;

    .line 311
    :try_start_2
    sget-boolean v0, Lx/org/server/Globals;->AccessSdCard:Z

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_7

    .line 313
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1080

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD card permission 1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " perms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 317
    const-string v0, "SD card permission 4 (WRITE): REQUEST"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-static {v1, v2}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Lx/org/server/MainActivity;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 319
    iget-boolean v0, v1, Lx/org/server/MainActivity;->writeExternalStoragePermissionDialogAnswered:Z

    if-nez v0, :cond_6

    .line 321
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Lx/org/server/MainActivity;[Ljava/lang/String;I)V

    .line 325
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_7

    invoke-static {}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m()Z

    move-result v0

    if-nez v0, :cond_7

    .line 327
    const-string v0, "SD card permission 4 (MANAGE): REQUEST"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 329
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v1}, Lx/org/server/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 333
    invoke-virtual {v1, v0}, Lx/org/server/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 335
    :catch_2
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1, v0}, Lx/org/server/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_7
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method protected onDestroy()V
    .locals 3

    .line 667
    sget-object v0, Lx/org/server/MainActivity;->downloader:Lx/org/server/DataDownloader;

    if-eqz v0, :cond_0

    .line 669
    monitor-enter v0

    .line 671
    :try_start_0
    sget-object v1, Lx/org/server/MainActivity;->downloader:Lx/org/server/DataDownloader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lx/org/server/DataDownloader;->setStatusField(Landroid/widget/TextView;)V

    .line 672
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 674
    :cond_0
    :goto_0
    iget-object v0, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {v0}, Lx/org/server/DemoGLSurfaceView;->exitApp()V

    .line 676
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-wide/16 v0, 0x7d0

    .line 678
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 680
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNewIntent(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1198
    invoke-virtual {p0, p1}, Lx/org/server/MainActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 600
    sget-object v0, Lx/org/server/MainActivity;->downloader:Lx/org/server/DataDownloader;

    if-eqz v0, :cond_0

    .line 602
    monitor-enter v0

    .line 604
    :try_start_0
    sget-object v1, Lx/org/server/MainActivity;->downloader:Lx/org/server/DataDownloader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lx/org/server/DataDownloader;->setStatusField(Landroid/widget/TextView;)V

    .line 605
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 607
    iput-boolean v0, p0, Lx/org/server/MainActivity;->_isPaused:Z

    .line 608
    iget-object v0, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    if-eqz v0, :cond_1

    .line 609
    invoke-virtual {v0}, Lx/org/server/DemoGLSurfaceView;->onPause()V

    .line 612
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1524
    array-length p1, p2

    const-string v0, "SDL"

    if-eqz p1, :cond_7

    array-length p1, p3

    if-nez p1, :cond_0

    goto :goto_3

    .line 1529
    :cond_0
    const-string p1, "android.permission.RECORD_AUDIO"

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "GRANTED"

    const-string v3, "DENIED"

    if-eqz p1, :cond_2

    .line 1531
    aget p1, p3, v1

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    const-string v4, "libSDL: Record audio permission: "

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_2
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    aget-object v4, p2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 1535
    aget p1, p3, v1

    if-nez p1, :cond_3

    move-object p1, v2

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    const-string v5, "libSDL: Read external storage permission: "

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iput-boolean v4, p0, Lx/org/server/MainActivity;->readExternalStoragePermissionDialogAnswered:Z

    .line 1538
    :cond_4
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1540
    aget p1, p3, v1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v3

    :goto_2
    const-string p1, "libSDL: Write external storage permission: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iput-boolean v4, p0, Lx/org/server/MainActivity;->writeExternalStoragePermissionDialogAnswered:Z

    :cond_6
    return-void

    .line 1526
    :cond_7
    :goto_3
    const-string p1, "libSDL: Permission request dialog was aborted"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 617
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 618
    iget-object v0, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/DimSystemStatusBar;->dim(Landroid/view/View;Landroid/view/Window;)V

    .line 622
    iget-object v0, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {v0}, Lx/org/server/DemoGLSurfaceView;->onResume()V

    goto :goto_0

    .line 625
    :cond_0
    sget-object v0, Lx/org/server/MainActivity;->downloader:Lx/org/server/DataDownloader;

    if-eqz v0, :cond_2

    .line 627
    monitor-enter v0

    .line 629
    :try_start_0
    sget-object v1, Lx/org/server/MainActivity;->downloader:Lx/org/server/DataDownloader;

    iget-object v2, p0, Lx/org/server/MainActivity;->_tv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lx/org/server/DataDownloader;->setStatusField(Landroid/widget/TextView;)V

    .line 630
    sget-object v1, Lx/org/server/MainActivity;->downloader:Lx/org/server/DataDownloader;

    iget-boolean v1, v1, Lx/org/server/DataDownloader;->DownloadComplete:Z

    if-eqz v1, :cond_1

    .line 632
    invoke-virtual {p0}, Lx/org/server/MainActivity;->downloadFinishedInitSDL()V

    .line 634
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 638
    iput-boolean v0, p0, Lx/org/server/MainActivity;->_isPaused:Z

    .line 640
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nvidia.intent.action.ENABLE_STYLUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    const-string v1, "package"

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v0}, Lx/org/server/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 685
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 686
    iget-object v0, p0, Lx/org/server/MainActivity;->cloudSave:Lx/org/server/CloudSave;

    invoke-virtual {v0}, Lx/org/server/CloudSave;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 691
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 692
    iget-object v0, p0, Lx/org/server/MainActivity;->cloudSave:Lx/org/server/CloudSave;

    invoke-virtual {v0}, Lx/org/server/CloudSave;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 647
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: onWindowFocusChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " - sending onPause/onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 651
    invoke-virtual {p0}, Lx/org/server/MainActivity;->onPause()V

    return-void

    .line 655
    :cond_0
    invoke-virtual {p0}, Lx/org/server/MainActivity;->onResume()V

    return-void
.end method

.method public requestNewAdvertisement()V
    .locals 1

    .line 1144
    iget-object v0, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1153
    new-instance v0, Lx/org/server/MainActivity$5Callback;

    invoke-direct {v0, p0}, Lx/org/server/MainActivity$5Callback;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {p0, v0}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setAdvertisementPosition(II)V
    .locals 4

    .line 1076
    iget-object v0, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1078
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 1079
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1080
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1081
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 1083
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v3, v3, 0x5

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 1085
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 1088
    :cond_1
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v3, v3, 0x3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1089
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_0
    if-ne p2, v2, :cond_2

    .line 1092
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 p1, p1, 0x50

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    .line 1094
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 1097
    :cond_3
    iget p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 p1, p1, 0x30

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1098
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1107
    :goto_1
    new-instance p1, Lx/org/server/MainActivity$3Callback;

    invoke-direct {p1, p0, v0}, Lx/org/server/MainActivity$3Callback;-><init>(Lx/org/server/MainActivity;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p0, p1}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public setAdvertisementVisible(I)V
    .locals 1

    .line 1112
    iget-object v0, p0, Lx/org/server/MainActivity;->_ad:Lx/org/server/Advertisement;

    invoke-virtual {v0}, Lx/org/server/Advertisement;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1124
    new-instance v0, Lx/org/server/MainActivity$4Callback;

    invoke-direct {v0, p0, p1}, Lx/org/server/MainActivity$4Callback;-><init>(Lx/org/server/MainActivity;I)V

    invoke-virtual {p0, v0}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setScreenKeyboardHintMessage(Ljava/lang/String;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lx/org/server/MainActivity;->_screenKeyboardHintMessage:Ljava/lang/String;

    .line 1056
    new-instance p1, Lx/org/server/MainActivity$7;

    invoke-direct {p1, p0}, Lx/org/server/MainActivity$7;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {p0, p1}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setScreenOrientation()V
    .locals 3

    .line 1505
    sget-boolean v0, Lx/org/server/Globals;->AutoDetectOrientation:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "libsdl.org.ACTIVITY_AUTODETECT_SCREEN_ORIENTATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1506
    sput-boolean v0, Lx/org/server/Globals;->AutoDetectOrientation:Z

    .line 1507
    :cond_0
    sget-boolean v0, Lx/org/server/Globals;->AutoDetectOrientation:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    .line 1510
    invoke-virtual {p0, v0}, Lx/org/server/MainActivity;->setRequestedOrientation(I)V

    return-void

    .line 1516
    :cond_1
    sget-boolean v0, Lx/org/server/Globals;->HorizontalOrientation:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    :goto_0
    invoke-virtual {p0, v0}, Lx/org/server/MainActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setSystemMousePointerVisible(I)V
    .locals 2

    .line 1547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 1549
    iget-object v0, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    :goto_0
    invoke-static {p0, p1}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-static {v0, p1}, Lx/org/server/MainActivity$$ExternalSyntheticApiModelOutline2;->m(Lx/org/server/DemoGLSurfaceView;Landroid/view/PointerIcon;)V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .line 1187
    new-instance v0, Lx/org/server/MainActivity$6Callback;

    invoke-direct {v0, p0}, Lx/org/server/MainActivity$6Callback;-><init>(Lx/org/server/MainActivity;)V

    .line 1188
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lx/org/server/MainActivity$6Callback;->text:Landroid/text/SpannedString;

    .line 1189
    iput-object p0, v0, Lx/org/server/MainActivity$6Callback;->Parent:Lx/org/server/MainActivity;

    .line 1190
    invoke-virtual {p0, v0}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUpStatusLabel()V
    .locals 7

    .line 347
    iget-object v0, p0, Lx/org/server/MainActivity;->_btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lx/org/server/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lx/org/server/MainActivity;->_btn:Landroid/widget/Button;

    .line 352
    :cond_0
    iget-object v0, p0, Lx/org/server/MainActivity;->_tv:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 357
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 358
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lx/org/server/MainActivity;->_tv:Landroid/widget/TextView;

    const/4 v3, 0x2

    .line 359
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 360
    iget-object v2, p0, Lx/org/server/MainActivity;->_tv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    .line 361
    iget-object v2, p0, Lx/org/server/MainActivity;->_tv:Landroid/widget/TextView;

    sget v3, Lx/org/server/R$string;->init:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 363
    iget-object v2, p0, Lx/org/server/MainActivity;->_tv:Landroid/widget/TextView;

    int-to-double v3, v1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double v3, v3, v5

    double-to-int v1, v3

    int-to-double v3, v0

    mul-double v3, v3, v5

    double-to-int v0, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 364
    iget-object v0, p0, Lx/org/server/MainActivity;->_layout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lx/org/server/MainActivity;->_tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public showScreenKeyboard(Ljava/lang/String;)V
    .locals 4

    .line 909
    sget-boolean v0, Lx/org/server/Globals;->CompatibilityHacksTextInputEmulatesHwKeyboard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 911
    sget p1, Lx/org/server/Globals;->TextInputKeyboard:I

    invoke-virtual {p0, p1}, Lx/org/server/MainActivity;->showScreenKeyboardWithoutTextInputField(I)V

    .line 912
    iget-object p1, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {p1, v1}, Lx/org/server/DemoGLSurfaceView;->captureMouse(Z)V

    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    if-eqz v0, :cond_1

    return-void

    .line 967
    :cond_1
    new-instance v0, Landroid/widget/EditText;

    const/4 v2, 0x0

    const v3, 0x1030218

    .line 968
    invoke-direct {v0, p0, v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 969
    iget-object v2, p0, Lx/org/server/MainActivity;->_screenKeyboardHintMessage:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 970
    :cond_2
    sget v2, Lx/org/server/R$string;->text_edit_click_here:I

    invoke-virtual {p0, v2}, Lx/org/server/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 971
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 972
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 973
    new-instance p1, Lx/org/server/MainActivity$1simpleKeyListener;

    invoke-direct {p1, p0, p0}, Lx/org/server/MainActivity$1simpleKeyListener;-><init>(Lx/org/server/MainActivity;Lx/org/server/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 974
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1060003

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 975
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x106000f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 976
    invoke-virtual {p0}, Lx/org/server/MainActivity;->isRunningOnOUYA()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lx/org/server/Globals;->TvBorders:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x64

    .line 977
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    const/16 p1, 0x14

    .line 979
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 980
    :goto_1
    iput-object v0, p0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    .line 981
    iget-object p1, p0, Lx/org/server/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 983
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 984
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 985
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 986
    iget-object p1, p0, Lx/org/server/MainActivity;->mGLView:Lx/org/server/DemoGLSurfaceView;

    invoke-virtual {p1, v1}, Lx/org/server/DemoGLSurfaceView;->captureMouse(Z)V

    .line 991
    new-instance p1, Lx/org/server/MainActivity$5;

    invoke-direct {p1, p0, v0}, Lx/org/server/MainActivity$5;-><init>(Lx/org/server/MainActivity;Landroid/widget/EditText;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showScreenKeyboardWithoutTextInputField(I)V
    .locals 1

    .line 712
    sget-boolean v0, Lx/org/server/MainActivity;->keyboardWithoutTextInputShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 714
    sput-boolean v0, Lx/org/server/MainActivity;->keyboardWithoutTextInputShown:Z

    .line 715
    new-instance v0, Lx/org/server/MainActivity$3;

    invoke-direct {v0, p0, p1}, Lx/org/server/MainActivity$3;-><init>(Lx/org/server/MainActivity;I)V

    invoke-virtual {p0, v0}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 886
    sput-boolean p1, Lx/org/server/MainActivity;->keyboardWithoutTextInputShown:Z

    .line 887
    new-instance p1, Lx/org/server/MainActivity$4;

    invoke-direct {p1, p0}, Lx/org/server/MainActivity$4;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {p0, p1}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 904
    :goto_0
    sget-boolean p1, Lx/org/server/MainActivity;->keyboardWithoutTextInputShown:Z

    invoke-static {p1}, Lx/org/server/DemoGLSurfaceView;->nativeScreenKeyboardShown(I)V

    return-void
.end method

.method public startDownloader()V
    .locals 2

    .line 370
    const-string v0, "SDL"

    const-string v1, "libSDL: Starting data downloader"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v0, Lx/org/server/MainActivity$2Callback;

    invoke-direct {v0, p0}, Lx/org/server/MainActivity$2Callback;-><init>(Lx/org/server/MainActivity;)V

    .line 383
    iput-object p0, v0, Lx/org/server/MainActivity$2Callback;->Parent:Lx/org/server/MainActivity;

    .line 384
    invoke-virtual {p0, v0}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateScreenOrientation()V
    .locals 3

    .line 1169
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1170
    sget-object v1, Lx/org/server/AccelerometerReader;->gyro:Lx/org/server/AccelerometerReader$GyroscopeListener;

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lx/org/server/AccelerometerReader$GyroscopeListener;->invertedOrientation:Z

    return-void
.end method
