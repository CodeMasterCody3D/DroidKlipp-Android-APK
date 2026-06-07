.class Lx/org/server/SettingsMenuMisc$VideoSettingsConfig$1;
.super Ljava/lang/Object;
.source "SettingsMenuMisc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lx/org/server/SettingsMenuMisc$VideoSettingsConfig$1;->this$0:Lx/org/server/SettingsMenuMisc$VideoSettingsConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 392
    sput-boolean p3, Lx/org/server/Globals;->KeepAspectRatio:Z

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 394
    sput-boolean p3, Lx/org/server/Globals;->VideoLinearFilter:Z

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 396
    sput-boolean p3, Lx/org/server/Globals;->ImmersiveMode:Z

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 398
    sput-boolean p3, Lx/org/server/Globals;->DrawInDisplayCutout:Z

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    .line 400
    sput-boolean p3, Lx/org/server/Globals;->AutoDetectOrientation:Z

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_5

    xor-int/lit8 p1, p3, 0x1

    .line 402
    sput-boolean p1, Lx/org/server/Globals;->HorizontalOrientation:Z

    :cond_5
    const/4 p1, 0x6

    if-ne p2, p1, :cond_7

    if-eqz p3, :cond_6

    const/16 p1, 0x18

    goto :goto_0

    :cond_6
    const/16 p1, 0x10

    .line 404
    :goto_0
    sput p1, Lx/org/server/Globals;->VideoDepthBpp:I

    :cond_7
    const/4 p1, 0x7

    if-ne p2, p1, :cond_8

    .line 406
    sput-boolean p3, Lx/org/server/Globals;->TvBorders:Z

    :cond_8
    const/16 p1, 0x8

    if-ne p2, p1, :cond_9

    .line 408
    sput-boolean p3, Lx/org/server/Globals;->MultiThreadedVideo:Z

    :cond_9
    return-void
.end method
