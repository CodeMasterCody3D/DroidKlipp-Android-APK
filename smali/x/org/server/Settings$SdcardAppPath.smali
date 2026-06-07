.class abstract Lx/org/server/Settings$SdcardAppPath;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SdcardAppPath"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/org/server/Settings$SdcardAppPath$Kitkat;,
        Lx/org/server/Settings$SdcardAppPath$Froyo;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deprecatedPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app-data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get()Lx/org/server/Settings$SdcardAppPath;
    .locals 1

    .line 756
    invoke-static {}, Lx/org/server/Settings$SdcardAppPath$Kitkat$Holder;->access$000()Lx/org/server/Settings$SdcardAppPath$Kitkat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allPaths(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    .line 774
    invoke-static {}, Lx/org/server/Settings$SdcardAppPath;->get()Lx/org/server/Settings$SdcardAppPath;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx/org/server/Settings$SdcardAppPath;->allPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bestPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 770
    invoke-static {}, Lx/org/server/Settings$SdcardAppPath;->get()Lx/org/server/Settings$SdcardAppPath;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx/org/server/Settings$SdcardAppPath;->bestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public path(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 762
    invoke-static {}, Lx/org/server/Settings$SdcardAppPath;->get()Lx/org/server/Settings$SdcardAppPath;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx/org/server/Settings$SdcardAppPath;->path(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEnv(Landroid/content/Context;)V
    .locals 1

    .line 766
    invoke-static {}, Lx/org/server/Settings$SdcardAppPath;->get()Lx/org/server/Settings$SdcardAppPath;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx/org/server/Settings$SdcardAppPath;->setEnv(Landroid/content/Context;)V

    return-void
.end method
