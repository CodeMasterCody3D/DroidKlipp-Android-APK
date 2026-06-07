.class Lx/org/server/Clipboard$OlderClipboard$Holder;
.super Ljava/lang/Object;
.source "Clipboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/Clipboard$OlderClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final Instance:Lx/org/server/Clipboard$OlderClipboard;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Lx/org/server/Clipboard$OlderClipboard;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/org/server/Clipboard$OlderClipboard;-><init>(Lx/org/server/Clipboard$1;)V

    sput-object v0, Lx/org/server/Clipboard$OlderClipboard$Holder;->Instance:Lx/org/server/Clipboard$OlderClipboard;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lx/org/server/Clipboard$OlderClipboard;
    .locals 1

    .line 107
    sget-object v0, Lx/org/server/Clipboard$OlderClipboard$Holder;->Instance:Lx/org/server/Clipboard$OlderClipboard;

    return-object v0
.end method
