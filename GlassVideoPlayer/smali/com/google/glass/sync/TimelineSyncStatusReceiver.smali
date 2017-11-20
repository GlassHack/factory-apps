.class public Lcom/google/glass/sync/TimelineSyncStatusReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private lastItemId:Ljava/lang/String;

.field private listeners:Ljava/util/Set;

.field private final syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;-><init>(Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;)V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;

    .line 32
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->listeners:Ljava/util/Set;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->lastItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/sync/TimelineSyncStatusReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->lastItemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->broadcastLastItemIdToListeners()V

    return-void
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private broadcastLastItemIdToListeners()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;

    .line 78
    iget-object v2, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->lastItemId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;->onItemSyncing(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->lastItemId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;->onItemSyncing(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 39
    new-instance v1, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;-><init>(Lcom/google/glass/sync/TimelineSyncStatusReceiver;Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 54
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method public removeListener(Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;

    .line 61
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 60
    invoke-virtual {v1, v0, p1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 62
    return-void
.end method
