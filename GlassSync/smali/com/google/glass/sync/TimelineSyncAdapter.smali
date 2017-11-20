.class public Lcom/google/glass/sync/TimelineSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "TimelineSyncAdapter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final syncHandler:Lcom/google/glass/sync/TimelineSyncHandler;

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/google/glass/time/Clock;Lcom/google/glass/sync/TimelineSyncHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoInitialize"    # Z
    .param p3, "clock"    # Lcom/google/glass/time/Clock;
    .param p4, "syncHandler"    # Lcom/google/glass/sync/TimelineSyncHandler;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 24
    const-string v0, "glass_sync"

    .line 25
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    iput-object p3, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->clock:Lcom/google/glass/time/Clock;

    .line 35
    iput-object p4, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/sync/TimelineSyncHandler;

    .line 36
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 37
    return-void
.end method


# virtual methods
.method public cancelOpportunisticUpload()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/sync/TimelineSyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncHandler;->cancelOpportunisticUpload()V

    .line 100
    return-void
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    .line 44
    .local v1, "origThreadPriority":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 46
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Entering onPerformSync [authority= %s, extras=%s]."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v5

    aput-object p2, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :try_start_0
    const-string v2, "com.google.glass.sync.PERIODIC_SYNC"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->clock:Lcom/google/glass/time/Clock;

    .line 49
    invoke-static {v2, p3}, Lcom/google/glass/sync/SyncHelper;->shouldPerformPeriodicSync(Lcom/google/glass/time/Clock;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Not performing periodic sync since it is too soon since our last sync"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 92
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x3

    const-class v4, Lcom/google/glass/sync/TimelineSyncAdapter;

    .line 55
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 57
    .local v0, "lock":Landroid/net/wifi/WifiManager$WifiLock;
    :try_start_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 58
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/sync/TimelineSyncHandler;

    invoke-virtual {v2}, Lcom/google/glass/sync/TimelineSyncHandler;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :try_start_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/sync/TimelineSyncHandler;

    invoke-virtual {v2}, Lcom/google/glass/sync/TimelineSyncHandler;->hasFailures()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    iget-object v2, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/content/SyncStats;->numIoExceptions:J

    .line 72
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->syncHandler:Lcom/google/glass/sync/TimelineSyncHandler;

    invoke-virtual {v2}, Lcom/google/glass/sync/TimelineSyncHandler;->hasServerFailures()Z

    move-result v2

    invoke-static {p3, v2}, Lcom/google/glass/sync/SyncHelper;->updateBackoffSyncMode(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Bundle;->clear()V

    .line 79
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Rescheduling another sync with backoff [delayUntil=%ssecs, syncResult=%s, authority=%s, extras=%s]."

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p5, Landroid/content/SyncResult;->delayUntil:J

    .line 81
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p5, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    .line 79
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_2
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    .end local v0    # "lock":Landroid/net/wifi/WifiManager$WifiLock;
    :catchall_1
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setPriority(I)V

    throw v2

    .line 84
    .restart local v0    # "lock":Landroid/net/wifi/WifiManager$WifiLock;
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncAdapter;->clock:Lcom/google/glass/time/Clock;

    invoke-static {v2, p3}, Lcom/google/glass/sync/SyncHelper;->updateLastSyncTime(Lcom/google/glass/time/Clock;Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x0

    invoke-static {p3, v2}, Lcom/google/glass/sync/SyncHelper;->updateBackoffSyncMode(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method
