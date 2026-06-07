.class Lx/org/server/DataDownloader$StatusWriter;
.super Ljava/lang/Object;
.source "DataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/DataDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusWriter"
.end annotation


# instance fields
.field private Parent:Lx/org/server/MainActivity;

.field private Status:Landroid/widget/TextView;

.field private oldText:Landroid/text/SpannedString;

.field final synthetic this$0:Lx/org/server/DataDownloader;


# direct methods
.method public constructor <init>(Lx/org/server/DataDownloader;Landroid/widget/TextView;Lx/org/server/MainActivity;)V
    .locals 1

    .line 142
    iput-object p1, p0, Lx/org/server/DataDownloader$StatusWriter;->this$0:Lx/org/server/DataDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance p1, Landroid/text/SpannedString;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lx/org/server/DataDownloader$StatusWriter;->oldText:Landroid/text/SpannedString;

    .line 143
    iput-object p2, p0, Lx/org/server/DataDownloader$StatusWriter;->Status:Landroid/widget/TextView;

    .line 144
    iput-object p3, p0, Lx/org/server/DataDownloader$StatusWriter;->Parent:Lx/org/server/MainActivity;

    return-void
.end method


# virtual methods
.method public setParent(Landroid/widget/TextView;Lx/org/server/MainActivity;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lx/org/server/DataDownloader$StatusWriter;->this$0:Lx/org/server/DataDownloader;

    monitor-enter v0

    .line 149
    :try_start_0
    iput-object p1, p0, Lx/org/server/DataDownloader$StatusWriter;->Status:Landroid/widget/TextView;

    .line 150
    iput-object p2, p0, Lx/org/server/DataDownloader$StatusWriter;->Parent:Lx/org/server/MainActivity;

    .line 151
    iget-object p1, p0, Lx/org/server/DataDownloader$StatusWriter;->oldText:Landroid/text/SpannedString;

    invoke-virtual {p1}, Landroid/text/SpannedString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lx/org/server/DataDownloader$StatusWriter;->this$0:Lx/org/server/DataDownloader;

    monitor-enter v0

    .line 167
    :try_start_0
    new-instance v1, Lx/org/server/DataDownloader$StatusWriter$1Callback;

    invoke-direct {v1, p0}, Lx/org/server/DataDownloader$StatusWriter$1Callback;-><init>(Lx/org/server/DataDownloader$StatusWriter;)V

    .line 168
    new-instance v2, Landroid/text/SpannedString;

    invoke-direct {v2, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lx/org/server/DataDownloader$StatusWriter;->oldText:Landroid/text/SpannedString;

    .line 169
    new-instance v2, Landroid/text/SpannedString;

    invoke-direct {v2, p1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, v1, Lx/org/server/DataDownloader$StatusWriter$1Callback;->text:Landroid/text/SpannedString;

    .line 170
    iget-object p1, p0, Lx/org/server/DataDownloader$StatusWriter;->Status:Landroid/widget/TextView;

    iput-object p1, v1, Lx/org/server/DataDownloader$StatusWriter$1Callback;->Status:Landroid/widget/TextView;

    .line 171
    iget-object p1, p0, Lx/org/server/DataDownloader$StatusWriter;->Parent:Lx/org/server/MainActivity;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lx/org/server/DataDownloader$StatusWriter;->Status:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {p1, v1}, Lx/org/server/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
