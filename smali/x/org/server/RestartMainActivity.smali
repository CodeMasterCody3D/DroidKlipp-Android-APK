.class public Lx/org/server/RestartMainActivity;
.super Landroid/app/Activity;
.source "RestartMainActivity.java"


# static fields
.field public static final ACTIVITY_AUTODETECT_SCREEN_ORIENTATION:Ljava/lang/String; = "libsdl.org.ACTIVITY_AUTODETECT_SCREEN_ORIENTATION"

.field public static final SDL_RESTART_PARAMS:Ljava/lang/String; = "SDL_RESTART_PARAMS"


# instance fields
.field private _layout:Landroid/widget/LinearLayout;

.field private _tv:Landroid/widget/TextView;

.field private _videoLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lx/org/server/RestartMainActivity;->_tv:Landroid/widget/TextView;

    .line 146
    iput-object v0, p0, Lx/org/server/RestartMainActivity;->_layout:Landroid/widget/LinearLayout;

    .line 147
    iput-object v0, p0, Lx/org/server/RestartMainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 96
    const-string v0, "SDL"

    const-string v1, "Restarting main activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lx/org/server/RestartMainActivity;->requestWindowFeature(I)Z

    .line 100
    invoke-virtual {p0}, Lx/org/server/RestartMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 103
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lx/org/server/RestartMainActivity;->_layout:Landroid/widget/LinearLayout;

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    iget-object p1, p0, Lx/org/server/RestartMainActivity;->_layout:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual {p0}, Lx/org/server/RestartMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 110
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    .line 111
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lx/org/server/RestartMainActivity;->_tv:Landroid/widget/TextView;

    const/4 v2, 0x2

    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 113
    iget-object v1, p0, Lx/org/server/RestartMainActivity;->_tv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinLines(I)V

    .line 114
    iget-object v1, p0, Lx/org/server/RestartMainActivity;->_tv:Landroid/widget/TextView;

    sget v2, Lx/org/server/R$string;->restarting_please_wait:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v1, p0, Lx/org/server/RestartMainActivity;->_tv:Landroid/widget/TextView;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 116
    iget-object v1, p0, Lx/org/server/RestartMainActivity;->_tv:Landroid/widget/TextView;

    int-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double v2, v2, v4

    double-to-int v0, v2

    int-to-double v2, p1

    mul-double v2, v2, v4

    double-to-int p1, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    iget-object p1, p0, Lx/org/server/RestartMainActivity;->_layout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lx/org/server/RestartMainActivity;->_tv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lx/org/server/RestartMainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    .line 120
    iget-object v0, p0, Lx/org/server/RestartMainActivity;->_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 122
    iget-object p1, p0, Lx/org/server/RestartMainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lx/org/server/RestartMainActivity;->setContentView(Landroid/view/View;)V

    .line 124
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lx/org/server/RestartMainActivity$1;

    invoke-direct {v0, p0}, Lx/org/server/RestartMainActivity$1;-><init>(Lx/org/server/RestartMainActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
