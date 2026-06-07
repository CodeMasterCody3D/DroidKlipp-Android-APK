.class public Lx/org/server/SettingsMenuMisc$StorageAccessConfig;
.super Lx/org/server/SettingsMenu$Menu;
.source "SettingsMenuMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/SettingsMenuMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageAccessConfig"
.end annotation


# static fields
.field public static REQUEST_STORAGE_ID:I = 0x2a


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 552
    invoke-direct {p0}, Lx/org/server/SettingsMenu$Menu;-><init>()V

    return-void
.end method

.method public static onActivityResult(Lx/org/server/MainActivity;IILandroid/content/Intent;)V
    .locals 1

    .line 558
    sget v0, Lx/org/server/SettingsMenuMisc$StorageAccessConfig;->REQUEST_STORAGE_ID:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    .line 560
    const-string v0, "SDL"

    if-ne p2, p1, :cond_0

    .line 562
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 563
    invoke-virtual {p0}, Lx/org/server/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 564
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Storage write permission granted to path "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 568
    :cond_0
    const-string p0, "Storage write permission rejected"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method run(Lx/org/server/MainActivity;)V
    .locals 2

    .line 581
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Lx/org/server/SettingsMenuMisc$StorageAccessConfig;->REQUEST_STORAGE_ID:I

    invoke-virtual {p1, v0, v1}, Lx/org/server/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 584
    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method

.method title(Lx/org/server/MainActivity;)Ljava/lang/String;
    .locals 1

    .line 575
    invoke-virtual {p1}, Lx/org/server/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lx/org/server/R$string;->storage_access:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
