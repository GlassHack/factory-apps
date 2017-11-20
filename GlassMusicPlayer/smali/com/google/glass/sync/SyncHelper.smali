.class public Lcom/google/glass/sync/SyncHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BACKOFF_SYNC_MODE_MAP:Ljava/util/Map;

.field private static final DEFAULT_SYNC_INTERVAL_SECONDS:J

.field public static final EXTRA_SYNC_SOURCE:Ljava/lang/String; = "sync_source"

.field public static final GCM_SYNC:Ljava/lang/String; = "com.google.glass.sync.GCM_SYNC"

.field private static final GLASSWARE_SYNC_INTERVAL_SECONDS:J

.field private static final LAST_SYNC_TIME_MAP:Ljava/util/Map;

.field private static final LOCATION_SYNC_INTERVAL_SECONDS:J

.field public static final PERIODIC_SYNC:Ljava/lang/String; = "com.google.glass.sync.PERIODIC_SYNC"

.field public static final POWER_CONNECTED_SYNC:Ljava/lang/String; = "com.google.glass.sync.POWER_CONNECTED_SYNC"

.field public static final TIMELINE_SYNC_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 70
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.sync"

    const-string v2, "com.google.glass.sync.TimelineSyncService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->TIMELINE_SYNC_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 79
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->DEFAULT_SYNC_INTERVAL_SECONDS:J

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->LOCATION_SYNC_INTERVAL_SECONDS:J

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/SyncHelper;->GLASSWARE_SYNC_INTERVAL_SECONDS:J

    .line 88
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    .line 95
    invoke-static {}, Lcom/google/common/collect/Maps;->newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/SyncHelper;->BACKOFF_SYNC_MODE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->BACKOFF_SYNC_MODE_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static clearLastSyncTimes()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 200
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 201
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 202
    return-void
.end method

.method public static disableSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 121
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 124
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static enableSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 104
    invoke-static {p1}, Lcom/google/glass/sync/SyncHelper;->getSyncIntervalSeconds(Ljava/lang/String;)J

    move-result-wide v0

    .line 105
    invoke-static {p0, p1, v4}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 106
    invoke-static {p0, p1, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 107
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 108
    const-string v3, "com.google.glass.sync.PERIODIC_SYNC"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-static {p0, p1, v2, v0, v1}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 110
    return-void
.end method

.method public static getSyncIntervalSeconds(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 189
    const-string v0, "com.google.glass.location"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-wide v0, Lcom/google/glass/sync/SyncHelper;->LOCATION_SYNC_INTERVAL_SECONDS:J

    .line 194
    :goto_0
    return-wide v0

    .line 191
    :cond_0
    const-string v0, "com.google.glass.boutique"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    sget-wide v0, Lcom/google/glass/sync/SyncHelper;->GLASSWARE_SYNC_INTERVAL_SECONDS:J

    goto :goto_0

    .line 194
    :cond_1
    sget-wide v0, Lcom/google/glass/sync/SyncHelper;->DEFAULT_SYNC_INTERVAL_SECONDS:J

    goto :goto_0
.end method

.method public static shouldPerformPeriodicSync(Lcom/google/glass/time/Clock;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 182
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    .line 183
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 184
    :goto_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/google/glass/sync/SyncHelper;->getSyncIntervalSeconds(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 185
    invoke-interface {p0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 183
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 145
    if-nez p0, :cond_1

    .line 146
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "There is no account to sync %s for"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v1, Lcom/google/glass/sync/SyncHelper$SyncRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/sync/SyncHelper$SyncRunnable;-><init>(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 153
    :try_start_0
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 154
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    .line 156
    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->executeIfNotQueued(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Pending sync request for %s already exists, skipping request."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/sync/SyncHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Trigger sync was unsuccessful because executor queue is full, skipping."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 132
    invoke-static {v0, p1, p2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 133
    return-void
.end method

.method public static updateBackoffSyncMode(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->BACKOFF_SYNC_MODE_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public static updateLastSyncTime(Lcom/google/glass/time/Clock;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 166
    sget-object v0, Lcom/google/glass/sync/SyncHelper;->LAST_SYNC_TIME_MAP:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method
