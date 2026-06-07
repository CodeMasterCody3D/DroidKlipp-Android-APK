.class Lx/org/server/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field public static AccelerometerCenterPos:I = 0x0

.field public static AccelerometerSensitivity:I = 0x0

.field public static AccessSdCard:Z = false

.field public static AdmobBannerSize:Ljava/lang/String; = null

.field public static AdmobPublisherId:Ljava/lang/String; = null

.field public static AdmobTestDeviceId:Ljava/lang/String; = null

.field public static AppLibraries:[Ljava/lang/String; = null

.field public static AppMainLibraries:[Ljava/lang/String; = null

.field public static AppMinimumRAM:I = 0x0

.field public static AppNeedsArrowKeys:Z = false

.field public static AppNeedsTextInput:Z = false

.field public static AppNeedsTwoButtonMouse:Z = false

.field public static AppTouchscreenKeyboardKeysAmount:I = 0x0

.field public static AppTouchscreenKeyboardKeysNames:[Ljava/lang/String; = null

.field public static AppUsesAccelerometer:Z = false

.field public static AppUsesGyroscope:Z = false

.field public static AppUsesJoystick:Z = false

.field public static AppUsesMouse:Z = false

.field public static AppUsesMultitouch:Z = false

.field public static AppUsesOrientationSensor:Z = false

.field public static AppUsesSecondJoystick:Z = false

.field public static AppUsesThirdJoystick:Z = false

.field public static ApplicationName:Ljava/lang/String; = "DroidKlipp"

.field public static AudioBufferConfig:I = 0x0

.field public static AutoDetectOrientation:Z = false

.field public static ClickMouseWithDpad:Z = false

.field public static ClickScreenPressure:I = 0x0

.field public static ClickScreenTouchspotSize:I = 0x0

.field public static CommandLine:Ljava/lang/String; = null

.field public static CompatibilityHacksForceScreenUpdateMouseClick:Z = false

.field public static CompatibilityHacksStaticInit:Z = false

.field public static CompatibilityHacksTextInputEmulatesHwKeyboard:Z = false

.field public static CompatibilityHacksVideo:Z = false

.field public static CreateService:Z = false

.field public static DataDir:Ljava/lang/String; = null

.field public static DataDownloadUrl:[Ljava/lang/String; = null

.field public static DeleteFilesOnUpgrade:Ljava/lang/String; = null

.field public static DownloadToSdcard:Z = false

.field public static DrawInDisplayCutout:Z = false

.field public static FingerHover:Z = false

.field public static FirstStartMenuOptions:[Lx/org/server/SettingsMenu$Menu; = null

.field public static FloatingScreenJoystick:Z = false

.field public static ForceHardwareMouse:Z = false

.field public static ForceRelativeMouseMode:Z = false

.field public static GenerateSubframeTouchEvents:Z = false

.field public static GooglePlayGameServicesId:Ljava/lang/String; = null

.field public static HiddenMenuOptions:[Lx/org/server/SettingsMenu$Menu; = null

.field public static HideSystemMousePointer:Z = false

.field public static HorizontalOrientation:Z = false

.field public static HoverJitterFilter:Z = false

.field public static ImmersiveMode:Z = false

.field public static InhibitSuspend:Z = false

.field public static KeepAspectRatio:Z = false

.field public static KeepAspectRatioDefaultSetting:Z = false

.field public static LeftClickKey:I = 0x0

.field public static LeftClickMethod:I = 0x0

.field public static LeftClickTimeout:I = 0x0

.field public static LibraryNamesMap:[[Ljava/lang/String; = null

.field public static MoveMouseWithGyroscope:Z = false

.field public static MoveMouseWithGyroscopeSpeed:I = 0x0

.field public static MoveMouseWithJoystick:Z = false

.field public static MoveMouseWithJoystickAccel:I = 0x0

.field public static MoveMouseWithJoystickSpeed:I = 0x0

.field public static MultiThreadedVideo:Z = false

.field public static MultitouchGestureSensitivity:I = 0x0

.field public static MultitouchGesturesUsed:[Z = null

.field public static NeedDepthBuffer:Z = false

.field public static NeedGles2:Z = false

.field public static NeedGles3:Z = false

.field public static NeedStencilBuffer:Z = false

.field public static NonBlockingSwapBuffers:Z = false

.field public static OptionalDataDownload:[Z = null

.field public static OuyaEmulation:Z = false

.field public static PhoneHasArrowKeys:Z = false

.field public static ReadmeText:Ljava/lang/String; = null

.field public static RelativeMouseMovement:Z = false

.field public static RelativeMouseMovementAccel:I = 0x0

.field public static RelativeMouseMovementSpeed:I = 0x0

.field public static RemapHwKeycode:[I = null

.field public static RemapMultitouchGestureKeycode:[I = null

.field public static RemapScreenKbKeycode:[I = null

.field public static ResetSdlConfigForThisVersion:Z = false

.field public static RightClickKey:I = 0x0

.field public static RightClickMethod:I = 0x0

.field public static RightClickTimeout:I = 0x0

.field public static RightMouseButtonLongPress:Z = false

.field public static ScreenFollowsMouse:Z = false

.field public static ScreenKbControlsLayout:[[I = null

.field public static ScreenKbControlsShown:[Z = null

.field public static ShowMouseCursor:Z = false

.field public static ShowScreenUnderFinger:I = 0x0

.field public static StartupMenuButtonTimeout:I = 0x0

.field public static SwVideoMode:Z = false

.field public static final TOUCHSCREEN_KEYBOARD_CUSTOM:I = 0x4

.field public static TextInputKeyboard:I = 0x0

.field public static TouchscreenCalibration:[I = null

.field public static TouchscreenKeyboardDrawSize:I = 0x0

.field public static TouchscreenKeyboardSize:I = 0x0

.field public static TouchscreenKeyboardTheme:I = 0x0

.field public static TouchscreenKeyboardTransparency:I = 0x0

.field public static TvBorders:Z = false

.field public static UseAccelerometerAsArrowKeys:Z = false

.field public static UseTouchscreenKeyboard:Z = false

.field public static final UsingSDL2:Z = false

.field public static VideoDepthBpp:I

.field public static VideoLinearFilter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 34
    const-string v0, "sdl_ttf"

    const-string v1, "crypto"

    const-string v2, "sdl_native_helpers"

    const-string v3, "sdl-1.2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx/org/server/Globals;->AppLibraries:[Ljava/lang/String;

    .line 35
    const-string v0, "application"

    const-string v1, "sdl_main"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lx/org/server/Globals;->AppMainLibraries:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 36
    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "crypto"

    const-string v3, "crypto.so.sdl.1"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ssl"

    const-string v4, "ssl.so.sdl.1"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "curl"

    const-string v5, "curl-sdl"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "expat"

    const-string v6, "expat-sdl"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "sqlite3"

    const-string v7, "sqlite3-sdl"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lx/org/server/Globals;->LibraryNamesMap:[[Ljava/lang/String;

    .line 44
    const-string v1, "!!Data files|:DroidSansMono.ttf:DroidSansMono.ttf"

    const-string v2, "Additional fonts (90Mb)|:xfonts.tar.gz:xfonts.tgz|:xfonts.tar.gz:https://sourceforge.net/projects/libsdl-android/files/apk/XServer-XSDL/xfonts.tgz/download"

    const-string v8, "!!Library mapping|bin-map.zip"

    const-string v9, "!!Data files|:data.tar.gz:data-2.tgz"

    filled-new-array {v8, v9, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lx/org/server/Globals;->DataDownloadUrl:[Ljava/lang/String;

    .line 45
    sput-boolean v4, Lx/org/server/Globals;->SwVideoMode:Z

    .line 46
    sput-boolean v3, Lx/org/server/Globals;->NeedDepthBuffer:Z

    .line 47
    sput-boolean v3, Lx/org/server/Globals;->NeedStencilBuffer:Z

    .line 48
    sput-boolean v3, Lx/org/server/Globals;->NeedGles2:Z

    .line 49
    sput-boolean v3, Lx/org/server/Globals;->NeedGles3:Z

    .line 50
    sput-boolean v3, Lx/org/server/Globals;->CompatibilityHacksVideo:Z

    .line 51
    sput-boolean v4, Lx/org/server/Globals;->CompatibilityHacksForceScreenUpdateMouseClick:Z

    .line 52
    sput-boolean v3, Lx/org/server/Globals;->CompatibilityHacksStaticInit:Z

    .line 53
    sput-boolean v4, Lx/org/server/Globals;->CompatibilityHacksTextInputEmulatesHwKeyboard:Z

    .line 54
    sput v3, Lx/org/server/Globals;->TextInputKeyboard:I

    .line 55
    sput-boolean v3, Lx/org/server/Globals;->KeepAspectRatioDefaultSetting:Z

    .line 56
    sput-boolean v4, Lx/org/server/Globals;->InhibitSuspend:Z

    .line 57
    sput-boolean v4, Lx/org/server/Globals;->CreateService:Z

    .line 58
    const-string v1, ""

    sput-object v1, Lx/org/server/Globals;->ReadmeText:Ljava/lang/String;

    .line 59
    const-string v2, "XSDL -screenbuttons"

    sput-object v2, Lx/org/server/Globals;->CommandLine:Ljava/lang/String;

    .line 60
    sput-boolean v4, Lx/org/server/Globals;->AppUsesMouse:Z

    .line 61
    sput-boolean v4, Lx/org/server/Globals;->AppNeedsTwoButtonMouse:Z

    .line 62
    sput-boolean v3, Lx/org/server/Globals;->RightMouseButtonLongPress:Z

    .line 63
    sput-boolean v4, Lx/org/server/Globals;->ForceRelativeMouseMode:Z

    .line 64
    sput-boolean v3, Lx/org/server/Globals;->ShowMouseCursor:Z

    .line 65
    sput-boolean v4, Lx/org/server/Globals;->ScreenFollowsMouse:Z

    .line 66
    sput-boolean v3, Lx/org/server/Globals;->AppNeedsArrowKeys:Z

    .line 67
    sput-boolean v3, Lx/org/server/Globals;->AppNeedsTextInput:Z

    .line 68
    sput-boolean v3, Lx/org/server/Globals;->AppUsesJoystick:Z

    .line 69
    sput-boolean v3, Lx/org/server/Globals;->AppUsesSecondJoystick:Z

    .line 70
    sput-boolean v3, Lx/org/server/Globals;->AppUsesThirdJoystick:Z

    .line 71
    sput-boolean v3, Lx/org/server/Globals;->AppUsesAccelerometer:Z

    .line 72
    sput-boolean v3, Lx/org/server/Globals;->AppUsesGyroscope:Z

    .line 73
    sput-boolean v3, Lx/org/server/Globals;->AppUsesOrientationSensor:Z

    .line 74
    sput-boolean v4, Lx/org/server/Globals;->AppUsesMultitouch:Z

    .line 75
    sput-boolean v3, Lx/org/server/Globals;->NonBlockingSwapBuffers:Z

    .line 76
    sput-boolean v3, Lx/org/server/Globals;->ResetSdlConfigForThisVersion:Z

    .line 77
    const-string v2, "libsdl-DownloadFinished-0.flag libsdl-DownloadFinished-1.flag busybox usr tmp pulseaudio.conf"

    sput-object v2, Lx/org/server/Globals;->DeleteFilesOnUpgrade:Ljava/lang/String;

    .line 78
    sput v6, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysAmount:I

    .line 79
    const-string v2, "LCTRL LALT LSHIFT RETURN SPACE DELETE KP_PLUS KP_MINUS 1 2"

    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lx/org/server/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    const/16 v2, 0xbb8

    .line 80
    sput v2, Lx/org/server/Globals;->StartupMenuButtonTimeout:I

    .line 81
    sput v3, Lx/org/server/Globals;->AppMinimumRAM:I

    .line 82
    new-array v2, v3, [Lx/org/server/SettingsMenu$Menu;

    sput-object v2, Lx/org/server/Globals;->HiddenMenuOptions:[Lx/org/server/SettingsMenu$Menu;

    .line 83
    new-array v2, v4, [Lx/org/server/SettingsMenu$Menu;

    new-instance v8, Lx/org/server/SettingsMenu$DummyMenu;

    invoke-direct {v8}, Lx/org/server/SettingsMenu$DummyMenu;-><init>()V

    aput-object v8, v2, v3

    sput-object v2, Lx/org/server/Globals;->FirstStartMenuOptions:[Lx/org/server/SettingsMenu$Menu;

    .line 84
    sput-object v1, Lx/org/server/Globals;->AdmobPublisherId:Ljava/lang/String;

    .line 85
    sput-object v1, Lx/org/server/Globals;->AdmobTestDeviceId:Ljava/lang/String;

    .line 86
    sput-object v1, Lx/org/server/Globals;->AdmobBannerSize:Ljava/lang/String;

    .line 87
    sput-object v1, Lx/org/server/Globals;->GooglePlayGameServicesId:Ljava/lang/String;

    .line 88
    sput-boolean v3, Lx/org/server/Globals;->AccessSdCard:Z

    const/16 v2, 0x10

    .line 91
    sput v2, Lx/org/server/Globals;->VideoDepthBpp:I

    .line 92
    sput-boolean v4, Lx/org/server/Globals;->HorizontalOrientation:Z

    .line 93
    sput-boolean v3, Lx/org/server/Globals;->AutoDetectOrientation:Z

    .line 94
    sput-boolean v4, Lx/org/server/Globals;->ImmersiveMode:Z

    .line 95
    sput-boolean v4, Lx/org/server/Globals;->DrawInDisplayCutout:Z

    .line 96
    sput-boolean v4, Lx/org/server/Globals;->HideSystemMousePointer:Z

    .line 97
    sput-boolean v4, Lx/org/server/Globals;->DownloadToSdcard:Z

    .line 98
    sput-boolean v3, Lx/org/server/Globals;->PhoneHasArrowKeys:Z

    .line 99
    sput-boolean v3, Lx/org/server/Globals;->UseAccelerometerAsArrowKeys:Z

    .line 100
    sput-boolean v4, Lx/org/server/Globals;->UseTouchscreenKeyboard:Z

    .line 101
    sput v4, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    .line 103
    sput v5, Lx/org/server/Globals;->TouchscreenKeyboardDrawSize:I

    .line 104
    sput v3, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    .line 105
    sput v5, Lx/org/server/Globals;->TouchscreenKeyboardTransparency:I

    .line 106
    sput-boolean v3, Lx/org/server/Globals;->FloatingScreenJoystick:Z

    .line 107
    sput v5, Lx/org/server/Globals;->AccelerometerSensitivity:I

    .line 108
    sput v5, Lx/org/server/Globals;->AccelerometerCenterPos:I

    .line 109
    sput v3, Lx/org/server/Globals;->AudioBufferConfig:I

    const/4 v8, 0x0

    .line 110
    sput-object v8, Lx/org/server/Globals;->OptionalDataDownload:[Z

    .line 111
    sget-boolean v8, Lx/org/server/Globals;->ForceRelativeMouseMode:Z

    const/4 v9, 0x7

    if-eqz v8, :cond_0

    const/4 v10, 0x7

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    sput v10, Lx/org/server/Globals;->LeftClickMethod:I

    const/16 v10, 0x17

    .line 112
    sput v10, Lx/org/server/Globals;->LeftClickKey:I

    .line 113
    sput v6, Lx/org/server/Globals;->LeftClickTimeout:I

    .line 114
    sput v7, Lx/org/server/Globals;->RightClickTimeout:I

    .line 115
    sget-boolean v10, Lx/org/server/Globals;->AppNeedsTwoButtonMouse:Z

    sput v10, Lx/org/server/Globals;->RightClickMethod:I

    const/16 v10, 0x52

    .line 116
    sput v10, Lx/org/server/Globals;->RightClickKey:I

    .line 117
    sput-boolean v3, Lx/org/server/Globals;->MoveMouseWithJoystick:Z

    .line 118
    sput v4, Lx/org/server/Globals;->MoveMouseWithJoystickSpeed:I

    .line 119
    sput v3, Lx/org/server/Globals;->MoveMouseWithJoystickAccel:I

    .line 120
    sput-boolean v3, Lx/org/server/Globals;->MoveMouseWithGyroscope:Z

    .line 121
    sput v5, Lx/org/server/Globals;->MoveMouseWithGyroscopeSpeed:I

    .line 122
    sput-boolean v3, Lx/org/server/Globals;->ClickMouseWithDpad:Z

    .line 123
    sput-boolean v8, Lx/org/server/Globals;->RelativeMouseMovement:Z

    .line 124
    sput-boolean v3, Lx/org/server/Globals;->ForceHardwareMouse:Z

    .line 125
    sput v5, Lx/org/server/Globals;->RelativeMouseMovementSpeed:I

    .line 126
    sput v3, Lx/org/server/Globals;->RelativeMouseMovementAccel:I

    .line 127
    sput v3, Lx/org/server/Globals;->ShowScreenUnderFinger:I

    .line 128
    sput v3, Lx/org/server/Globals;->ClickScreenPressure:I

    .line 129
    sput v3, Lx/org/server/Globals;->ClickScreenTouchspotSize:I

    .line 130
    sput-boolean v4, Lx/org/server/Globals;->FingerHover:Z

    .line 131
    sput-boolean v4, Lx/org/server/Globals;->HoverJitterFilter:Z

    .line 132
    sput-boolean v3, Lx/org/server/Globals;->GenerateSubframeTouchEvents:Z

    .line 133
    sget-boolean v8, Lx/org/server/Globals;->KeepAspectRatioDefaultSetting:Z

    sput-boolean v8, Lx/org/server/Globals;->KeepAspectRatio:Z

    .line 134
    sput-boolean v4, Lx/org/server/Globals;->TvBorders:Z

    const/16 v8, 0xff

    .line 135
    new-array v8, v8, [I

    sput-object v8, Lx/org/server/Globals;->RemapHwKeycode:[I

    const/16 v8, 0xc

    .line 136
    new-array v8, v8, [I

    sput-object v8, Lx/org/server/Globals;->RemapScreenKbKeycode:[I

    .line 139
    sget-boolean v8, Lx/org/server/Globals;->AppUsesThirdJoystick:Z

    const/16 v10, 0x320

    const/16 v11, 0x30

    const/16 v12, 0x12f

    const/16 v13, 0xd8

    const/16 v14, 0x138

    const/16 v15, 0x1e8

    const/16 v16, 0x5

    const/16 v0, 0x1e0

    const/16 v17, 0x1

    const/16 v4, 0x130

    const/16 v18, 0x2

    const/16 v5, 0x188

    const/16 v19, 0x3

    const/16 v6, 0x190

    if-eqz v8, :cond_1

    new-array v2, v2, [[I

    const/16 v8, 0xb1

    filled-new-array {v3, v12, v8, v0}, [I

    move-result-object v8

    aput-object v8, v2, v3

    filled-new-array {v3, v3, v11, v11}, [I

    move-result-object v8

    aput-object v8, v2, v17

    filled-new-array {v6, v5, v15, v0}, [I

    move-result-object v8

    aput-object v8, v2, v18

    filled-new-array {v14, v5, v6, v0}, [I

    move-result-object v8

    aput-object v8, v2, v19

    filled-new-array {v6, v4, v15, v5}, [I

    move-result-object v8

    aput-object v8, v2, v7

    filled-new-array {v14, v4, v6, v5}, [I

    move-result-object v8

    aput-object v8, v2, v16

    const/4 v8, 0x6

    filled-new-array {v6, v13, v15, v4}, [I

    move-result-object v11

    aput-object v11, v2, v8

    filled-new-array {v14, v13, v6, v4}, [I

    move-result-object v8

    aput-object v8, v2, v9

    const/16 v8, 0x26f

    filled-new-array {v8, v12, v10, v0}, [I

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v2, v9

    const/16 v8, 0x26f

    const/16 v9, 0x7e

    filled-new-array {v8, v9, v10, v12}, [I

    move-result-object v8

    const/16 v9, 0x9

    aput-object v8, v2, v9

    const/16 v8, 0xa

    filled-new-array {v6, v5, v15, v0}, [I

    move-result-object v9

    aput-object v9, v2, v8

    const/16 v8, 0xb

    filled-new-array {v14, v5, v6, v0}, [I

    move-result-object v0

    aput-object v0, v2, v8

    const/16 v0, 0xc

    filled-new-array {v6, v4, v15, v5}, [I

    move-result-object v8

    aput-object v8, v2, v0

    const/16 v0, 0xd

    filled-new-array {v14, v4, v6, v5}, [I

    move-result-object v5

    aput-object v5, v2, v0

    const/16 v0, 0xe

    filled-new-array {v6, v13, v15, v4}, [I

    move-result-object v5

    aput-object v5, v2, v0

    const/16 v0, 0xf

    filled-new-array {v14, v13, v6, v4}, [I

    move-result-object v4

    aput-object v4, v2, v0

    goto/16 :goto_1

    .line 158
    :cond_1
    sget-boolean v8, Lx/org/server/Globals;->AppUsesSecondJoystick:Z

    if-eqz v8, :cond_2

    new-array v2, v2, [[I

    const/16 v8, 0xb1

    filled-new-array {v3, v12, v8, v0}, [I

    move-result-object v8

    aput-object v8, v2, v3

    filled-new-array {v3, v3, v11, v11}, [I

    move-result-object v8

    aput-object v8, v2, v17

    filled-new-array {v6, v5, v15, v0}, [I

    move-result-object v8

    aput-object v8, v2, v18

    filled-new-array {v14, v5, v6, v0}, [I

    move-result-object v8

    aput-object v8, v2, v19

    filled-new-array {v6, v4, v15, v5}, [I

    move-result-object v8

    aput-object v8, v2, v7

    filled-new-array {v14, v4, v6, v5}, [I

    move-result-object v8

    aput-object v8, v2, v16

    const/4 v8, 0x6

    filled-new-array {v6, v13, v15, v4}, [I

    move-result-object v11

    aput-object v11, v2, v8

    filled-new-array {v14, v13, v6, v4}, [I

    move-result-object v8

    aput-object v8, v2, v9

    const/16 v8, 0x26f

    filled-new-array {v8, v12, v10, v0}, [I

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v2, v9

    const/16 v8, 0x9

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v9

    aput-object v9, v2, v8

    const/16 v8, 0xa

    filled-new-array {v6, v5, v15, v0}, [I

    move-result-object v9

    aput-object v9, v2, v8

    const/16 v8, 0xb

    filled-new-array {v14, v5, v6, v0}, [I

    move-result-object v0

    aput-object v0, v2, v8

    const/16 v0, 0xc

    filled-new-array {v6, v4, v15, v5}, [I

    move-result-object v8

    aput-object v8, v2, v0

    const/16 v0, 0xd

    filled-new-array {v14, v4, v6, v5}, [I

    move-result-object v5

    aput-object v5, v2, v0

    const/16 v0, 0xe

    filled-new-array {v6, v13, v15, v4}, [I

    move-result-object v5

    aput-object v5, v2, v0

    const/16 v0, 0xf

    filled-new-array {v14, v13, v6, v4}, [I

    move-result-object v4

    aput-object v4, v2, v0

    goto/16 :goto_1

    .line 177
    :cond_2
    new-array v2, v2, [[I

    const/16 v6, 0xb1

    filled-new-array {v3, v12, v6, v0}, [I

    move-result-object v6

    aput-object v6, v2, v3

    filled-new-array {v3, v3, v11, v11}, [I

    move-result-object v6

    aput-object v6, v2, v17

    const/16 v6, 0x2c8

    filled-new-array {v6, v5, v10, v0}, [I

    move-result-object v8

    aput-object v8, v2, v18

    const/16 v8, 0x270

    filled-new-array {v8, v5, v6, v0}, [I

    move-result-object v11

    aput-object v11, v2, v19

    filled-new-array {v6, v4, v10, v5}, [I

    move-result-object v11

    aput-object v11, v2, v7

    filled-new-array {v8, v4, v6, v5}, [I

    move-result-object v11

    aput-object v11, v2, v16

    const/4 v11, 0x6

    filled-new-array {v6, v13, v10, v4}, [I

    move-result-object v10

    aput-object v10, v2, v11

    filled-new-array {v8, v13, v6, v4}, [I

    move-result-object v6

    aput-object v6, v2, v9

    const/16 v6, 0x8

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v9

    aput-object v9, v2, v6

    const/16 v6, 0x9

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v9

    aput-object v9, v2, v6

    const/16 v6, 0xa

    const/16 v9, 0x218

    filled-new-array {v9, v5, v8, v0}, [I

    move-result-object v10

    aput-object v10, v2, v6

    const/16 v6, 0x1c0

    filled-new-array {v6, v5, v9, v0}, [I

    move-result-object v0

    const/16 v6, 0xb

    aput-object v0, v2, v6

    const/16 v0, 0xc

    filled-new-array {v9, v4, v8, v5}, [I

    move-result-object v6

    aput-object v6, v2, v0

    const/16 v0, 0x1c0

    filled-new-array {v0, v4, v9, v5}, [I

    move-result-object v0

    const/16 v5, 0xd

    aput-object v0, v2, v5

    const/16 v0, 0xe

    filled-new-array {v9, v13, v8, v4}, [I

    move-result-object v5

    aput-object v5, v2, v0

    const/16 v0, 0x1c0

    filled-new-array {v0, v13, v9, v4}, [I

    move-result-object v0

    const/16 v4, 0xf

    aput-object v0, v2, v4

    :goto_1
    sput-object v2, Lx/org/server/Globals;->ScreenKbControlsLayout:[[I

    .line 196
    array-length v0, v2

    new-array v0, v0, [Z

    sput-object v0, Lx/org/server/Globals;->ScreenKbControlsShown:[Z

    .line 197
    new-array v0, v7, [I

    sput-object v0, Lx/org/server/Globals;->RemapMultitouchGestureKeycode:[I

    .line 198
    new-array v0, v7, [Z

    sput-object v0, Lx/org/server/Globals;->MultitouchGesturesUsed:[Z

    .line 199
    sput v17, Lx/org/server/Globals;->MultitouchGestureSensitivity:I

    .line 200
    new-array v0, v7, [I

    sput-object v0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    .line 201
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx/org/server/Globals;->DataDir:Ljava/lang/String;

    .line 202
    sput-boolean v17, Lx/org/server/Globals;->VideoLinearFilter:Z

    .line 203
    sput-boolean v3, Lx/org/server/Globals;->MultiThreadedVideo:Z

    .line 205
    sput-boolean v3, Lx/org/server/Globals;->OuyaEmulation:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
