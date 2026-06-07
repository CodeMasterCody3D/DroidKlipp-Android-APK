.class Lx/org/server/Clipboard$NewerClipboard$Holder;
.super Ljava/lang/Object;
.source "Clipboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/org/server/Clipboard$NewerClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final Instance:Lx/org/server/Clipboard$NewerClipboard;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lx/org/server/Clipboard$NewerClipboard;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx/org/server/Clipboard$NewerClipboard;-><init>(Lx/org/server/Clipboard$1;)V

    sput-object v0, Lx/org/server/Clipboard$NewerClipboard$Holder;->Instance:Lx/org/server/Clipboard$NewerClipboard;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lx/org/server/Clipboard$NewerClipboard;
    .locals 1

    .line 66
    sget-object v0, Lx/org/server/Clipboard$NewerClipboard$Holder;->Instance:Lx/org/server/Clipboard$NewerClipboard;

    return-object v0
.end method
