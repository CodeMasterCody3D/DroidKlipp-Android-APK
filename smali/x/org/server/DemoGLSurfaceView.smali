.class Lx/org/server/DemoGLSurfaceView;
.super Lx/org/server/GLSurfaceView_SDL;
.source "Video.java"


# instance fields
.field mParent:Lx/org/server/MainActivity;

.field mRenderer:Lx/org/server/DemoRenderer;


# direct methods
.method public constructor <init>(Lx/org/server/MainActivity;)V
    .locals 6

    .line 1006
    invoke-direct {p0, p1}, Lx/org/server/GLSurfaceView_SDL;-><init>(Landroid/content/Context;)V

    .line 1007
    iput-object p1, p0, Lx/org/server/DemoGLSurfaceView;->mParent:Lx/org/server/MainActivity;

    .line 1008
    sget v1, Lx/org/server/Globals;->VideoDepthBpp:I

    sget-boolean v2, Lx/org/server/Globals;->NeedDepthBuffer:Z

    sget-boolean v3, Lx/org/server/Globals;->NeedStencilBuffer:Z

    sget-boolean v4, Lx/org/server/Globals;->NeedGles2:Z

    sget-boolean v5, Lx/org/server/Globals;->NeedGles3:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lx/org/server/DemoGLSurfaceView;->setEGLConfigChooser(IZZZZ)V

    .line 1009
    new-instance v0, Lx/org/server/DemoRenderer;

    invoke-direct {v0, p1}, Lx/org/server/DemoRenderer;-><init>(Lx/org/server/MainActivity;)V

    iput-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    .line 1010
    invoke-virtual {p0, v0}, Lx/org/server/DemoGLSurfaceView;->setRenderer(Lx/org/server/GLSurfaceView_SDL$Renderer;)V

    .line 1011
    invoke-static {p1}, Lx/org/server/DifferentTouchInput;->registerInputManagerCallbacks(Landroid/content/Context;)V

    .line 1012
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->app_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lx/org/server/DemoGLSurfaceView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static SetupTouchscreenKeyboardGraphics(Landroid/app/Activity;)V
    .locals 3

    .line 1256
    sget-boolean v0, Lx/org/server/Globals;->UseTouchscreenKeyboard:Z

    if-eqz v0, :cond_b

    .line 1258
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 1259
    sput v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    .line 1260
    :cond_0
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 1261
    sput v1, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    .line 1263
    :cond_1
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    if-nez v0, :cond_2

    .line 1264
    sget v0, Lx/org/server/R$raw;->xsdl:I

    invoke-static {p0, v0}, Lx/org/server/DemoGLSurfaceView;->loadRaw(Landroid/app/Activity;I)[B

    move-result-object v0

    invoke-static {v0}, Lx/org/server/Settings;->nativeSetupScreenKeyboardButtons([B)V

    .line 1265
    :cond_2
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 1266
    sget v0, Lx/org/server/R$raw;->simpletheme:I

    invoke-static {p0, v0}, Lx/org/server/DemoGLSurfaceView;->loadRaw(Landroid/app/Activity;I)[B

    move-result-object v0

    invoke-static {v0}, Lx/org/server/Settings;->nativeSetupScreenKeyboardButtons([B)V

    .line 1267
    :cond_3
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1268
    sget v0, Lx/org/server/R$raw;->sun:I

    invoke-static {p0, v0}, Lx/org/server/DemoGLSurfaceView;->loadRaw(Landroid/app/Activity;I)[B

    move-result-object v0

    invoke-static {v0}, Lx/org/server/Settings;->nativeSetupScreenKeyboardButtons([B)V

    .line 1269
    :cond_4
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 1270
    sget v0, Lx/org/server/R$raw;->keen:I

    invoke-static {p0, v0}, Lx/org/server/DemoGLSurfaceView;->loadRaw(Landroid/app/Activity;I)[B

    move-result-object v0

    invoke-static {v0}, Lx/org/server/Settings;->nativeSetupScreenKeyboardButtons([B)V

    .line 1271
    :cond_5
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 1272
    sget v0, Lx/org/server/R$raw;->retro:I

    invoke-static {p0, v0}, Lx/org/server/DemoGLSurfaceView;->loadRaw(Landroid/app/Activity;I)[B

    move-result-object v0

    invoke-static {v0}, Lx/org/server/Settings;->nativeSetupScreenKeyboardButtons([B)V

    .line 1273
    :cond_6
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 1274
    sget v0, Lx/org/server/R$raw;->gba:I

    invoke-static {p0, v0}, Lx/org/server/DemoGLSurfaceView;->loadRaw(Landroid/app/Activity;I)[B

    move-result-object v0

    invoke-static {v0}, Lx/org/server/Settings;->nativeSetupScreenKeyboardButtons([B)V

    .line 1275
    :cond_7
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    .line 1276
    sget v0, Lx/org/server/R$raw;->psx:I

    invoke-static {p0, v0}, Lx/org/server/DemoGLSurfaceView;->loadRaw(Landroid/app/Activity;I)[B

    move-result-object v0

    invoke-static {v0}, Lx/org/server/Settings;->nativeSetupScreenKeyboardButtons([B)V

    .line 1277
    :cond_8
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_9

    .line 1278
    sget v0, Lx/org/server/R$raw;->snes:I

    invoke-static {p0, v0}, Lx/org/server/DemoGLSurfaceView;->loadRaw(Landroid/app/Activity;I)[B

    move-result-object v0

    invoke-static {v0}, Lx/org/server/Settings;->nativeSetupScreenKeyboardButtons([B)V

    .line 1279
    :cond_9
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_a

    .line 1280
    sget v0, Lx/org/server/R$raw;->dualshock:I

    invoke-static {p0, v0}, Lx/org/server/DemoGLSurfaceView;->loadRaw(Landroid/app/Activity;I)[B

    move-result-object v0

    invoke-static {v0}, Lx/org/server/Settings;->nativeSetupScreenKeyboardButtons([B)V

    .line 1281
    :cond_a
    sget v0, Lx/org/server/Globals;->TouchscreenKeyboardTheme:I

    if-ne v0, v1, :cond_b

    .line 1282
    sget v0, Lx/org/server/R$raw;->n64:I

    invoke-static {p0, v0}, Lx/org/server/DemoGLSurfaceView;->loadRaw(Landroid/app/Activity;I)[B

    move-result-object p0

    invoke-static {p0}, Lx/org/server/Settings;->nativeSetupScreenKeyboardButtons([B)V

    :cond_b
    return-void
.end method

.method static loadRaw(Landroid/app/Activity;I)[B
    .locals 6

    const/high16 v0, 0x20000

    .line 1231
    new-array v0, v0, [B

    const/high16 v1, 0x500000

    .line 1232
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 1235
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    .line 1237
    :goto_0
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ltz p1, :cond_1

    add-int v4, p0, p1

    .line 1239
    array-length v5, v1

    if-le v4, v5, :cond_0

    .line 1241
    new-array v5, v4, [B

    .line 1242
    invoke-static {v1, v2, v5, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 1245
    :cond_0
    invoke-static {v0, v2, v1, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move p0, v4

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 1249
    :catch_1
    :cond_1
    new-array p1, p0, [B

    .line 1250
    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static native nativeGamepadAnalogJoystickInput(FFFFFFFFI)V
.end method

.method public static native nativeHardwareMouseDetected(I)V
.end method

.method public static native nativeKey(IIII)I
.end method

.method public static native nativeMotionEvent(IIIIII)V
.end method

.method public static native nativeMouseButtonsPressed(II)V
.end method

.method public static native nativeMouseWheel(II)V
.end method

.method public static native nativeScreenKeyboardShown(I)V
.end method

.method public static native nativeScreenVisibleRect(IIII)V
.end method


# virtual methods
.method public captureMouse(Z)V
    .locals 3

    const-wide/16 v0, 0x32

    const/16 v2, 0x1a

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1198
    invoke-virtual {p0, p1}, Lx/org/server/DemoGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 1199
    invoke-virtual {p0, p1}, Lx/org/server/DemoGLSurfaceView;->setFocusable(Z)V

    .line 1200
    invoke-virtual {p0}, Lx/org/server/DemoGLSurfaceView;->requestFocus()Z

    .line 1201
    sget-boolean p1, Lx/org/server/Globals;->HideSystemMousePointer:Z

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_1

    .line 1203
    new-instance p1, Lx/org/server/DemoGLSurfaceView$1;

    invoke-direct {p1, p0}, Lx/org/server/DemoGLSurfaceView$1;-><init>(Lx/org/server/DemoGLSurfaceView;)V

    invoke-virtual {p0, p1, v0, v1}, Lx/org/server/DemoGLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1215
    :cond_0
    sget-boolean p1, Lx/org/server/Globals;->HideSystemMousePointer:Z

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_1

    .line 1217
    new-instance p1, Lx/org/server/DemoGLSurfaceView$2;

    invoke-direct {p1, p0}, Lx/org/server/DemoGLSurfaceView$2;-><init>(Lx/org/server/DemoGLSurfaceView;)V

    invoke-virtual {p0, p1, v0, v1}, Lx/org/server/DemoGLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public exitApp()V
    .locals 1

    .line 1161
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    invoke-virtual {v0}, Lx/org/server/DemoRenderer;->exitApp()V

    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 1177
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v0, v0, Lx/org/server/DemoRenderer;->mPaused:Z

    return v0
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1123
    sget v0, Lx/org/server/DifferentTouchInput;->capturedMouseX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Lx/org/server/DifferentTouchInput;->capturedMouseX:F

    .line 1124
    sget v0, Lx/org/server/DifferentTouchInput;->capturedMouseY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Lx/org/server/DifferentTouchInput;->capturedMouseY:F

    .line 1125
    sget v0, Lx/org/server/DifferentTouchInput;->capturedMouseX:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1126
    sput v1, Lx/org/server/DifferentTouchInput;->capturedMouseX:F

    .line 1127
    :cond_0
    sget v0, Lx/org/server/DifferentTouchInput;->capturedMouseY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1128
    sput v1, Lx/org/server/DifferentTouchInput;->capturedMouseY:F

    .line 1129
    :cond_1
    sget v0, Lx/org/server/DifferentTouchInput;->capturedMouseX:F

    invoke-virtual {p0}, Lx/org/server/DemoGLSurfaceView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 1130
    invoke-virtual {p0}, Lx/org/server/DemoGLSurfaceView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    sput v0, Lx/org/server/DifferentTouchInput;->capturedMouseX:F

    .line 1131
    :cond_2
    sget v0, Lx/org/server/DifferentTouchInput;->capturedMouseY:F

    invoke-virtual {p0}, Lx/org/server/DemoGLSurfaceView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 1132
    invoke-virtual {p0}, Lx/org/server/DemoGLSurfaceView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    sput v0, Lx/org/server/DifferentTouchInput;->capturedMouseY:F

    .line 1138
    :cond_3
    sget v0, Lx/org/server/DifferentTouchInput;->capturedMouseX:F

    sget v1, Lx/org/server/DifferentTouchInput;->capturedMouseY:F

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    const/4 v0, 0x7

    .line 1139
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    const/16 v0, 0xa

    .line 1141
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x9

    .line 1142
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    .line 1144
    :cond_4
    invoke-static {v0, v1}, Lx/org/server/DemoGLSurfaceView;->nativeMouseWheel(II)V

    .line 1148
    :cond_5
    invoke-virtual {p0, p1}, Lx/org/server/DemoGLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1116
    sget-object v0, Lx/org/server/DifferentTouchInput;->touchInput:Lx/org/server/DifferentTouchInput;

    invoke-virtual {v0, p1}, Lx/org/server/DifferentTouchInput;->processGenericEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    .line 1022
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v2, 0x2002

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1024
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 1026
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    const v3, 0x20004

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 1032
    invoke-static {p1, v1}, Lx/org/server/DemoGLSurfaceView;->nativeMouseButtonsPressed(II)V

    return v1

    .line 1035
    :cond_2
    sget-boolean v0, Lx/org/server/MainActivity;->keyboardWithoutTextInputShown:Z

    if-eqz v0, :cond_3

    return v1

    .line 1041
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-static {v2}, Lx/org/server/DifferentTouchInput;->processGamepadDeviceId(Landroid/view/InputDevice;)I

    move-result v2

    invoke-static {p1, v1, v0, v2}, Lx/org/server/DemoGLSurfaceView;->nativeKey(IIII)I

    move-result v0

    if-nez v0, :cond_4

    .line 1042
    invoke-super {p0, p1, p2}, Lx/org/server/GLSurfaceView_SDL;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1082
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1085
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1087
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v1, p2, v2, p1}, Lx/org/server/DemoGLSurfaceView;->nativeKey(IIII)I

    .line 1088
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v1, p1, v2, p1}, Lx/org/server/DemoGLSurfaceView;->nativeKey(IIII)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 1053
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v3, 0x2002

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1055
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    .line 1057
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    const v4, 0x20004

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 1063
    invoke-static {p1, v1}, Lx/org/server/DemoGLSurfaceView;->nativeMouseButtonsPressed(II)V

    return v2

    .line 1066
    :cond_2
    sget-boolean v0, Lx/org/server/MainActivity;->keyboardWithoutTextInputShown:Z

    if-eqz v0, :cond_3

    .line 1068
    iget-object p1, p0, Lx/org/server/DemoGLSurfaceView;->mParent:Lx/org/server/MainActivity;

    invoke-virtual {p1, v1}, Lx/org/server/MainActivity;->showScreenKeyboardWithoutTextInputField(I)V

    return v2

    .line 1073
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-static {v3}, Lx/org/server/DifferentTouchInput;->processGamepadDeviceId(Landroid/view/InputDevice;)I

    move-result v3

    invoke-static {p1, v1, v0, v3}, Lx/org/server/DemoGLSurfaceView;->nativeKey(IIII)I

    move-result v0

    if-nez v0, :cond_4

    .line 1074
    invoke-super {p0, p1, p2}, Lx/org/server/GLSurfaceView_SDL;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public onPause()V
    .locals 2

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: DemoGLSurfaceView.onPause(): mRenderer.mGlSurfaceCreated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v1, v1, Lx/org/server/DemoRenderer;->mGlSurfaceCreated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRenderer.mPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v1, v1, Lx/org/server/DemoRenderer;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v1, v1, Lx/org/server/DemoRenderer;->mPaused:Z

    if-eqz v1, :cond_0

    const-string v1, " - not doing anything"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v0, v0, Lx/org/server/DemoRenderer;->mPaused:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1169
    :cond_1
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lx/org/server/DemoRenderer;->mPaused:Z

    .line 1170
    invoke-super {p0}, Lx/org/server/GLSurfaceView_SDL;->onPause()V

    .line 1171
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    invoke-virtual {v0}, Lx/org/server/DemoRenderer;->nativeGlContextLostAsyncEvent()V

    .line 1172
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-object v0, v0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    if-eqz v0, :cond_2

    .line 1173
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-object v0, v0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    invoke-virtual {v0}, Lx/org/server/AccelerometerReader;->stop()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPointerCaptureChange(Z)V
    .locals 2

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DemoGLSurfaceView::onPointerCaptureChange(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-super {p0, p1}, Lx/org/server/GLSurfaceView_SDL;->onPointerCaptureChange(Z)V

    .line 1156
    invoke-virtual {p0}, Lx/org/server/DemoGLSurfaceView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sput p1, Lx/org/server/DifferentTouchInput;->capturedMouseX:F

    .line 1157
    invoke-virtual {p0}, Lx/org/server/DemoGLSurfaceView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sput p1, Lx/org/server/DifferentTouchInput;->capturedMouseY:F

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "libSDL: DemoGLSurfaceView.onResume(): mRenderer.mGlSurfaceCreated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v1, v1, Lx/org/server/DemoRenderer;->mGlSurfaceCreated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRenderer.mPaused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v1, v1, Lx/org/server/DemoRenderer;->mPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v1, v1, Lx/org/server/DemoRenderer;->mPaused:Z

    if-nez v1, :cond_0

    const-string v1, " - not doing anything"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v0, v0, Lx/org/server/DemoRenderer;->mPaused:Z

    if-nez v0, :cond_1

    return-void

    .line 1185
    :cond_1
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lx/org/server/DemoRenderer;->mPaused:Z

    .line 1186
    invoke-super {p0}, Lx/org/server/GLSurfaceView_SDL;->onResume()V

    .line 1187
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v0, v0, Lx/org/server/DemoRenderer;->mGlSurfaceCreated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-boolean v0, v0, Lx/org/server/DemoRenderer;->mPaused:Z

    if-eqz v0, :cond_3

    :cond_2
    sget-boolean v0, Lx/org/server/Globals;->NonBlockingSwapBuffers:Z

    if-eqz v0, :cond_4

    .line 1188
    :cond_3
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    invoke-virtual {v0}, Lx/org/server/DemoRenderer;->nativeGlContextRecreated()V

    .line 1189
    :cond_4
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-object v0, v0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-object v0, v0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    iget-boolean v0, v0, Lx/org/server/AccelerometerReader;->openedBySDL:Z

    if-eqz v0, :cond_5

    .line 1190
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mRenderer:Lx/org/server/DemoRenderer;

    iget-object v0, v0, Lx/org/server/DemoRenderer;->accelerometer:Lx/org/server/AccelerometerReader;

    invoke-virtual {v0}, Lx/org/server/AccelerometerReader;->start()V

    :cond_5
    const/4 v0, 0x1

    .line 1191
    invoke-virtual {p0, v0}, Lx/org/server/DemoGLSurfaceView;->captureMouse(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1097
    sget-boolean v0, Lx/org/server/MainActivity;->keyboardWithoutTextInputShown:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mParent:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mParent:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    .line 1098
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mParent:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    iget-object v2, p0, Lx/org/server/DemoGLSurfaceView;->mParent:Lx/org/server/MainActivity;

    iget-object v2, v2, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1101
    iget-object v0, p0, Lx/org/server/DemoGLSurfaceView;->mParent:Lx/org/server/MainActivity;

    iget-object v0, v0, Lx/org/server/MainActivity;->_screenKeyboard:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    .line 1106
    :cond_0
    invoke-virtual {p0}, Lx/org/server/DemoGLSurfaceView;->getX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 1107
    invoke-virtual {p0}, Lx/org/server/DemoGLSurfaceView;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lx/org/server/DemoGLSurfaceView;->getY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1109
    :cond_1
    sget-object v0, Lx/org/server/DifferentTouchInput;->touchInput:Lx/org/server/DifferentTouchInput;

    invoke-virtual {v0, p1}, Lx/org/server/DifferentTouchInput;->process(Landroid/view/MotionEvent;)V

    return v1
.end method
