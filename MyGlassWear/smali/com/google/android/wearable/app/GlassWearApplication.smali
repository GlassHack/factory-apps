.class public Lcom/google/android/wearable/app/GlassWearApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "GlassWearApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;
    }
.end annotation


# static fields
.field private static final SETTING_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private bluetoothAdapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

.field private bluetoothAdapterStateListener:Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

.field private connectionListener:Lcom/google/android/wearable/app/PeerConnectionListener;

.field private glassDataListener:Lcom/google/android/wearable/app/GlassDataListener;

.field private glassMessageListener:Lcom/google/android/wearable/app/GlassMessageListener;

.field private glassStreamListener:Lcom/google/android/wearable/app/GlassStreamListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/wearable/app/GlassWearApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    .line 54
    new-instance v0, Lcom/google/android/wearable/app/GlassWearApplication$1;

    invoke-direct {v0, p0}, Lcom/google/android/wearable/app/GlassWearApplication$1;-><init>(Lcom/google/android/wearable/app/GlassWearApplication;)V

    iput-object v0, p0, Lcom/google/android/wearable/app/GlassWearApplication;->bluetoothAdapterStateListener:Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    .line 184
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/wearable/app/GlassWearApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/wearable/app/GlassWearApplication;)Lcom/google/glass/bluetooth/BluetoothAdapterState;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/wearable/app/GlassWearApplication;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/wearable/app/GlassWearApplication;->bluetoothAdapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    return-object v0
.end method

.method private addGlassWearListeners()V
    .locals 5

    .prologue
    .line 131
    sget-object v2, Lcom/google/android/wearable/app/GlassWearApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Adding Glass Wear listeners."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "apiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v1

    .line 135
    .local v1, "wearableClient":Lcom/google/android/wearable/gmsclient/WearableClient;
    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/WearableClient;->acquireApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 136
    new-instance v2, Lcom/google/android/wearable/app/GlassDataListener;

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/WearableClient;->getAssetManager()Lcom/google/android/wearable/gmsclient/AssetManager;

    move-result-object v3

    .line 137
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/wearable/app/GlassDataListener;-><init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    iput-object v2, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassDataListener:Lcom/google/android/wearable/app/GlassDataListener;

    .line 138
    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v3, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassDataListener:Lcom/google/android/wearable/app/GlassDataListener;

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/wearable/DataApi;->addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 139
    new-instance v2, Lcom/google/android/wearable/app/GlassMessageListener;

    invoke-direct {v2, p0}, Lcom/google/android/wearable/app/GlassMessageListener;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassMessageListener:Lcom/google/android/wearable/app/GlassMessageListener;

    .line 140
    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    iget-object v3, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassMessageListener:Lcom/google/android/wearable/app/GlassMessageListener;

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/wearable/MessageApi;->addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 141
    new-instance v2, Lcom/google/android/wearable/app/GlassStreamListener;

    invoke-direct {v2}, Lcom/google/android/wearable/app/GlassStreamListener;-><init>()V

    iput-object v2, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassStreamListener:Lcom/google/android/wearable/app/GlassStreamListener;

    .line 142
    invoke-static {}, Lcom/google/android/clockwork/stream/StreamManager;->getInstance()Lcom/google/android/clockwork/stream/StreamManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassStreamListener:Lcom/google/android/wearable/app/GlassStreamListener;

    invoke-virtual {v2, v3}, Lcom/google/android/clockwork/stream/StreamManager;->addListener(Lcom/google/android/clockwork/stream/StreamListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/android/wearable/app/GlassWearApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/WearableClient;->releaseApiClient()V

    .line 148
    :cond_0
    return-void

    .line 144
    .end local v1    # "wearableClient":Lcom/google/android/wearable/gmsclient/WearableClient;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/google/android/wearable/app/GlassWearApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/WearableClient;->releaseApiClient()V

    :cond_1
    throw v2
.end method

.method private removeGlassWearListeners()V
    .locals 4

    .prologue
    .line 151
    sget-object v1, Lcom/google/android/wearable/app/GlassWearApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Removing Glass Wear listeners."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "apiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/wearable/app/GlassWearApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/WearableClient;->acquireApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassDataListener:Lcom/google/android/wearable/app/GlassDataListener;

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v2, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassDataListener:Lcom/google/android/wearable/app/GlassDataListener;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/wearable/DataApi;->removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassDataListener:Lcom/google/android/wearable/app/GlassDataListener;

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassMessageListener:Lcom/google/android/wearable/app/GlassMessageListener;

    if-eqz v1, :cond_1

    .line 160
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    iget-object v2, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassMessageListener:Lcom/google/android/wearable/app/GlassMessageListener;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/wearable/MessageApi;->removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassMessageListener:Lcom/google/android/wearable/app/GlassMessageListener;

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassStreamListener:Lcom/google/android/wearable/app/GlassStreamListener;

    if-eqz v1, :cond_2

    .line 164
    invoke-static {}, Lcom/google/android/clockwork/stream/StreamManager;->getInstance()Lcom/google/android/clockwork/stream/StreamManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassStreamListener:Lcom/google/android/wearable/app/GlassStreamListener;

    invoke-virtual {v1, v2}, Lcom/google/android/clockwork/stream/StreamManager;->removeListener(Lcom/google/android/clockwork/stream/StreamListener;)V

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/wearable/app/GlassWearApplication;->glassStreamListener:Lcom/google/android/wearable/app/GlassStreamListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_2
    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/google/android/wearable/app/GlassWearApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/WearableClient;->releaseApiClient()V

    .line 172
    :cond_3
    return-void

    .line 168
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {p0}, Lcom/google/android/wearable/app/GlassWearApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/WearableClient;->releaseApiClient()V

    :cond_4
    throw v1
.end method


# virtual methods
.method protected createLogger()Lcom/google/android/clockwork/logging/WearableAppLogger;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lcom/google/android/clockwork/logging/WearableAppLogger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/clockwork/logging/WearableAppLogger;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 73
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 75
    invoke-static {p0}, Lcom/google/android/gsf/GservicesValue;->init(Landroid/content/Context;)V

    .line 77
    new-instance v5, Lcom/google/android/clockwork/host/WearableHost;

    invoke-direct {v5}, Lcom/google/android/clockwork/host/WearableHost;-><init>()V

    .line 78
    .local v5, "wearableHost":Lcom/google/android/clockwork/host/WearableHost;
    invoke-static {v5}, Lcom/google/android/clockwork/host/WearableHost;->setInstance(Lcom/google/android/clockwork/host/WearableHost;)V

    .line 80
    new-instance v6, Lcom/google/android/clockwork/host/WearableServiceRegistry;

    invoke-direct {v6, p0}, Lcom/google/android/clockwork/host/WearableServiceRegistry;-><init>(Landroid/content/Context;)V

    .line 81
    .local v6, "wearableServiceRegistry":Lcom/google/android/clockwork/host/WearableServiceRegistry;
    invoke-static {v6}, Lcom/google/android/clockwork/host/WearableServiceRegistry;->setInstance(Lcom/google/android/clockwork/host/WearableServiceRegistry;)V

    .line 83
    new-instance v7, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;

    invoke-direct {v7, p0}, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;-><init>(Lcom/google/android/wearable/app/GlassWearApplication;)V

    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v9, v10, [Ljava/lang/Void;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/wearable/app/GlassWearApplication$EnableNotificationListenerAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/wearable/app/GlassWearApplication;->createLogger()Lcom/google/android/clockwork/logging/WearableAppLogger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/clockwork/logging/WearableAppLogger;->start()Lcom/google/android/clockwork/logging/WearableAppLogger;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/clockwork/logging/WearableAppLogger;->setInstance(Lcom/google/android/clockwork/logging/WearableAppLogger;)V

    .line 87
    invoke-static {p0}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v4

    .line 88
    .local v4, "wearableClient":Lcom/google/android/wearable/gmsclient/WearableClient;
    invoke-virtual {v4}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v0

    .line 89
    .local v0, "dataManager":Lcom/google/android/wearable/gmsclient/DataManager;
    invoke-virtual {v4}, Lcom/google/android/wearable/gmsclient/WearableClient;->getRpcManager()Lcom/google/android/wearable/gmsclient/MessageManager;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/clockwork/actions/WearableHostWithRpcCallback;->setRpcManager(Lcom/google/android/wearable/gmsclient/MessageManager;)V

    .line 90
    new-instance v7, Lcom/google/android/wearable/app/PeerConnectionListener;

    invoke-direct {v7, p0, v0}, Lcom/google/android/wearable/app/PeerConnectionListener;-><init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;)V

    iput-object v7, p0, Lcom/google/android/wearable/app/GlassWearApplication;->connectionListener:Lcom/google/android/wearable/app/PeerConnectionListener;

    .line 91
    iget-object v7, p0, Lcom/google/android/wearable/app/GlassWearApplication;->connectionListener:Lcom/google/android/wearable/app/PeerConnectionListener;

    invoke-virtual {v5, v7}, Lcom/google/android/clockwork/host/WearableHost;->addConnectionListener(Lcom/google/android/clockwork/host/WearableHostConnectionListener;)V

    .line 93
    invoke-static {p0, v0}, Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;->initializeInstance(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;)Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;

    move-result-object v1

    .line 94
    .local v1, "mutedAppsList":Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;
    const-string v7, "mutedapps"

    invoke-virtual {v5, v7, v1}, Lcom/google/android/clockwork/host/WearableHost;->addListenerForFeature(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/WearableListener;)V

    .line 96
    new-instance v3, Lcom/google/android/clockwork/stream/StreamManager;

    new-instance v7, Lcom/google/android/clockwork/stream/StreamFiltererImpl;

    invoke-direct {v7, v1}, Lcom/google/android/clockwork/stream/StreamFiltererImpl;-><init>(Lcom/google/android/apps/wearable/mutedapps/MutedAppsList;)V

    invoke-direct {v3, p0, v4, v7}, Lcom/google/android/clockwork/stream/StreamManager;-><init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/WearableClient;Lcom/google/android/clockwork/stream/StreamFilterer;)V

    .line 98
    .local v3, "streamManager":Lcom/google/android/clockwork/stream/StreamManager;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/google/android/clockwork/stream/StreamManager;->setRemoteViewsDisabled(Z)V

    .line 99
    invoke-static {v3}, Lcom/google/android/clockwork/stream/StreamManager;->setInstance(Lcom/google/android/clockwork/stream/StreamManager;)V

    .line 101
    new-instance v2, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;

    invoke-virtual {p0}, Lcom/google/android/wearable/app/GlassWearApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 102
    invoke-virtual {p0}, Lcom/google/android/wearable/app/GlassWearApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v8

    invoke-direct {v2, v7, v4, v8}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;-><init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/WearableClient;Landroid/support/v4/app/NotificationManagerCompat;)V

    .line 103
    .local v2, "notificationBridger":Lcom/google/android/clockwork/stream/bridger/NotificationBridger;
    invoke-virtual {v2, v3}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->setStreamManager(Lcom/google/android/clockwork/stream/StreamManager;)V

    .line 104
    invoke-virtual {v2, v10}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->setIsNotificationSource(Z)V

    .line 105
    invoke-static {v2}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->setInstance(Lcom/google/android/clockwork/stream/bridger/NotificationBridger;)V

    .line 106
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/bridger/NotificationBridger;->start()V

    .line 108
    invoke-direct {p0}, Lcom/google/android/wearable/app/GlassWearApplication;->addGlassWearListeners()V

    .line 110
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/google/android/clockwork/stream/NotificationCollectorMonitorService;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/google/android/wearable/app/GlassWearApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/google/android/wearable/app/GlassWearApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 113
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/google/android/wearable/app/KeepAliveService;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/google/android/wearable/app/GlassWearApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    const-string v7, "WearableHost"

    invoke-static {v7, v5}, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->addDumpable(Ljava/lang/String;Lcom/google/android/wearable/util/Dumpable;)V

    .line 116
    new-instance v7, Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-direct {v7, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/google/android/wearable/app/GlassWearApplication;->bluetoothAdapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    .line 117
    iget-object v7, p0, Lcom/google/android/wearable/app/GlassWearApplication;->bluetoothAdapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    iget-object v8, p0, Lcom/google/android/wearable/app/GlassWearApplication;->bluetoothAdapterStateListener:Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    invoke-virtual {v7, v8}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->addListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 118
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/wearable/app/GlassWearApplication;->bluetoothAdapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    iget-object v1, p0, Lcom/google/android/wearable/app/GlassWearApplication;->bluetoothAdapterStateListener:Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->removeListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 124
    invoke-static {}, Lcom/google/android/clockwork/host/WearableHost;->getInstance()Lcom/google/android/clockwork/host/WearableHost;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/wearable/app/GlassWearApplication;->connectionListener:Lcom/google/android/wearable/app/PeerConnectionListener;

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/host/WearableHost;->removeConnectionListener(Lcom/google/android/clockwork/host/WearableHostConnectionListener;)V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/wearable/app/GlassWearApplication;->connectionListener:Lcom/google/android/wearable/app/PeerConnectionListener;

    .line 126
    invoke-direct {p0}, Lcom/google/android/wearable/app/GlassWearApplication;->removeGlassWearListeners()V

    .line 127
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onTerminate()V

    .line 128
    return-void
.end method
