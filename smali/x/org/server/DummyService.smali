.class public Lx/org/server/DummyService;
.super Landroid/app/Service;
.source "DummyService.java"


# static fields
.field static CHANNEL_ID:Ljava/lang/String; = "app_running_ntf"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 p2, 0x5

    .line 110
    const-string p3, "android.intent.action.DELETE"

    const-string v0, "SDL"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    const-string p1, "User dismissed notification, killing myself"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0, p2}, Lx/org/server/DummyService;->stopSelfResult(I)Z

    .line 114
    invoke-virtual {p0, v1}, Lx/org/server/DummyService;->stopSelfResult(I)Z

    .line 115
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 117
    :cond_0
    const-string p1, "Starting dummy service - displaying notification"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p1, v0, :cond_1

    .line 121
    invoke-static {}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m()V

    sget-object p1, Lx/org/server/DummyService;->CHANNEL_ID:Ljava/lang/String;

    sget v0, Lx/org/server/R$string;->notification_app_is_running:I

    .line 122
    invoke-virtual {p0}, Lx/org/server/DummyService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v4}, Lx/org/server/DummyService;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {p0, v0, v5}, Lx/org/server/DummyService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 124
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lx/org/server/DummyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 125
    invoke-static {v0, p1}, Lx/org/server/AudioThread$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 129
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_2

    const/high16 p1, 0x12000000

    const/high16 v0, 0x12000000

    goto :goto_0

    :cond_2
    const/high16 p1, 0x10000000

    const/high16 v0, 0x10000000

    .line 137
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lx/org/server/DummyService;

    const/4 v6, 0x0

    invoke-direct {v4, p3, v6, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p2, v4, p1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 138
    new-instance p2, Landroid/content/Intent;

    const-string p3, ""

    const-class v4, Lx/org/server/MainActivity;

    invoke-direct {p2, p3, v6, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 140
    new-instance p3, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lx/org/server/DummyService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {p3, p0, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v0, Lx/org/server/R$drawable;->icon:I

    .line 141
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 142
    invoke-virtual {p0}, Lx/org/server/DummyService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v0}, Lx/org/server/DummyService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    sget v0, Lx/org/server/R$string;->notification_app_is_running:I

    .line 143
    invoke-virtual {p0}, Lx/org/server/DummyService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v4}, Lx/org/server/DummyService;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {p0, v0, v5}, Lx/org/server/DummyService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 144
    invoke-virtual {p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    sget p3, Lx/org/server/R$drawable;->close:I

    sget v0, Lx/org/server/R$string;->notification_stop:I

    .line 145
    invoke-virtual {p0, v0}, Lx/org/server/DummyService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 146
    invoke-virtual {p2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 147
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 p3, -0x2

    .line 148
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 150
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 151
    iput-object p1, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 153
    invoke-virtual {p0, v3, p2}, Lx/org/server/DummyService;->startForeground(ILandroid/app/Notification;)V

    return v2
.end method
