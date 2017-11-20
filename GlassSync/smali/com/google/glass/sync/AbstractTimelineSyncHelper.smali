.class abstract Lcom/google/glass/sync/AbstractTimelineSyncHelper;
.super Ljava/lang/Object;
.source "AbstractTimelineSyncHelper.java"


# instance fields
.field protected final application:Landroid/content/Context;

.field protected final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field protected final powerHelper:Lcom/google/glass/util/PowerHelper;

.field protected final syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

.field protected final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field protected final wifiHelper:Lcom/google/glass/util/WifiHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sync/SyncStatusReporter;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;)V
    .locals 0
    .param p1, "application"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "syncReporter"    # Lcom/google/glass/sync/SyncStatusReporter;
    .param p4, "batteryHelper"    # Lcom/google/glass/util/BatteryHelper;
    .param p5, "powerHelper"    # Lcom/google/glass/util/PowerHelper;
    .param p6, "wifiHelper"    # Lcom/google/glass/util/WifiHelper;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/glass/sync/AbstractTimelineSyncHelper;->application:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/google/glass/sync/AbstractTimelineSyncHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 33
    iput-object p3, p0, Lcom/google/glass/sync/AbstractTimelineSyncHelper;->syncReporter:Lcom/google/glass/sync/SyncStatusReporter;

    .line 34
    iput-object p4, p0, Lcom/google/glass/sync/AbstractTimelineSyncHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 35
    iput-object p5, p0, Lcom/google/glass/sync/AbstractTimelineSyncHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 36
    iput-object p6, p0, Lcom/google/glass/sync/AbstractTimelineSyncHelper;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    .line 37
    return-void
.end method


# virtual methods
.method protected createSyncRequest(Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    .locals 2
    .param p1, "settingsSecure"    # Lcom/google/glass/util/SettingsSecure;

    .prologue
    .line 40
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;-><init>()V

    .line 41
    .local v0, "request":Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;
    const-string v1, "android_id"

    invoke-virtual {p1, v1}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/TimelineSyncNano$TimelineSyncRequest;->deviceId:Ljava/lang/String;

    .line 42
    return-object v0
.end method

.method protected logSyncMetrics(Lcom/google/glass/userevent/UserEventAction;JJ)V
    .locals 10
    .param p1, "event"    # Lcom/google/glass/userevent/UserEventAction;
    .param p2, "bytes"    # J
    .param p4, "duration"    # J

    .prologue
    .line 46
    iget-object v5, p0, Lcom/google/glass/sync/AbstractTimelineSyncHelper;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, "1"

    .line 47
    .local v2, "isPowered":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/google/glass/sync/AbstractTimelineSyncHelper;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "1"

    .line 48
    .local v3, "isScreenOn":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/google/glass/sync/AbstractTimelineSyncHelper;->wifiHelper:Lcom/google/glass/util/WifiHelper;

    invoke-virtual {v5}, Lcom/google/glass/util/WifiHelper;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "1"

    .line 50
    .local v4, "isWifiConnected":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v5}, Lcom/google/glass/companion/RemoteCompanionProxy;->isCompanionWifiConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, "1"

    .line 52
    .local v1, "isCompanionWifiConnected":Ljava/lang/String;
    :goto_3
    const-string v5, "b"

    .line 53
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "l"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 54
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "p"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    const/4 v8, 0x4

    const-string v9, "s"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v3, v7, v8

    const/4 v8, 0x6

    const-string v9, "w"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    aput-object v4, v7, v8

    const/16 v8, 0x8

    const-string v9, "cw"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    aput-object v1, v7, v8

    .line 52
    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "data":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/sync/AbstractTimelineSyncHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v5, p1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 60
    return-void

    .line 46
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "isCompanionWifiConnected":Ljava/lang/String;
    .end local v2    # "isPowered":Ljava/lang/String;
    .end local v3    # "isScreenOn":Ljava/lang/String;
    .end local v4    # "isWifiConnected":Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    goto :goto_0

    .line 47
    .restart local v2    # "isPowered":Ljava/lang/String;
    :cond_1
    const-string v3, "0"

    goto :goto_1

    .line 48
    .restart local v3    # "isScreenOn":Ljava/lang/String;
    :cond_2
    const-string v4, "0"

    goto :goto_2

    .line 50
    .restart local v4    # "isWifiConnected":Ljava/lang/String;
    :cond_3
    const-string v1, "0"

    goto :goto_3
.end method
