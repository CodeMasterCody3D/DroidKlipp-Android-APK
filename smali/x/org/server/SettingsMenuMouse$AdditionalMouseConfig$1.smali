.class Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$1;
.super Ljava/lang/Object;
.source "SettingsMenuMouse.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig$1;->this$0:Lx/org/server/SettingsMenuMouse$AdditionalMouseConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 463
    sput-boolean p3, Lx/org/server/Globals;->HoverJitterFilter:Z

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 465
    sput-boolean p3, Lx/org/server/Globals;->MoveMouseWithJoystick:Z

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 467
    sput-boolean p3, Lx/org/server/Globals;->ClickMouseWithDpad:Z

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 469
    sput-boolean p3, Lx/org/server/Globals;->RelativeMouseMovement:Z

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    .line 471
    sput-boolean p3, Lx/org/server/Globals;->MoveMouseWithGyroscope:Z

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_5

    .line 473
    sput-boolean p3, Lx/org/server/Globals;->FingerHover:Z

    :cond_5
    const/4 p1, 0x6

    if-ne p2, p1, :cond_6

    .line 475
    sput-boolean p3, Lx/org/server/Globals;->GenerateSubframeTouchEvents:Z

    :cond_6
    return-void
.end method
