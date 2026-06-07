.class Lx/org/server/MainActivity$6Callback;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/MainActivity;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field Parent:Lx/org/server/MainActivity;

.field public text:Landroid/text/SpannedString;

.field final synthetic this$0:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/MainActivity;)V
    .locals 0

    .line 1176
    iput-object p1, p0, Lx/org/server/MainActivity$6Callback;->this$0:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1182
    iget-object v0, p0, Lx/org/server/MainActivity$6Callback;->Parent:Lx/org/server/MainActivity;

    invoke-virtual {v0}, Lx/org/server/MainActivity;->setUpStatusLabel()V

    .line 1183
    iget-object v0, p0, Lx/org/server/MainActivity$6Callback;->Parent:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$300(Lx/org/server/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lx/org/server/MainActivity$6Callback;->Parent:Lx/org/server/MainActivity;

    invoke-static {v0}, Lx/org/server/MainActivity;->access$300(Lx/org/server/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lx/org/server/MainActivity$6Callback;->text:Landroid/text/SpannedString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
