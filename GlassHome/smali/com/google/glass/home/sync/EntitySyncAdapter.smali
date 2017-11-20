.class public Lcom/google/glass/home/sync/EntitySyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "EntitySyncAdapter.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private final handler:Lcom/google/glass/home/sync/EntitySyncHandler;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/EntitySyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;Z)V
    .locals 3
    .param p1, "application"    # Lcom/google/glass/home/HomeApplication;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "clock"    # Lcom/google/glass/time/Clock;
    .param p4, "autoInitialize"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p4}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 35
    iput-object p2, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 36
    iput-object p3, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->clock:Lcom/google/glass/time/Clock;

    .line 38
    new-instance v0, Lcom/google/glass/home/sync/EntitySyncHandler;

    new-instance v1, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;

    invoke-direct {v1}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/google/glass/home/sync/EntitySyncHandler;-><init>(Lcom/google/glass/home/HomeApplication;Lcom/google/glass/entity/EntityMetadataDatabaseHelper;Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/glass/time/Clock;)V

    iput-object v0, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->handler:Lcom/google/glass/home/sync/EntitySyncHandler;

    .line 40
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getPriority()I

    move-result v4

    .line 47
    .local v4, "origThreadPriority":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 49
    :try_start_0
    sget-object v6, Lcom/google/glass/home/sync/EntitySyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Starting Entity sync, extras are: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const-string v6, "com.google.glass.sync.PERIODIC_SYNC"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->clock:Lcom/google/glass/time/Clock;

    .line 52
    invoke-static {v6, p3}, Lcom/google/glass/sync/SyncHelper;->shouldPerformPeriodicSync(Lcom/google/glass/time/Clock;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 53
    sget-object v6, Lcom/google/glass/home/sync/EntitySyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Not performing periodic sync since it is too soon"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 107
    :goto_0
    return-void

    .line 57
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/glass/home/sync/EntitySyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v6

    const-string v7, "wifi"

    .line 60
    invoke-virtual {v6, v7}, Lcom/google/glass/home/HomeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 61
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v6, 0x3

    const-class v7, Lcom/google/glass/home/sync/EntitySyncAdapter;

    .line 62
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 63
    .local v3, "lock":Landroid/net/wifi/WifiManager$WifiLock;
    const/4 v1, 0x0

    .line 64
    .local v1, "hasFailures":Z
    const/4 v2, 0x0

    .line 66
    .local v2, "hasServerFailures":Z
    :try_start_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 68
    iget-object v6, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->handler:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v6}, Lcom/google/glass/home/sync/EntitySyncHandler;->syncEntities()V

    .line 69
    iget-object v6, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->handler:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v6}, Lcom/google/glass/home/sync/EntitySyncHandler;->hasFailures()Z

    move-result v1

    .line 70
    iget-object v6, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->handler:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v6}, Lcom/google/glass/home/sync/EntitySyncHandler;->hasServerFailures()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 75
    :try_start_3
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 80
    :cond_1
    iget-object v6, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 83
    if-eqz v1, :cond_3

    .line 86
    move-object/from16 v0, p5

    iget-object v6, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 90
    invoke-static {p3, v2}, Lcom/google/glass/sync/SyncHelper;->updateBackoffSyncMode(Ljava/lang/String;Z)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Bundle;->clear()V

    .line 97
    sget-object v6, Lcom/google/glass/home/sync/EntitySyncAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Rescheduling another sync with backoff [delayUntil=%ssecs, syncResult=%s, authority=%s, extras=%s]."

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p5

    iget-wide v10, v0, Landroid/content/SyncResult;->delayUntil:J

    .line 98
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p5, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    .line 97
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Thread;->setPriority(I)V

    goto/16 :goto_0

    .line 75
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 80
    :cond_2
    iget-object v7, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->ENTITY_SYNC_FINISHED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    .end local v1    # "hasFailures":Z
    .end local v2    # "hasServerFailures":Z
    .end local v3    # "lock":Landroid/net/wifi/WifiManager$WifiLock;
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catchall_1
    move-exception v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Thread;->setPriority(I)V

    throw v6

    .line 100
    .restart local v1    # "hasFailures":Z
    .restart local v2    # "hasServerFailures":Z
    .restart local v3    # "lock":Landroid/net/wifi/WifiManager$WifiLock;
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    :try_start_5
    iget-object v6, p0, Lcom/google/glass/home/sync/EntitySyncAdapter;->clock:Lcom/google/glass/time/Clock;

    invoke-static {v6, p3}, Lcom/google/glass/sync/SyncHelper;->updateLastSyncTime(Lcom/google/glass/time/Clock;Ljava/lang/String;)V

    .line 101
    const/4 v6, 0x0

    invoke-static {p3, v6}, Lcom/google/glass/sync/SyncHelper;->updateBackoffSyncMode(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method
