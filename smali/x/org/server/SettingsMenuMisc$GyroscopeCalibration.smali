.class Lx/org/server/SettingsMenuMisc$GyroscopeCalibration;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GyroscopeCalibration"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 536
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method enabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method run(Lx/org/server/MainActivity;)V
    .locals 0

    .line 548
    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 540
    const-string p1, ""

    return-object p1
.end method
