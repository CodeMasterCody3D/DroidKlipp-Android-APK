.class Lx/org/server/DimSystemStatusBar;
.super Ljava/lang/Object;
.source "MainActivity.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dim(Landroid/view/View;Landroid/view/Window;)V
    .locals 3

    .line 1591
    sget-boolean v0, Lx/org/server/Globals;->ImmersiveMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v0, v2, :cond_0

    .line 1597
    sget-boolean v0, Lx/org/server/Globals;->DrawInDisplayCutout:Z

    if-nez v0, :cond_2

    .line 1598
    invoke-static {p1, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    goto :goto_0

    .line 1600
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2

    .line 1603
    sget-boolean v0, Lx/org/server/Globals;->DrawInDisplayCutout:Z

    if-eqz v0, :cond_1

    .line 1604
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-static {p1, v1}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_0

    .line 1606
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_2
    :goto_0
    if-eqz p0, :cond_4

    const/16 p1, 0x1307

    .line 1610
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_3
    if-eqz p0, :cond_4

    .line 1622
    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    return-void
.end method
