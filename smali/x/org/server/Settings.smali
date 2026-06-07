.class public Lx/org/server/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/Settings$SdcardAppPath;
    }
.end annotation


# static fields
.field static final SDL_ANDROID_CONFIG_VIDEO_DEPTH_BPP:I = 0x0

.field static final SETTINGS_FILE_VERSION:I = 0x5

.field static SettingsFileName:Ljava/lang/String; = "libsdl-settings.cfg"

.field static convertButtonSizeFromOldSdlVersion:Z = false

.field static settingsAppVersion:I = 0x0

.field static settingsChanged:Z = false

.field static settingsLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Apply(Lx/org/server/MainActivity;)V
    .locals 12

    .line 604
    invoke-static {p0}, Lx/org/server/Settings;->setEnvVars(Lx/org/server/MainActivity;)V

    .line 605
    sget v0, Lx/org/server/Globals;->VideoDepthBpp:I

    sget-boolean v1, Lx/org/server/Globals;->NeedGles2:Z

    sget-boolean v2, Lx/org/server/Globals;->NeedGles3:Z

    invoke-static {v0, v1, v2}, Lx/org/server/Settings;->nativeSetVideoDepth(III)V

    .line 606
    sget-boolean v0, Lx/org/server/Globals;->VideoLinearFilter:Z

    if-eqz v0, :cond_0

    .line 607
    invoke-static {}, Lx/org/server/Settings;->nativeSetVideoLinearFilter()V

    .line 608
    :cond_0
    sget-boolean v0, Lx/org/server/Globals;->CompatibilityHacksVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 610
    sput-boolean v1, Lx/org/server/Globals;->MultiThreadedVideo:Z

    .line 611
    sput-boolean v1, Lx/org/server/Globals;->SwVideoMode:Z

    .line 612
    invoke-static {}, Lx/org/server/Settings;->nativeSetCompatibilityHacks()V

    .line 614
    :cond_1
    sget-boolean v0, Lx/org/server/Globals;->SwVideoMode:Z

    if-eqz v0, :cond_2

    .line 615
    invoke-static {}, Lx/org/server/Settings;->nativeSetVideoForceSoftwareMode()V

    .line 616
    :cond_2
    sget-boolean v0, Lx/org/server/Globals;->SwVideoMode:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lx/org/server/Globals;->MultiThreadedVideo:Z

    if-eqz v0, :cond_3

    .line 617
    invoke-static {}, Lx/org/server/Settings;->nativeSetVideoMultithreaded()V

    .line 618
    :cond_3
    invoke-static {}, Lx/org/server/Settings;->applyMouseEmulationOptions()V

    .line 619
    sget-boolean v0, Lx/org/server/Globals;->AppUsesThirdJoystick:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    sget-boolean v0, Lx/org/server/Globals;->AppUsesSecondJoystick:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    sget-boolean v0, Lx/org/server/Globals;->AppUsesJoystick:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lx/org/server/Settings;->nativeSetJoystickUsed(I)V

    .line 620
    sget-boolean v0, Lx/org/server/Globals;->AppUsesAccelerometer:Z

    if-eqz v0, :cond_7

    .line 621
    invoke-static {}, Lx/org/server/Settings;->nativeSetAccelerometerUsed()V

    .line 622
    :cond_7
    sget-boolean v0, Lx/org/server/Globals;->AppUsesMultitouch:Z

    if-eqz v0, :cond_8

    .line 623
    invoke-static {}, Lx/org/server/Settings;->nativeSetMultitouchUsed()V

    .line 624
    :cond_8
    sget v0, Lx/org/server/Globals;->AccelerometerSensitivity:I

    sget v5, Lx/org/server/Globals;->AccelerometerCenterPos:I

    invoke-static {v0, v5}, Lx/org/server/Settings;->nativeSetAccelerometerSettings(II)V

    .line 625
    sget-boolean v0, Lx/org/server/Globals;->UseTouchscreenKeyboard:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 628
    :goto_1
    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    array-length v6, v6

    if-ge v0, v6, :cond_a

    .line 629
    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_9

    const/4 v5, 0x1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 631
    :cond_a
    invoke-virtual {p0}, Lx/org/server/MainActivity;->isRunningOnOUYA()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v5, 0x0

    :cond_b
    if-eqz v5, :cond_f

    .line 635
    invoke-static {}, Lx/org/server/Settings;->nativeSetTouchscreenKeyboardUsed()V

    .line 636
    sget v6, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    sget v7, Lx/org/server/Globals;->TouchscreenKeyboardDrawSize:I

    sget v8, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    sget v9, Lx/org/server/Globals;->TouchscreenKeyboardTransparency:I

    .line 640
    sget-boolean v10, Lx/org/server/Globals;->FloatingScreenJoystick:Z

    sget v11, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysAmount:I

    .line 636
    invoke-static/range {v6 .. v11}, Lx/org/server/Settings;->nativeSetupScreenKeyboard(IIIIII)V

    .line 642
    invoke-static {p0}, Lx/org/server/DemoGLSurfaceView;->SetupTouchscreenKeyboardGraphics(Landroid/app/Activity;)V

    const/4 p0, 0x0

    .line 643
    :goto_2
    sget-object v0, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 644
    sget-object v0, Lx/org/server/SDL_Keys;->values:[Ljava/lang/Integer;

    sget-object v5, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    aget v5, v5, p0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lx/org/server/Settings;->nativeSetKeymapKeyScreenKb(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 645
    :cond_c
    sget p0, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_e

    const/4 p0, 0x0

    .line 647
    :goto_3
    sget-object v0, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v0, v0

    if-ge p0, v0, :cond_e

    .line 648
    sget-object v0, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v5, v5, p0

    aget v5, v5, v3

    if-ge v0, v5, :cond_d

    .line 649
    sget-object v0, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v5, v5, p0

    aget v5, v5, v1

    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v6, v6, p0

    aget v6, v6, v3

    sget-object v7, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v7, v7, p0

    aget v7, v7, v2

    invoke-static {p0, v0, v5, v6, v7}, Lx/org/server/Settings;->nativeSetScreenKbKeyLayout(IIIII)V

    :cond_d
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_e
    const/4 p0, 0x0

    .line 652
    :goto_4
    sget-object v0, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_10

    .line 653
    sget-object v0, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    aget-boolean v0, v0, p0

    invoke-static {p0, v0}, Lx/org/server/Settings;->nativeSetScreenKbKeyUsed(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 656
    :cond_f
    sput-boolean v4, Lx/org/server/Globals;->UseTouchscreenKeyboard:Z

    :cond_10
    const/4 p0, 0x0

    :goto_5
    const/16 v0, 0xff

    if-ge p0, v0, :cond_11

    .line 660
    sget-object v0, Lx/org/server/SDL_Keys;->values:[Ljava/lang/Integer;

    sget-object v5, Lx/org/server/Globals;->RemapHwKeycode:[I

    aget v5, v5, p0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lx/org/server/Settings;->nativeSetKeymapKey(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_11
    const/4 p0, 0x0

    .line 661
    :goto_6
    sget-object v0, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v0, v0

    if-ge p0, v0, :cond_13

    .line 662
    sget-object v0, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_12

    sget-object v0, Lx/org/server/SDL_Keys;->values:[Ljava/lang/Integer;

    sget-object v5, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    aget v5, v5, p0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    :goto_7
    invoke-static {p0, v0}, Lx/org/server/Settings;->nativeSetKeymapKeyMultitouchGesture(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    .line 663
    :cond_13
    sget p0, Lx/org/server/Globals;->MultitouchGestureSensitivity:I

    invoke-static {p0}, Lx/org/server/Settings;->nativeSetMultitouchGestureSensitivity(I)V

    .line 664
    sget-object p0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    aget p0, p0, v3

    sget-object v0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    aget v0, v0, v4

    if-le p0, v0, :cond_14

    .line 665
    sget-object p0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    aget p0, p0, v4

    sget-object v0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    aget v0, v0, v1

    sget-object v1, Lx/org/server/Globals;->TouchscreenCalibration:[I

    aget v1, v1, v3

    sget-object v3, Lx/org/server/Globals;->TouchscreenCalibration:[I

    aget v2, v3, v2

    invoke-static {p0, v0, v1, v2}, Lx/org/server/Settings;->nativeSetTouchscreenCalibration(IIII)V

    :cond_14
    return-void
.end method

.method public static DeleteFilesOnUpgrade(Lx/org/server/MainActivity;)V
    .locals 12

    .line 547
    sget-object v0, Lx/org/server/Globals;->DeleteFilesOnUpgrade:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 548
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 550
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 552
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lx/org/server/Settings;->deleteRecursivelyAndLog(Ljava/io/File;)Z

    .line 553
    invoke-static {}, Lx/org/server/Settings$SdcardAppPath;->get()Lx/org/server/Settings$SdcardAppPath;

    move-result-object v5

    invoke-virtual {v5, p0}, Lx/org/server/Settings$SdcardAppPath;->allPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_1

    aget-object v9, v5, v8

    .line 554
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lx/org/server/Settings;->deleteRecursivelyAndLog(Ljava/io/File;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static DeleteSdlConfigOnUpgradeAndRestart(Lx/org/server/MainActivity;)V
    .locals 4

    const/4 v0, 0x0

    .line 560
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    sget-object v2, Lx/org/server/Settings;->SettingsFileName:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lx/org/server/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, -0x1

    .line 561
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 562
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :catch_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lx/org/server/Settings;->SettingsFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 567
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lx/org/server/RestartMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    invoke-virtual {p0, v1}, Lx/org/server/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 569
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method static LoadConfig(Lx/org/server/MainActivity;)Z
    .locals 8

    .line 208
    const-string v0, "SDL"

    sget-object v1, Lx/org/server/Globals;->DataDownloadUrl:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Z

    sput-object v1, Lx/org/server/Globals;->OptionalDataDownload:[Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 209
    :goto_0
    sget-object v3, Lx/org/server/Globals;->DataDownloadUrl:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 211
    sget-object v3, Lx/org/server/Globals;->DataDownloadUrl:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v5, "!"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 213
    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    aput-boolean v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lx/org/server/Settings;->SettingsFileName:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 219
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    const/4 v3, 0x5

    if-ne p0, v3, :cond_10

    .line 221
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->DownloadToSdcard:Z

    .line 222
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->PhoneHasArrowKeys:Z

    .line 223
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    .line 224
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->UseAccelerometerAsArrowKeys:Z

    .line 225
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->UseTouchscreenKeyboard:Z

    .line 226
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    .line 227
    sput-boolean v4, Lx/org/server/Settings;->convertButtonSizeFromOldSdlVersion:Z

    .line 228
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->AccelerometerSensitivity:I

    .line 229
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->AccelerometerCenterPos:I

    .line 230
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    .line 231
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->AudioBufferConfig:I

    .line 232
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    .line 233
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->RightClickMethod:I

    .line 234
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->ShowScreenUnderFinger:I

    .line 235
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->LeftClickMethod:I

    .line 236
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->MoveMouseWithJoystick:Z

    .line 237
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->ClickMouseWithDpad:Z

    .line 238
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->ClickScreenPressure:I

    .line 239
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->ClickScreenTouchspotSize:I

    .line 240
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->KeepAspectRatio:Z

    .line 241
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->MoveMouseWithJoystickSpeed:I

    .line 242
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->MoveMouseWithJoystickAccel:I

    .line 243
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p0, :cond_2

    .line 246
    sget-object v5, Lx/org/server/Globals;->RemapHwKeycode:[I

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    .line 249
    sget-object v3, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    array-length v3, v3

    if-gt p0, v3, :cond_f

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p0, :cond_3

    .line 253
    sget-object v5, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 255
    :cond_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    .line 256
    sget-object v3, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    array-length v3, v3

    if-gt p0, v3, :cond_e

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p0, :cond_4

    .line 260
    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v6

    aput-boolean v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 262
    :cond_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->TouchscreenKeyboardTransparency:I

    .line 263
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sget-object v3, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v3, v3

    if-ne p0, v3, :cond_d

    const/4 p0, 0x0

    .line 265
    :goto_4
    sget-object v3, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v3, v3

    if-ge p0, v3, :cond_5

    .line 267
    sget-object v3, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    aput v5, v3, p0

    .line 268
    sget-object v3, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    aput-boolean v5, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 270
    :cond_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->MultitouchGestureSensitivity:I

    const/4 p0, 0x0

    .line 271
    :goto_5
    sget-object v3, Lx/org/server/Globals;->TouchscreenCalibration:[I

    array-length v3, v3

    if-ge p0, v3, :cond_6

    .line 272
    sget-object v3, Lx/org/server/Globals;->TouchscreenCalibration:[I

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    aput v5, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    .line 273
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_7

    .line 276
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 277
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v3, :cond_8

    .line 282
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 283
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lx/org/server/Globals;->CommandLine:Ljava/lang/String;

    .line 285
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    .line 286
    sget-object v3, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v3, v3

    if-gt p0, v3, :cond_c

    const/4 v3, 0x0

    :goto_8
    if-ge v3, p0, :cond_a

    const/4 v5, 0x0

    :goto_9
    const/4 v6, 0x4

    if-ge v5, v6, :cond_9

    .line 290
    sget-object v6, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v6, v6, v3

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 291
    :cond_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->LeftClickKey:I

    .line 292
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->RightClickKey:I

    .line 293
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->VideoLinearFilter:Z

    .line 294
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->LeftClickTimeout:I

    .line 295
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->RightClickTimeout:I

    .line 296
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->RelativeMouseMovement:Z

    .line 297
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->RelativeMouseMovementSpeed:I

    .line 298
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->RelativeMouseMovementAccel:I

    .line 299
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->MultiThreadedVideo:Z

    .line 301
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    new-array p0, p0, [Z

    sput-object p0, Lx/org/server/Globals;->OptionalDataDownload:[Z

    const/4 p0, 0x0

    .line 302
    :goto_a
    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    array-length v3, v3

    if-ge p0, v3, :cond_b

    .line 303
    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    aput-boolean v5, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_a

    .line 304
    :cond_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    .line 305
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->TouchscreenKeyboardDrawSize:I

    .line 306
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Settings;->settingsAppVersion:I

    .line 308
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 309
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 310
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 311
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 312
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 313
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 314
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 315
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 316
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readFloat()F

    .line 318
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->OuyaEmulation:Z

    .line 319
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->HoverJitterFilter:Z

    .line 320
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->MoveMouseWithGyroscope:Z

    .line 321
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->MoveMouseWithGyroscopeSpeed:I

    .line 322
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->FingerHover:Z

    .line 323
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->FloatingScreenJoystick:Z

    .line 324
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->GenerateSubframeTouchEvents:Z

    .line 325
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p0

    sput p0, Lx/org/server/Globals;->VideoDepthBpp:I

    .line 326
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->HorizontalOrientation:Z

    .line 327
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->ImmersiveMode:Z

    .line 328
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->AutoDetectOrientation:Z

    .line 329
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->TvBorders:Z

    .line 330
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->ForceHardwareMouse:Z

    .line 331
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Settings;->convertButtonSizeFromOldSdlVersion:Z

    .line 332
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p0

    sput-boolean p0, Lx/org/server/Globals;->DrawInDisplayCutout:Z

    .line 334
    const-string p0, "libSDL: Settings.LoadConfig(): loaded settings successfully"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    return v4

    .line 287
    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 264
    :cond_d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 257
    :cond_e
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 250
    :cond_f
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 220
    :cond_10
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "libSDL: settings file cannot be read: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catch_1
    move-exception p0

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "libSDL: settings file cannot be opened: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catch_2
    move-exception p0

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "libSDL: settings file not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return v1
.end method

.method static ProcessConfig(Lx/org/server/MainActivity;)V
    .locals 11

    .line 352
    sget-boolean v0, Lx/org/server/Settings;->settingsLoaded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_13

    .line 356
    :cond_0
    const-string v0, "libSDL: Settings.ProcessConfig(): enter"

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Lx/org/server/Settings;->nativeInitKeymap()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xff

    if-ge v2, v3, :cond_3

    .line 360
    invoke-static {v2}, Lx/org/server/Settings;->nativeGetKeymapKey(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 362
    :goto_1
    sget-object v6, Lx/org/server/SDL_Keys;->values:[Ljava/lang/Integer;

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 363
    sget-object v6, Lx/org/server/SDL_Keys;->values:[Ljava/lang/Integer;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_1

    move v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 365
    :cond_2
    sget-object v3, Lx/org/server/Globals;->RemapHwKeycode:[I

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 367
    :goto_2
    sget-object v3, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 369
    invoke-static {v2}, Lx/org/server/Settings;->nativeGetKeymapKeyScreenKb(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 371
    :goto_3
    sget-object v6, Lx/org/server/SDL_Keys;->values:[Ljava/lang/Integer;

    array-length v6, v6

    if-ge v4, v6, :cond_5

    .line 372
    sget-object v6, Lx/org/server/SDL_Keys;->values:[Ljava/lang/Integer;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_4

    move v5, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 374
    :cond_5
    sget-object v3, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 376
    :cond_6
    sget-object v2, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    sget-boolean v3, Lx/org/server/Globals;->AppNeedsArrowKeys:Z

    const/4 v4, 0x1

    if-nez v3, :cond_8

    sget-boolean v3, Lx/org/server/Globals;->AppUsesJoystick:Z

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v3, 0x1

    :goto_5
    aput-boolean v3, v2, v0

    .line 377
    sget-object v2, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    sget-boolean v3, Lx/org/server/Globals;->AppNeedsTextInput:Z

    aput-boolean v3, v2, v4

    const/4 v2, 0x2

    const/4 v3, 0x2

    :goto_6
    const/16 v5, 0x8

    if-ge v3, v5, :cond_a

    .line 379
    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    add-int/lit8 v6, v3, -0x2

    sget v7, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysAmount:I

    if-ge v6, v7, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    aput-boolean v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 380
    :cond_a
    sget-boolean v3, Lx/org/server/Globals;->AppUsesSecondJoystick:Z

    if-eqz v3, :cond_b

    .line 381
    sget-object v3, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    aput-boolean v4, v3, v5

    .line 382
    :cond_b
    sget-boolean v3, Lx/org/server/Globals;->AppUsesThirdJoystick:Z

    if-eqz v3, :cond_c

    .line 383
    sget-object v3, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    const/16 v5, 0x9

    aput-boolean v4, v3, v5

    :cond_c
    const/16 v3, 0xa

    .line 384
    :goto_8
    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    array-length v5, v5

    if-ge v3, v5, :cond_e

    .line 385
    sget-object v5, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    add-int/lit8 v6, v3, -0x4

    sget v7, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysAmount:I

    if-ge v6, v7, :cond_d

    const/4 v6, 0x1

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :goto_9
    aput-boolean v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    .line 386
    :goto_a
    sget-object v5, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v5, v5

    if-ge v3, v5, :cond_11

    .line 388
    invoke-static {v3}, Lx/org/server/Settings;->nativeGetKeymapKeyMultitouchGesture(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 390
    :goto_b
    sget-object v8, Lx/org/server/SDL_Keys;->values:[Ljava/lang/Integer;

    array-length v8, v8

    if-ge v6, v8, :cond_10

    .line 391
    sget-object v8, Lx/org/server/SDL_Keys;->values:[Ljava/lang/Integer;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_f

    move v7, v6

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 393
    :cond_10
    sget-object v5, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    aput v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    .line 395
    :goto_c
    sget-object v5, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    array-length v5, v5

    if-ge v3, v5, :cond_12

    .line 396
    sget-object v5, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    aput-boolean v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_12
    const/16 v3, 0x320

    .line 401
    :try_start_0
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 402
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 403
    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 404
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    const/16 v5, 0x1e0

    :goto_d
    const/4 v6, 0x0

    .line 406
    :goto_e
    sget-object v7, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v7, v7

    if-ge v6, v7, :cond_13

    .line 408
    sget-object v7, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v7, v7, v6

    aget v8, v7, v0

    int-to-float v8, v8

    int-to-float v9, v3

    const/high16 v10, 0x44480000    # 800.0f

    div-float/2addr v9, v10

    mul-float v8, v8, v9

    float-to-int v8, v8

    aput v8, v7, v0

    .line 409
    sget-object v7, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v7, v7, v6

    aget v8, v7, v2

    int-to-float v8, v8

    mul-float v8, v8, v9

    float-to-int v8, v8

    aput v8, v7, v2

    .line 410
    sget-object v7, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v7, v7, v6

    aget v8, v7, v4

    int-to-float v8, v8

    int-to-float v9, v5

    const/high16 v10, 0x43f00000    # 480.0f

    div-float/2addr v9, v10

    mul-float v8, v8, v9

    float-to-int v8, v8

    aput v8, v7, v4

    .line 411
    sget-object v7, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v7, v7, v6

    const/4 v8, 0x3

    aget v10, v7, v8

    int-to-float v10, v10

    mul-float v10, v10, v9

    float-to-int v9, v10

    aput v9, v7, v8

    .line 413
    sget-object v7, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v7, v7, v6

    aget v7, v7, v2

    sget-object v9, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v9, v9, v6

    aget v9, v9, v0

    sub-int/2addr v7, v9

    sget-object v9, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v9, v9, v6

    aget v9, v9, v8

    sget-object v10, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v10, v10, v6

    aget v10, v10, v4

    sub-int/2addr v9, v10

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 414
    sget-object v9, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v9, v9, v6

    sget-object v10, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v10, v10, v6

    aget v10, v10, v0

    add-int/2addr v10, v7

    aput v10, v9, v2

    .line 415
    sget-object v9, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v9, v9, v6

    sget-object v10, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v10, v10, v6

    aget v10, v10, v4

    add-int/2addr v10, v7

    aput v10, v9, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 418
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.os.Build.MODEL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GT-N7000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SGH-I717"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 426
    :cond_14
    sput-boolean v0, Lx/org/server/Settings;->convertButtonSizeFromOldSdlVersion:Z

    .line 428
    invoke-static {p0}, Lx/org/server/Settings;->LoadConfig(Lx/org/server/MainActivity;)Z

    move-result v2

    sput-boolean v2, Lx/org/server/Settings;->settingsLoaded:Z

    .line 430
    const-string v3, " and we need to clean up config file"

    if-eqz v2, :cond_16

    .line 432
    const-string v0, "libSDL: Settings.ProcessConfig(): loaded settings successfully"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "libSDL: old app version "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lx/org/server/Settings;->settingsAppVersion:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", new app version "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getApplicationVersion()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget v0, Lx/org/server/Settings;->settingsAppVersion:I

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getApplicationVersion()I

    move-result v5

    if-eq v0, v5, :cond_20

    .line 436
    invoke-static {p0}, Lx/org/server/Settings;->DeleteFilesOnUpgrade(Lx/org/server/MainActivity;)V

    .line 437
    sget-boolean v0, Lx/org/server/Globals;->ResetSdlConfigForThisVersion:Z

    if-eqz v0, :cond_15

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lx/org/server/Settings;->settingsAppVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getApplicationVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-static {p0}, Lx/org/server/Settings;->DeleteSdlConfigOnUpgradeAndRestart(Lx/org/server/MainActivity;)V

    .line 443
    :cond_15
    invoke-static {p0}, Lx/org/server/Settings;->Save(Lx/org/server/MainActivity;)V

    goto/16 :goto_13

    .line 449
    :cond_16
    const-string v2, "libSDL: settings cannot be loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {p0}, Lx/org/server/Settings;->DeleteFilesOnUpgrade(Lx/org/server/MainActivity;)V

    .line 451
    sget-boolean v2, Lx/org/server/Settings;->convertButtonSizeFromOldSdlVersion:Z

    if-eqz v2, :cond_17

    sget v2, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    add-int/2addr v2, v4

    const/4 v5, 0x4

    if-ge v2, v5, :cond_17

    .line 453
    sget v2, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    add-int/2addr v2, v4

    sput v2, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    .line 457
    :cond_17
    sget-boolean v2, Lx/org/server/Globals;->ResetSdlConfigForThisVersion:Z

    if-eqz v2, :cond_18

    sget v2, Lx/org/server/Settings;->settingsAppVersion:I

    if-eqz v2, :cond_18

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "libSDL: old cfg version unknown or too old, our version "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getApplicationVersion()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {p0}, Lx/org/server/Settings;->DeleteSdlConfigOnUpgradeAndRestart(Lx/org/server/MainActivity;)V

    .line 463
    :cond_18
    sget-object v2, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f

    .line 465
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "libSDL: SD card or external storage is not mounted (state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), switching to the internal storage."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sput-boolean v0, Lx/org/server/Globals;->DownloadToSdcard:Z

    .line 470
    :cond_19
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-boolean v2, Lx/org/server/Globals;->DownloadToSdcard:Z

    if-eqz v2, :cond_1a

    .line 477
    invoke-static {}, Lx/org/server/Settings$SdcardAppPath;->get()Lx/org/server/Settings$SdcardAppPath;

    move-result-object v2

    invoke-virtual {v2, p0}, Lx/org/server/Settings$SdcardAppPath;->bestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 478
    :cond_1a
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_f
    sput-object v2, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    .line 479
    sget-boolean v2, Lx/org/server/Globals;->DownloadToSdcard:Z

    if-eqz v2, :cond_1f

    .line 482
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lx/org/server/Settings$SdcardAppPath;->deprecatedPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 483
    const-string v3, "libsdl-DownloadFinished-"

    if-eqz v2, :cond_1c

    .line 484
    array-length v5, v2

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v5, :cond_1c

    aget-object v7, v2, v6

    .line 485
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 486
    invoke-static {p0}, Lx/org/server/Settings$SdcardAppPath;->deprecatedPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 488
    :cond_1c
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lx/org/server/Settings$SdcardAppPath;->get()Lx/org/server/Settings$SdcardAppPath;

    move-result-object v5

    invoke-virtual {v5, p0}, Lx/org/server/Settings$SdcardAppPath;->path(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 490
    array-length v5, v2

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v5, :cond_1e

    aget-object v7, v2, v6

    .line 491
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 492
    invoke-static {}, Lx/org/server/Settings$SdcardAppPath;->get()Lx/org/server/Settings$SdcardAppPath;

    move-result-object v7

    invoke-virtual {v7, p0}, Lx/org/server/Settings$SdcardAppPath;->path(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 495
    :cond_1e
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v3, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 496
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    sget-object v5, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    const-string v6, ".nomedia"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_12

    .line 498
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "libSDL: cannot create .nomedia file at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - switching to internal storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sput-boolean v0, Lx/org/server/Globals;->DownloadToSdcard:Z

    .line 500
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    .line 505
    :cond_1f
    :goto_12
    const-string v0, "libSDL: Settings.Load(): loading settings failed, running config dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Lx/org/server/MainActivity;->setScreenOrientation()V

    .line 507
    invoke-virtual {p0}, Lx/org/server/MainActivity;->setUpStatusLabel()V

    .line 508
    invoke-static {p0}, Lx/org/server/Settings;->checkRamSize(Lx/org/server/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 509
    invoke-static {p0, v4}, Lx/org/server/SettingsMenu;->showConfig(Lx/org/server/MainActivity;Z)V

    :cond_20
    :goto_13
    return-void
.end method

.method static Save(Lx/org/server/MainActivity;)V
    .locals 5

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    sget-object v1, Lx/org/server/Settings;->SettingsFileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lx/org/server/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x5

    .line 97
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 98
    sget-boolean v1, Lx/org/server/Globals;->DownloadToSdcard:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 99
    sget-boolean v1, Lx/org/server/Globals;->PhoneHasArrowKeys:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 100
    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 101
    sget-boolean v1, Lx/org/server/Globals;->UseAccelerometerAsArrowKeys:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 102
    sget-boolean v1, Lx/org/server/Globals;->UseTouchscreenKeyboard:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 103
    sget v1, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 104
    sget v1, Lx/org/server/Globals;->AccelerometerSensitivity:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 105
    sget v1, Lx/org/server/Globals;->AccelerometerCenterPos:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 106
    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 107
    sget v1, Lx/org/server/Globals;->AudioBufferConfig:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 108
    sget v1, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 109
    sget v1, Lx/org/server/Globals;->RightClickMethod:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 110
    sget v1, Lx/org/server/Globals;->ShowScreenUnderFinger:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 111
    sget v1, Lx/org/server/Globals;->LeftClickMethod:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 112
    sget-boolean v1, Lx/org/server/Globals;->MoveMouseWithJoystick:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 113
    sget-boolean v1, Lx/org/server/Globals;->ClickMouseWithDpad:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 114
    sget v1, Lx/org/server/Globals;->ClickScreenPressure:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 115
    sget v1, Lx/org/server/Globals;->ClickScreenTouchspotSize:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 116
    sget-boolean v1, Lx/org/server/Globals;->KeepAspectRatio:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 117
    sget v1, Lx/org/server/Globals;->MoveMouseWithJoystickSpeed:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 118
    sget v1, Lx/org/server/Globals;->MoveMouseWithJoystickAccel:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/16 v1, 0xff

    .line 119
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 122
    sget-object v4, Lx/org/server/Globals;->RemapHwKeycode:[I

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_0
    sget-object v1, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .line 125
    :goto_1
    sget-object v3, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 127
    sget-object v3, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_1
    sget-object v1, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .line 130
    :goto_2
    sget-object v3, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 132
    sget-object v3, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 134
    :cond_2
    sget v1, Lx/org/server/Globals;->TouchscreenKeyboardTransparency:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 135
    sget-object v1, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .line 136
    :goto_3
    sget-object v3, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 138
    sget-object v3, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 139
    sget-object v3, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 141
    :cond_3
    sget v1, Lx/org/server/Globals;->MultitouchGestureSensitivity:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .line 142
    :goto_4
    sget-object v3, Lx/org/server/Globals;->TouchscreenCalibration:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 143
    sget-object v3, Lx/org/server/Globals;->TouchscreenCalibration:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 144
    :cond_4
    sget-object v1, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .line 145
    :goto_5
    sget-object v3, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 146
    sget-object v3, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 147
    :cond_5
    sget-object v1, Lx/org/server/Globals;->CommandLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .line 148
    :goto_6
    sget-object v3, Lx/org/server/Globals;->CommandLine:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 149
    sget-object v3, Lx/org/server/Globals;->CommandLine:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 150
    :cond_6
    sget-object v1, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .line 151
    :goto_7
    sget-object v3, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_8

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x4

    if-ge v3, v4, :cond_7

    .line 153
    sget-object v4, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    aget-object v4, v4, v1

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 154
    :cond_8
    sget v1, Lx/org/server/Globals;->LeftClickKey:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 155
    sget v1, Lx/org/server/Globals;->RightClickKey:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 156
    sget-boolean v1, Lx/org/server/Globals;->VideoLinearFilter:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 157
    sget v1, Lx/org/server/Globals;->LeftClickTimeout:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 158
    sget v1, Lx/org/server/Globals;->RightClickTimeout:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 159
    sget-boolean v1, Lx/org/server/Globals;->RelativeMouseMovement:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 160
    sget v1, Lx/org/server/Globals;->RelativeMouseMovementSpeed:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 161
    sget v1, Lx/org/server/Globals;->RelativeMouseMovementAccel:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 162
    sget-boolean v1, Lx/org/server/Globals;->MultiThreadedVideo:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 164
    sget-object v1, Lx/org/server/Globals;->OptionalDataDownload:[Z

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v1, 0x0

    .line 165
    :goto_9
    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_9

    .line 166
    sget-object v3, Lx/org/server/Globals;->OptionalDataDownload:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 167
    :cond_9
    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 168
    sget v1, Lx/org/server/Globals;->TouchscreenKeyboardDrawSize:I

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 169
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getApplicationVersion()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 p0, 0x0

    .line 171
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 172
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 173
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 174
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 175
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 176
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 177
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 178
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 179
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 181
    sget-boolean p0, Lx/org/server/Globals;->OuyaEmulation:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 182
    sget-boolean p0, Lx/org/server/Globals;->HoverJitterFilter:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 183
    sget-boolean p0, Lx/org/server/Globals;->MoveMouseWithGyroscope:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 184
    sget p0, Lx/org/server/Globals;->MoveMouseWithGyroscopeSpeed:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 185
    sget-boolean p0, Lx/org/server/Globals;->FingerHover:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 186
    sget-boolean p0, Lx/org/server/Globals;->FloatingScreenJoystick:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 187
    sget-boolean p0, Lx/org/server/Globals;->GenerateSubframeTouchEvents:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 188
    sget p0, Lx/org/server/Globals;->VideoDepthBpp:I

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 189
    sget-boolean p0, Lx/org/server/Globals;->HorizontalOrientation:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 190
    sget-boolean p0, Lx/org/server/Globals;->ImmersiveMode:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 191
    sget-boolean p0, Lx/org/server/Globals;->AutoDetectOrientation:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 192
    sget-boolean p0, Lx/org/server/Globals;->TvBorders:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 193
    sget-boolean p0, Lx/org/server/Globals;->ForceHardwareMouse:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 194
    sput-boolean v2, Lx/org/server/Settings;->convertButtonSizeFromOldSdlVersion:Z

    .line 195
    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 196
    sget-boolean p0, Lx/org/server/Globals;->DrawInDisplayCutout:Z

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 198
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    const/4 p0, 0x1

    .line 199
    sput-boolean p0, Lx/org/server/Settings;->settingsLoaded:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static applyMouseEmulationOptions()V
    .locals 24

    .line 576
    sget-boolean v0, Lx/org/server/Globals;->AppUsesMouse:Z

    if-eqz v0, :cond_0

    .line 577
    sget v1, Lx/org/server/Globals;->RightClickMethod:I

    sget v2, Lx/org/server/Globals;->ShowScreenUnderFinger:I

    sget v3, Lx/org/server/Globals;->LeftClickMethod:I

    .line 580
    sget-boolean v4, Lx/org/server/Globals;->MoveMouseWithJoystick:Z

    .line 581
    sget-boolean v5, Lx/org/server/Globals;->ClickMouseWithDpad:Z

    sget v6, Lx/org/server/Globals;->ClickScreenPressure:I

    sget v7, Lx/org/server/Globals;->ClickScreenTouchspotSize:I

    sget v8, Lx/org/server/Globals;->MoveMouseWithJoystickSpeed:I

    sget v9, Lx/org/server/Globals;->MoveMouseWithJoystickAccel:I

    sget v10, Lx/org/server/Globals;->LeftClickKey:I

    sget v11, Lx/org/server/Globals;->RightClickKey:I

    sget v12, Lx/org/server/Globals;->LeftClickTimeout:I

    sget v13, Lx/org/server/Globals;->RightClickTimeout:I

    .line 590
    sget-boolean v14, Lx/org/server/Globals;->RelativeMouseMovement:Z

    sget v15, Lx/org/server/Globals;->RelativeMouseMovementSpeed:I

    sget v16, Lx/org/server/Globals;->RelativeMouseMovementAccel:I

    .line 593
    sget-boolean v17, Lx/org/server/Globals;->ShowMouseCursor:Z

    .line 594
    sget-boolean v18, Lx/org/server/Globals;->HoverJitterFilter:Z

    .line 595
    sget-boolean v19, Lx/org/server/Globals;->RightMouseButtonLongPress:Z

    .line 596
    sget-boolean v20, Lx/org/server/Globals;->MoveMouseWithGyroscope:Z

    sget v21, Lx/org/server/Globals;->MoveMouseWithGyroscopeSpeed:I

    .line 598
    sget-boolean v22, Lx/org/server/Globals;->CompatibilityHacksForceScreenUpdateMouseClick:Z

    .line 599
    sget-boolean v23, Lx/org/server/Globals;->ScreenFollowsMouse:Z

    .line 577
    invoke-static/range {v1 .. v23}, Lx/org/server/Settings;->nativeSetMouseUsed(IIIIIIIIIIIIIIIIIIIIIII)V

    :cond_0
    return-void
.end method

.method static checkRamSize(Lx/org/server/MainActivity;)Z
    .locals 13

    .line 891
    const-string v0, "SDL"

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/meminfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 893
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 895
    const-string v4, "MemTotal:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 897
    const-string v4, "[ \t]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 898
    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device RAM size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v7, 0x400

    div-long v9, v3, v7

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " Mb, required minimum RAM: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lx/org/server/Globals;->AppMinimumRAM:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Mb"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-long v9, v3, v7

    sget v6, Lx/org/server/Globals;->AppMinimumRAM:I

    int-to-long v11, v6

    cmp-long v6, v9, v11

    if-gez v6, :cond_0

    .line 902
    sput-boolean v1, Lx/org/server/Settings;->settingsChanged:Z

    .line 903
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 904
    sget v6, Lx/org/server/R$string;->not_enough_ram:I

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 905
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lx/org/server/R$string;->not_enough_ram_size:I

    sget v10, Lx/org/server/Globals;->AppMinimumRAM:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-long/2addr v3, v7

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    aput-object v3, v4, v1

    invoke-virtual {v6, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 906
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lx/org/server/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lx/org/server/Settings$1;

    invoke-direct {v4, p0}, Lx/org/server/Settings$1;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 914
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lx/org/server/R$string;->ignore:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lx/org/server/Settings$2;

    invoke-direct {v4, p0}, Lx/org/server/Settings$2;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 922
    new-instance v3, Lx/org/server/Settings$3;

    invoke-direct {v3, p0}, Lx/org/server/Settings$3;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 930
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 931
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 932
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p0

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: cannot parse /proc/meminfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static deleteRecursively(Ljava/io/File;)Z
    .locals 6

    .line 517
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 519
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 521
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lx/org/server/Settings;->deleteRecursively(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static deleteRecursivelyAndLog(Ljava/io/File;)Z
    .locals 6

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting old file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 534
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 535
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 537
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lx/org/server/Settings;->deleteRecursively(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static native nativeChdir(Ljava/lang/String;)V
.end method

.method public static native nativeChmod(Ljava/lang/String;I)I
.end method

.method private static native nativeGetKeymapKey(I)I
.end method

.method private static native nativeGetKeymapKeyMultitouchGesture(I)I
.end method

.method private static native nativeGetKeymapKeyScreenKb(I)I
.end method

.method public static native nativeGetScreenKeyboardButtonLayout(II)I
.end method

.method private static native nativeInitKeymap()V
.end method

.method private static native nativeSetAccelerometerSettings(II)V
.end method

.method private static native nativeSetAccelerometerUsed()V
.end method

.method private static native nativeSetCompatibilityHacks()V
.end method

.method public static native nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetJoystickUsed(I)V
.end method

.method private static native nativeSetKeymapKey(II)V
.end method

.method private static native nativeSetKeymapKeyMultitouchGesture(II)V
.end method

.method private static native nativeSetKeymapKeyScreenKb(II)V
.end method

.method private static native nativeSetMouseUsed(IIIIIIIIIIIIIIIIIIIIIII)V
.end method

.method private static native nativeSetMultitouchGestureSensitivity(I)V
.end method

.method private static native nativeSetMultitouchUsed()V
.end method

.method private static native nativeSetScreenKbKeyLayout(IIIII)V
.end method

.method private static native nativeSetScreenKbKeyUsed(II)V
.end method

.method public static native nativeSetTouchscreenCalibration(IIII)V
.end method

.method private static native nativeSetTouchscreenKeyboardUsed()V
.end method

.method private static native nativeSetVideoDepth(III)V
.end method

.method private static native nativeSetVideoForceSoftwareMode()V
.end method

.method private static native nativeSetVideoLinearFilter()V
.end method

.method private static native nativeSetVideoMultithreaded()V
.end method

.method public static native nativeSetupScreenKeyboard(IIIIII)V
.end method

.method public static native nativeSetupScreenKeyboardButtons([B)V
.end method

.method public static setConfigOptionFromSDL(II)V
    .locals 2

    if-eqz p0, :cond_0

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setConfigOptionFromSDL: cannot find option with ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", value "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDL"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 950
    :cond_0
    sput p1, Lx/org/server/Globals;->VideoDepthBpp:I

    .line 956
    :goto_0
    sget-object p0, Lx/org/server/MainActivity;->instance:Lx/org/server/MainActivity;

    invoke-static {p0}, Lx/org/server/Settings;->Save(Lx/org/server/MainActivity;)V

    return-void
.end method

.method static setEnvVars(Lx/org/server/MainActivity;)V
    .locals 5

    const/4 v0, 0x3

    .line 671
    invoke-static {v0}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUDIO_NATIVE_SAMPLE_RATE"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "os.version"

    const-string v1, "4.0.0"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OS_VERSION"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "libSDL: setting envvar LANGUAGE to \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDL"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v1, "LANG"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v1, "LANGUAGE"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v0, "ARCH"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPDIR"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECURE_STORAGE_DIR"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v1, "LIBDIR"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v0, "DATADIR"

    sget-object v1, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v0, "UNSECURE_STORAGE_DIR"

    sget-object v1, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lx/org/server/Settings$SdcardAppPath;->get()Lx/org/server/Settings$SdcardAppPath;

    move-result-object v0

    invoke-virtual {v0, p0}, Lx/org/server/Settings$SdcardAppPath;->setEnv(Landroid/content/Context;)V

    .line 686
    const-string v0, "HOME"

    sget-object v1, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDCARD"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDCARD_DOWNLOADS"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDCARD_PICTURES"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDCARD_MOVIES"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDCARD_DCIM"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDCARD_MUSIC"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANDROID_VERSION"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v0, "ANDROID_PACKAGE_NAME"

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v0, "ANDROID_PACKAGE_PATH"

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v0, "ANDROID_MY_OWN_APP_FILE"

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANDROID_OBB_DIR"

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :try_start_0
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getObbDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 701
    :goto_0
    iget-object v0, p0, Lx/org/server/MainActivity;->ObbMountPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 703
    const-string v0, "ANDROID_OBB_MOUNT_DIR"

    iget-object v1, p0, Lx/org/server/MainActivity;->ObbMountPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_1
    iget-object v0, p0, Lx/org/server/MainActivity;->assetPackPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 707
    const-string v0, "ANDROID_ASSET_PACK_PATH"

    iget-object v1, p0, Lx/org/server/MainActivity;->assetPackPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_2
    :try_start_1
    const-string v0, "ANDROID_APP_NAME"

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v1}, Lx/org/server/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 713
    :catch_1
    :try_start_2
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 714
    const-string v1, "ANDROID_PACKAGE_VERSION_NAME"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v1, "ANDROID_PACKAGE_VERSION_CODE"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    nop

    .line 718
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: Is running on OUYA: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lx/org/server/MainActivity;->isRunningOnOUYA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p0}, Lx/org/server/MainActivity;->isRunningOnOUYA()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_3

    .line 721
    const-string v0, "OUYA"

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v0, "TV"

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v0, "ANDROID_TV"

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_3
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v2, "com.google.intent.category.CARDBOARD"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    const-string v0, "CARDBOARD"

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v0, "VR"

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v0, "CARDBOARD_VR"

    invoke-static {v0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_4
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SDL_RESTART_PARAMS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 731
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_5
    :try_start_3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 734
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 735
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p0, v1

    .line 736
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v2

    .line 737
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 738
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float v1, v2, v2

    mul-float v3, p0, p0

    add-float/2addr v1, v3

    float-to-double v3, v1

    .line 739
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 740
    const-string v3, "DISPLAY_SIZE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v3, "DISPLAY_SIZE_MM"

    const v4, 0x41cb3333    # 25.4f

    mul-float v1, v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v1, "DISPLAY_WIDTH"

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v1, "DISPLAY_HEIGHT"

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v1, "DISPLAY_WIDTH_MM"

    mul-float v2, v2, v4

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v1, "DISPLAY_HEIGHT_MM"

    mul-float p0, p0, v4

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string p0, "DISPLAY_RESOLUTION_WIDTH"

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string p0, "DISPLAY_RESOLUTION_HEIGHT"

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lx/org/server/Settings;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
