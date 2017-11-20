.class public Lcom/google/glass/sync/DeviceStateAggregator;
.super Ljava/lang/Object;
.source "DeviceStateAggregator.java"


# instance fields
.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final context:Landroid/content/Context;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final powerHelper:Lcom/google/glass/util/PowerHelper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final timelineSyncServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryHelper"    # Lcom/google/glass/util/BatteryHelper;
    .param p3, "powerHelper"    # Lcom/google/glass/util/PowerHelper;
    .param p4, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;
    .param p5, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p6, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 54
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/sync/DeviceStateAggregator;-><init>(Landroid/content/Context;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/SafeServiceConnection;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/SafeServiceConnection;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryHelper"    # Lcom/google/glass/util/BatteryHelper;
    .param p3, "powerHelper"    # Lcom/google/glass/util/PowerHelper;
    .param p4, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;
    .param p5, "timelineItemDatabaseHelper"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .param p6, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p7, "timelineSyncServiceConnection"    # Lcom/google/glass/util/SafeServiceConnection;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v1, "glass_sync"

    .line 31
    invoke-static {p0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/sync/DeviceStateAggregator;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 67
    iput-object p1, p0, Lcom/google/glass/sync/DeviceStateAggregator;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/google/glass/sync/DeviceStateAggregator;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 69
    iput-object p3, p0, Lcom/google/glass/sync/DeviceStateAggregator;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 70
    iput-object p4, p0, Lcom/google/glass/sync/DeviceStateAggregator;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 71
    iput-object p5, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 72
    iput-object p6, p0, Lcom/google/glass/sync/DeviceStateAggregator;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 74
    move-object v0, p7

    .line 76
    .local v0, "tempConnection":Lcom/google/glass/util/SafeServiceConnection;
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/google/glass/sync/DeviceStateAggregator$1;

    .end local v0    # "tempConnection":Lcom/google/glass/util/SafeServiceConnection;
    sget-object v1, Lcom/google/glass/sync/SyncHelper;->TIMELINE_SYNC_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sync/DeviceStateAggregator$1;-><init>(Lcom/google/glass/sync/DeviceStateAggregator;Landroid/content/ComponentName;)V

    .line 97
    .restart local v0    # "tempConnection":Lcom/google/glass/util/SafeServiceConnection;
    :cond_0
    iput-object v0, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 101
    iget-object v1, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 102
    invoke-virtual {v1, p1}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/sync/DeviceStateAggregator;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/DeviceStateAggregator;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/sync/DeviceStateAggregator;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public getAllowedSyncProtocols()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/google/glass/sync/DeviceStateAggregator;->safeGetOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v0

    .line 114
    .local v0, "overridePolicy":Lcom/google/glass/sync/OverridePolicy;
    iget-object v2, p0, Lcom/google/glass/sync/DeviceStateAggregator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "The current override policy is [overridePolicy=%s]."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-array v2, v6, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 123
    .local v1, "syncProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/google/glass/sync/OverridePolicy;->PHOTOS:Lcom/google/glass/sync/OverridePolicy;

    invoke-virtual {v2, v0}, Lcom/google/glass/sync/OverridePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/glass/sync/OverridePolicy;->ALL_MEDIA:Lcom/google/glass/sync/OverridePolicy;

    .line 124
    invoke-virtual {v2, v0}, Lcom/google/glass/sync/OverridePolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 125
    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->shouldSyncOpportunisticItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v2, p0, Lcom/google/glass/sync/DeviceStateAggregator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "OPPORTUNISTIC sync protocol is in effect."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_1
    return-object v1
.end method

.method public notifyOfSyncItemComplete(Ljava/lang/String;Lcom/google/glass/sync/UploadResult;)V
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/google/glass/sync/UploadResult;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 173
    iget-object v6, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v6, :cond_0

    .line 175
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    invoke-interface {v6, p1}, Lcom/google/glass/sync/ITimelineSyncService;->notifySyncItemComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    iget-object v6, p0, Lcom/google/glass/sync/DeviceStateAggregator;->context:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.glass.sync.SYNC_STATUS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 183
    :cond_0
    iget-object v6, p0, Lcom/google/glass/sync/DeviceStateAggregator;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v6}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v3, "1"

    .line 184
    .local v3, "isPowered":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/google/glass/sync/DeviceStateAggregator;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v6}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "1"

    .line 185
    .local v4, "isScreenOn":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/google/glass/sync/DeviceStateAggregator;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v6}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "1"

    .line 187
    .local v5, "isWifiConnected":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v6}, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v2, "1"

    .line 190
    .local v2, "isCompanionWifiConnected":Ljava/lang/String;
    :goto_4
    const-string v6, "b"

    iget-wide v7, p2, Lcom/google/glass/sync/UploadResult;->bytesUploaded:J

    .line 191
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "l"

    aput-object v9, v8, v10

    iget-wide v9, p2, Lcom/google/glass/sync/UploadResult;->timeTakenMillis:J

    .line 192
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    const-string v10, "p"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    const/4 v9, 0x4

    const-string v10, "s"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    aput-object v4, v8, v9

    const/4 v9, 0x6

    const-string v10, "w"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    aput-object v5, v8, v9

    const/16 v9, 0x8

    const-string v10, "cw"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    aput-object v2, v8, v9

    .line 190
    invoke-static {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "data":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/sync/DeviceStateAggregator;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_FINISHED_SUCCESSFULLY:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v6, v7, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 199
    return-void

    .line 176
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "isCompanionWifiConnected":Ljava/lang/String;
    .end local v3    # "isPowered":Ljava/lang/String;
    .end local v4    # "isScreenOn":Ljava/lang/String;
    .end local v5    # "isWifiConnected":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/google/glass/sync/DeviceStateAggregator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to notify sync complete for item [timelineId=%s]."

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p1, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 183
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "0"

    goto :goto_1

    .line 184
    .restart local v3    # "isPowered":Ljava/lang/String;
    :cond_2
    const-string v4, "0"

    goto :goto_2

    .line 185
    .restart local v4    # "isScreenOn":Ljava/lang/String;
    :cond_3
    const-string v5, "0"

    goto :goto_3

    .line 187
    .restart local v5    # "isWifiConnected":Ljava/lang/String;
    :cond_4
    const-string v2, "0"

    goto :goto_4
.end method

.method public notifyOfSyncItemStart(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.glass.sync.SYNC_STATUS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "item_id"

    .line 153
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 154
    .local v1, "syncing":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/glass/sync/DeviceStateAggregator;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 156
    iget-object v2, p0, Lcom/google/glass/sync/DeviceStateAggregator;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_UPSTREAM_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 159
    iget-object v2, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v2, :cond_0

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    invoke-interface {v2, p1}, Lcom/google/glass/sync/ITimelineSyncService;->notifySyncItemStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/google/glass/sync/DeviceStateAggregator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to start syncing [timelineId=%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyOfTotalSyncComplete()V
    .locals 4

    .prologue
    .line 203
    iget-object v1, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    sget-object v2, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;

    invoke-interface {v1, v2}, Lcom/google/glass/sync/ITimelineSyncService;->setOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V

    .line 206
    iget-object v1, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    invoke-interface {v1}, Lcom/google/glass/sync/ITimelineSyncService;->notifySyncComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/sync/DeviceStateAggregator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to notify TimelineSyncService of upload sync completion."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public safeGetOverridePolicy()Lcom/google/glass/sync/OverridePolicy;
    .locals 4

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    .line 144
    invoke-interface {v1}, Lcom/google/glass/sync/ITimelineSyncService;->getOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    .line 144
    :cond_0
    sget-object v1, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/sync/DeviceStateAggregator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to get override policy."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget-object v1, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;

    goto :goto_0
.end method
