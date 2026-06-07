.class Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$2;
.super Ljava/lang/Object;
.source "SettingsMenuMisc.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$2;->this$0:Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig;

    iput-object p2, p0, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$2;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 247
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 248
    iget-object p1, p0, Lx/org/server/SettingsMenuMisc$OptionalDownloadConfig$2;->val$p:Lx/org/server/MainActivity;

    invoke-static {p1}, Lx/org/server/SettingsMenu;->goBack(Lx/org/server/MainActivity;)V

    return-void
.end method
