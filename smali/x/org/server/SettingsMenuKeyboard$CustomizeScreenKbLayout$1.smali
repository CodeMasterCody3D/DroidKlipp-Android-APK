.class Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$1;
.super Ljava/lang/Object;
.source "SettingsMenuKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout;->run(Lx/org/server/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout;

.field final synthetic val$p:Lx/org/server/MainActivity;


# direct methods
.method constructor <init>(Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout;Lx/org/server/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 640
    iput-object p1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$1;->this$0:Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout;

    iput-object p2, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$1;->val$p:Lx/org/server/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 643
    new-instance v0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;

    iget-object v1, p0, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$1;->val$p:Lx/org/server/MainActivity;

    invoke-direct {v0, v1}, Lx/org/server/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;-><init>(Lx/org/server/MainActivity;)V

    const/4 v0, 0x4

    .line 644
    sput v0, Lx/org/server/Globals;->TouchscreenKeyboardSize:I

    return-void
.end method
