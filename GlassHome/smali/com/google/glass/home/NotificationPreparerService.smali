.class public Lcom/google/glass/home/NotificationPreparerService;
.super Landroid/app/Service;
.source "NotificationPreparerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final INVALID_NOTIFICATION_ID:I = -0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final timelineUpdateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private nextNotificationId:I

.field private notificationManager:Landroid/app/NotificationManager;

.field private final onContentReadyListener:Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

.field private final screenOffWifiSetupReceiver:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

.field private final timelineUpdatedReceiver:Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/NotificationPreparerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    sget-object v0, Lcom/google/glass/home/NotificationPreparerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "timelineUpdateReceiver"

    .line 35
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/NotificationPreparerService;->timelineUpdateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Lcom/google/glass/home/NotificationPreparerService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/NotificationPreparerService$1;-><init>(Lcom/google/glass/home/NotificationPreparerService;)V

    iput-object v0, p0, Lcom/google/glass/home/NotificationPreparerService;->onContentReadyListener:Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

    .line 52
    new-instance v0, Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;-><init>(Lcom/google/glass/home/NotificationPreparerService;Lcom/google/glass/home/NotificationPreparerService$1;)V

    iput-object v0, p0, Lcom/google/glass/home/NotificationPreparerService;->timelineUpdatedReceiver:Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/NotificationPreparerService;->nextNotificationId:I

    .line 60
    new-instance v0, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-direct {v0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/NotificationPreparerService;->screenOffWifiSetupReceiver:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/NotificationPreparerService;Lcom/google/glass/home/timeline/TimelineItemNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/NotificationPreparerService;
    .param p1, "x1"    # Lcom/google/glass/home/timeline/TimelineItemNotification;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationPreparerService;->sendSystemNotification(Lcom/google/glass/home/timeline/TimelineItemNotification;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/home/NotificationPreparerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/NotificationPreparerService;)Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/NotificationPreparerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/home/NotificationPreparerService;->onContentReadyListener:Lcom/google/glass/home/timeline/TimelineItemNotification$OnContentReadyListener;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/home/NotificationPreparerService;->timelineUpdateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private sendSystemNotification(Lcom/google/glass/home/timeline/TimelineItemNotification;)V
    .locals 11
    .param p1, "tin"    # Lcom/google/glass/home/timeline/TimelineItemNotification;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 100
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/TimelineItemNotification;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v3

    .line 101
    .local v3, "mainTimelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {p1}, Lcom/google/glass/home/timeline/TimelineItemNotification;->getBundleItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 103
    .local v0, "bundleTimelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    sget-object v5, Lcom/google/glass/home/NotificationPreparerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Notifying user of a timeline item: %s"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    if-nez v0, :cond_0

    .line 106
    invoke-static {p0, v3}, Lcom/google/glass/timeline/TimelineActivityHelper;->getShowSingleNotificationPendingIntent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 112
    .local v2, "intent":Landroid/app/PendingIntent;
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v1, "extras":Landroid/os/Bundle;
    const-string v5, "whitelist"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    const-string v5, "origin_source"

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v5, v2, v10}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 125
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 126
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 128
    .local v4, "notification":Landroid/app/Notification;
    iget v5, p0, Lcom/google/glass/home/NotificationPreparerService;->nextNotificationId:I

    add-int/lit8 v5, v5, 0x1

    const v6, 0x7fffffff

    rem-int/2addr v5, v6

    iput v5, p0, Lcom/google/glass/home/NotificationPreparerService;->nextNotificationId:I

    .line 129
    iget-object v5, p0, Lcom/google/glass/home/NotificationPreparerService;->notificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/google/glass/home/NotificationPreparerService;->nextNotificationId:I

    invoke-virtual {v5, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 130
    return-void

    .line 109
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "notification":Landroid/app/Notification;
    :cond_0
    invoke-static {p0, v3, v0}, Lcom/google/glass/timeline/TimelineActivityHelper;->getShowBundleNotificationPendingIntent(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/app/PendingIntent;

    move-result-object v2

    .restart local v2    # "intent":Landroid/app/PendingIntent;
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 71
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/home/NotificationPreparerService;->timelineUpdatedReceiver:Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 73
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/google/glass/home/NotificationPreparerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/google/glass/home/NotificationPreparerService;->notificationManager:Landroid/app/NotificationManager;

    .line 74
    iget-object v1, p0, Lcom/google/glass/home/NotificationPreparerService;->screenOffWifiSetupReceiver:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 79
    sget-object v1, Lcom/google/glass/home/NotificationPreparerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onDestroy called, this should only happen if the system is coming down."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 82
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/home/NotificationPreparerService;->screenOffWifiSetupReceiver:Lcom/google/glass/home/ScreenOffWifiSetupReceiver;

    invoke-virtual {v1}, Lcom/google/glass/home/ScreenOffWifiSetupReceiver;->unregister()V

    .line 83
    iget-object v1, p0, Lcom/google/glass/home/NotificationPreparerService;->timelineUpdatedReceiver:Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/NotificationPreparerService$TimelineUpdateBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 84
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 85
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 89
    sget-object v0, Lcom/google/glass/home/NotificationPreparerService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStartCommand"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method
