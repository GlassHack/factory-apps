.class public Lcom/google/glass/maps/MapHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "map"

.field public static final KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final MAP_CACHE_MAX_BYTES:I = 0x400000

.field private static final MAP_RENDERING_SERVICE:Landroid/content/ComponentName;

.field private static final SCHEME:Ljava/lang/String; = "glass"

.field private static final UNBIND_SERVICE_PERIOD_MS:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

.field private final context:Landroid/content/Context;

.field private final futures:Ljava/util/Map;

.field private final handler:Landroid/os/Handler;

.field private final incoming:Landroid/os/Messenger;

.field private final mapCache:Landroid/util/LruCache;

.field private outgoing:Landroid/os/Messenger;

.field private final outstandingRequests:Ljava/util/Map;

.field private final queue:Ljava/util/Queue;

.field private final requestStateLock:Ljava/lang/Object;

.field private final serialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final unbindServiceRunnable:Ljava/lang/Runnable;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 108
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.maps"

    const-string v2, "com.google.glass.maps.service.MapRenderingService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/maps/MapHelper;->MAP_RENDERING_SERVICE:Landroid/content/ComponentName;

    .line 121
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/maps/MapHelper;->UNBIND_SERVICE_PERIOD_MS:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->serialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    .line 168
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    .line 169
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    .line 171
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    .line 175
    new-instance v0, Lcom/google/glass/maps/MapHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/MapHelper$1;-><init>(Lcom/google/glass/maps/MapHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->handler:Landroid/os/Handler;

    .line 181
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->incoming:Landroid/os/Messenger;

    .line 182
    new-instance v0, Lcom/google/glass/maps/MapHelper$2;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/MapHelper$2;-><init>(Lcom/google/glass/maps/MapHelper;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connection:Landroid/content/ServiceConnection;

    .line 197
    new-instance v0, Lcom/google/glass/maps/MapHelper$3;

    invoke-direct {v0, p0}, Lcom/google/glass/maps/MapHelper$3;-><init>(Lcom/google/glass/maps/MapHelper;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->unbindServiceRunnable:Ljava/lang/Runnable;

    .line 233
    new-instance v0, Lcom/google/glass/maps/MapHelper$4;

    const/high16 v1, 0x400000

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/MapHelper$4;-><init>(Lcom/google/glass/maps/MapHelper;I)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    .line 248
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    .line 249
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/MapHelper$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->cancelMapRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/maps/MapHelper;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/maps/MapHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/maps/MapHelper;->MAP_RENDERING_SERVICE:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/maps/MapHelper;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->flushQueue()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/maps/MapHelper;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/glass/maps/MapHelper;->handleIncomingMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/maps/MapHelper;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->handleDisconnection()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/maps/MapHelper;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/MapHelper;->handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/maps/MapHelper;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/maps/MapHelper;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/maps/MapHelper;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/maps/MapHelper;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private cancelMapRequest(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 378
    sget-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cancelling request: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;-><init>()V

    .line 380
    invoke-virtual {v0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setId(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 381
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 382
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->scheduleUnbind()V

    .line 388
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private connectIfNecessary()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 392
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 394
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    sget-object v1, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    if-ne v0, v1, :cond_0

    .line 395
    sget-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Opening connection to MapRenderingService from: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    sget-object v1, Lcom/google/glass/maps/MapHelper;->MAP_RENDERING_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 398
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v0, v3, v5}, Lcom/google/glass/util/IntentSender;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTING:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    sget-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "bindService() failed."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private flushQueue()V
    .locals 6

    .prologue
    .line 469
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 471
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 472
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    :try_start_0
    sget-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Sending %s requests"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 476
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 477
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "payload"

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 478
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->incoming:Landroid/os/Messenger;

    iput-object v0, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    :try_start_3
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->handleDisconnection()V

    .line 483
    sget-object v2, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "RemoteException"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 493
    :goto_1
    return-void

    .line 491
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->connectIfNecessary()V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/google/glass/maps/MapHelper$Provider;->getInstance()Lcom/google/glass/maps/MapHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/maps/MapHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v0

    return-object v0
.end method

.method private getNextId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->serialNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 443
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 444
    sget-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Connected to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    .line 446
    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->CONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 447
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->flushQueue()V

    .line 448
    return-void
.end method

.method private handleDisconnection()V
    .locals 4

    .prologue
    .line 452
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 453
    sget-object v0, Lcom/google/glass/maps/MapHelper$ConnectionState;->DISCONNECTED:Lcom/google/glass/maps/MapHelper$ConnectionState;

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->connectionState:Lcom/google/glass/maps/MapHelper$ConnectionState;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/MapHelper;->outgoing:Landroid/os/Messenger;

    .line 456
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 458
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/MapHelper$MapRendererFuture;

    .line 459
    new-instance v3, Lcom/google/glass/maps/MapHelper$MapRendererException;

    invoke-direct {v3}, Lcom/google/glass/maps/MapHelper$MapRendererException;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 461
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 462
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 463
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    sget-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Disconnected from MapRenderingService!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method private handleIncomingMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 411
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 419
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 420
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    iget-object v1, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/MapHelper$MapRendererFuture;

    .line 421
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    iget-object v4, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 422
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->scheduleUnbind()V

    .line 424
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    invoke-virtual {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->getImage()[B

    move-result-object v3

    .line 427
    sget-object v4, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Rendering succeeded: %s, %d bytes"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    aput-object v2, v6, v7

    array-length v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    if-eqz v1, :cond_1

    .line 429
    invoke-direct {p0, v1, v3}, Lcom/google/glass/maps/MapHelper;->putCachedMapPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;[B)V

    .line 433
    :goto_0
    invoke-virtual {v0, v3}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->set([B)Z

    .line 439
    :cond_0
    :goto_1
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    sget-object v1, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Invalid incoming message!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 431
    :cond_1
    sget-object v1, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Corresponding request not found!"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 435
    :cond_2
    sget-object v1, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Rendering failed: %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    aput-object v2, v4, v7

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    new-instance v1, Lcom/google/glass/maps/MapHelper$MapRendererException;

    invoke-direct {v1}, Lcom/google/glass/maps/MapHelper$MapRendererException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method public static isGlassMapUri(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "glass"

    .line 243
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "map"

    .line 244
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postFlushQueue()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/maps/MapHelper$7;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/MapHelper$7;-><init>(Lcom/google/glass/maps/MapHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 503
    return-void
.end method

.method private putCachedMapPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;[B)V
    .locals 7

    .prologue
    .line 268
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_CACHE_SIZE:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "s"

    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    .line 272
    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "p"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    .line 273
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 271
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 274
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private scheduleUnbind()V
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->unbindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 510
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->unbindServiceRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/glass/maps/MapHelper;->UNBIND_SERVICE_PERIOD_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 513
    :cond_0
    return-void
.end method


# virtual methods
.method public getCachedMapPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B
    .locals 8

    .prologue
    .line 258
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper;->mapCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 260
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_CACHE_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "h"

    if-eqz v0, :cond_0

    const-string v1, "1"

    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "p"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/glass/maps/MapHelper;->context:Landroid/content/Context;

    .line 263
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 261
    invoke-static {v4, v1, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 264
    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 261
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public renderMap(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/o;
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper;->renderMapToPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/MapHelper$5;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/MapHelper$5;-><init>(Lcom/google/glass/maps/MapHelper;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/f;->a(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/b;)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    return-object v0
.end method

.method public renderMap(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;)Lcom/google/common/util/concurrent/o;
    .locals 3

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper;->renderMap(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/google/glass/maps/MapHelper$6;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/glass/maps/MapHelper$6;-><init>(Lcom/google/glass/maps/MapHelper;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;Lcom/google/common/util/concurrent/o;)V

    .line 372
    invoke-static {}, Lcom/google/common/util/concurrent/r;->a()Lcom/google/common/util/concurrent/q;

    move-result-object v2

    .line 358
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 373
    return-object v0
.end method

.method public renderMapToPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/o;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper;->getCachedMapPng(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    sget-object v1, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Returning map from cache"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-static {v0}, Lcom/google/common/util/concurrent/f;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->getNextId()Ljava/lang/String;

    move-result-object v1

    .line 291
    sget-object v0, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Adding RENDER_MAP request: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 303
    invoke-virtual {v2, v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setId(Ljava/lang/String;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 304
    invoke-virtual {v2, v5}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 306
    new-instance v0, Lcom/google/glass/maps/MapHelper$MapRendererFuture;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/MapHelper$MapRendererFuture;-><init>(Lcom/google/glass/maps/MapHelper;Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/google/glass/maps/MapHelper;->requestStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 308
    :try_start_1
    iget-object v4, p0, Lcom/google/glass/maps/MapHelper;->queue:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->futures:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lcom/google/glass/maps/MapHelper;->outstandingRequests:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    invoke-direct {p0}, Lcom/google/glass/maps/MapHelper;->postFlushQueue()V

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    sget-object v1, Lcom/google/glass/maps/MapHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "unable to parse map render request proto."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
