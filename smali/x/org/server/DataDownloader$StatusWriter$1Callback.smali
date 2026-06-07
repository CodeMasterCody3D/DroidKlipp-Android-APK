.class Lx/org/server/DataDownloader$StatusWriter$1Callback;
.super Ljava/lang/Object;
.source "DataDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/DataDownloader$StatusWriter;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field public Status:Landroid/widget/TextView;

.field public text:Landroid/text/SpannedString;

.field final synthetic this$1:Lx/org/server/DataDownloader$StatusWriter;


# direct methods
.method constructor <init>(Lx/org/server/DataDownloader$StatusWriter;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lx/org/server/DataDownloader$StatusWriter$1Callback;->this$1:Lx/org/server/DataDownloader$StatusWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 163
    iget-object v0, p0, Lx/org/server/DataDownloader$StatusWriter$1Callback;->Status:Landroid/widget/TextView;

    iget-object v1, p0, Lx/org/server/DataDownloader$StatusWriter$1Callback;->text:Landroid/text/SpannedString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
