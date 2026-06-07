.class public Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchMeasurementTool"
.end annotation


# static fields
.field static final maxEventAmount:I = 0x64


# instance fields
.field force:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field p:Lx/org/server/MainActivity;

.field radius:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx/org/server/MainActivity;)V
    .locals 1

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->radius:Ljava/util/ArrayList;

    .line 704
    iput-object p1, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->p:Lx/org/server/MainActivity;

    return-void
.end method


# virtual methods
.method getAverageForce()I
    .locals 3

    .line 731
    iget-object v0, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 733
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 735
    :cond_0
    iget-object v0, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v1, v0

    return v1
.end method

.method getAverageRadius()I
    .locals 3

    .line 740
    iget-object v0, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->radius:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 742
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 744
    :cond_0
    iget-object v0, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->radius:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v1, v0

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 710
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->radius:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result p2

    float-to-double v1, p2

    mul-double v1, v1, v3

    double-to-int p2, v1

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lx/org/server/R$string;->measurepressure_response:I

    iget-object v1, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->radius:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v3

    invoke-virtual {p2, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lx/org/server/MainActivity;->setText(Ljava/lang/String;)V

    const-wide/16 p1, 0xa

    .line 714
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 717
    :goto_0
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->force:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x64

    if-lt p1, p2, :cond_0

    .line 719
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->p:Lx/org/server/MainActivity;

    invoke-virtual {p1}, Lx/org/server/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 720
    invoke-virtual {p0}, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->getAverageForce()I

    move-result p1

    sput p1, Lx/org/server/Globals;->ClickScreenPressure:I

    .line 721
    invoke-virtual {p0}, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->getAverageRadius()I

    move-result p1

    sput p1, Lx/org/server/Globals;->ClickScreenTouchspotSize:I

    .line 722
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SDL: measured average force "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lx/org/server/Globals;->ClickScreenPressure:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " radius "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lx/org/server/Globals;->ClickScreenTouchspotSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDL"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object p1, p0, Lx/org/server/SettingsMenuMouse$TouchPressureMeasurementTool$TouchMeasurementTool;->p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    :cond_0
    return v3
.end method
