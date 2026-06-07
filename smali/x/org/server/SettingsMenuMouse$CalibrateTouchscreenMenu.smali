.class Lx/org/server/SettingsMenuMouse$CalibrateTouchscreenMenu;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMouse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CalibrateTouchscreenMenu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 749
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method run(Lx/org/server/MainActivity;)V
    .locals 3

    .line 758
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lx/org/server/R$string;->calibrate_touchscreen_touch:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/org/server/MainActivity;->setText(Ljava/lang/String;)V

    .line 759
    sget-object v0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 760
    sget-object v0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 761
    sget-object v0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 762
    sget-object v0, Lx/org/server/Globals;->TouchscreenCalibration:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 763
    new-instance v0, Lx/org/server/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;

    invoke-direct {v0, p1}, Lx/org/server/SettingsMenuMouse$CalibrateTouchscreenMenu$ScreenEdgesCalibrationTool;-><init>(Lx/org/server/MainActivity;)V

    .line 764
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 765
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 753
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->calibrate_touchscreen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
