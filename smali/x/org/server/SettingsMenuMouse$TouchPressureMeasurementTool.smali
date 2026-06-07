.class Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMouse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchPressureMeasurementTool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 678
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method enabled()Z
    .locals 2

    .line 686
    sget v0, Lx/org/server/Globals;->RightClickMethod:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget v0, Lx/org/server/Globals;->LeftClickMethod:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method run(Lx/org/server/MainActivity;)V
    .locals 2

    .line 691
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lx/org/server/R$string;->measurepressure_touchplease:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx/org/server/MainActivity;->setText(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;

    invoke-direct {v1, p1}, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;-><init>(Lx/org/server/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 682
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->measurepressure:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
