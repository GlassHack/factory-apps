.class public Lcom/google/glass/sync/AttachmentManager;
.super Ljava/lang/Object;
.source "AttachmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/AttachmentManager$AttachmentManagerConnection;,
        Lcom/google/glass/sync/AttachmentManager$Provider;
    }
.end annotation


# static fields
.field static final ATTACHMENT_SERVICE:Landroid/content/ComponentName;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final BINDING_TIMEOUT:J

.field public static final ERROR_NO_SUCH_ATTACHMENT:J = -0x1L

.field private static final connectionLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bindingLock:Ljava/lang/Object;

.field final connection:Lcom/google/glass/util/SafeServiceConnection;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field service:Lcom/google/glass/sync/IAttachmentService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 33
    const-string v0, "connection"

    .line 34
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/AttachmentManager;->connectionLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/AttachmentManager;->BINDING_TIMEOUT:J

    .line 39
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.sync"

    const-string v2, "com.google.glass.sync.AttachmentService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/sync/AttachmentManager;->ATTACHMENT_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->bindingLock:Ljava/lang/Object;

    .line 107
    iput-object p1, p0, Lcom/google/glass/sync/AttachmentManager;->context:Landroid/content/Context;

    .line 109
    new-instance v0, Lcom/google/glass/sync/AttachmentManager$AttachmentManagerConnection;

    sget-object v1, Lcom/google/glass/sync/AttachmentManager;->ATTACHMENT_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sync/AttachmentManager$AttachmentManagerConnection;-><init>(Lcom/google/glass/sync/AttachmentManager;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    .line 110
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/sync/AttachmentManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/AttachmentManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->bindingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/sync/AttachmentManager;->connectionLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private assertConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not connected to AttachmentService"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v1}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    .line 415
    .local v0, "isConnected":Z
    if-eqz v0, :cond_0

    .line 416
    sget-object v1, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Disconnecting from AttachmentManager."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    iget-object v2, p0, Lcom/google/glass/sync/AttachmentManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/util/SafeServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 420
    :cond_0
    return v0
.end method

.method public connect()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 429
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 431
    sget-object v6, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Connecting to AttachmentManager."

    new-array v8, v1, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iget-object v6, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    iget-object v7, p0, Lcom/google/glass/sync/AttachmentManager;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 434
    sget-object v6, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to make binding call to AttachmentManager."

    new-array v8, v1, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    :goto_0
    return v1

    .line 438
    :cond_0
    iget-object v6, p0, Lcom/google/glass/sync/AttachmentManager;->bindingLock:Ljava/lang/Object;

    monitor-enter v6

    .line 439
    :try_start_0
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    .line 440
    .local v0, "clock":Lcom/google/glass/time/Clock;
    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    .line 441
    .local v2, "initialTimestamp":J
    sget-wide v4, Lcom/google/glass/sync/AttachmentManager;->BINDING_TIMEOUT:J

    .line 444
    .local v4, "timeLeft":J
    :goto_1
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v1}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager;->bindingLock:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 446
    sget-wide v8, Lcom/google/glass/sync/AttachmentManager;->BINDING_TIMEOUT:J

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    sub-long v4, v8, v10

    goto :goto_1

    .line 448
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v1}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v1

    goto :goto_0

    .line 448
    .end local v0    # "clock":Lcom/google/glass/time/Clock;
    .end local v2    # "initialTimestamp":J
    .end local v4    # "timeLeft":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public decrementRefcount(Ljava/lang/String;)Z
    .locals 2
    .param p1, "localAttachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "localAttachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 323
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1}, Lcom/google/glass/sync/IAttachmentService;->decrementRefcount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteMappingsOlderThan(J)I
    .locals 1
    .param p1, "oldestTimestampMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 402
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 404
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->deleteMappingsOlderThan(J)I

    move-result v0

    return v0
.end method

.method public getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Path must be non-null and non-empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 386
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 388
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1}, Lcom/google/glass/sync/IAttachmentService;->getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedMillis(Ljava/lang/String;)J
    .locals 2
    .param p1, "localAttachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 338
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 339
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 341
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1}, Lcom/google/glass/sync/IAttachmentService;->getLastModifiedMillis(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/google/glass/io/FileType;
    .param p2, "attachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 173
    const-string v0, "type must be non-null."

    invoke-static {v0, p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "attachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    const-string v1, "Connection to AttachmentService not available."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertTrue(ZLjava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 178
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "attachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 202
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/glass/sync/IAttachmentService;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public incrementRefcount(Ljava/lang/String;)Z
    .locals 2
    .param p1, "localAttachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "localAttachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    const-string v1, "Connection to AttachmentService not available."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertTrue(ZLjava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 153
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1}, Lcom/google/glass/sync/IAttachmentService;->incrementRefcount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSynced(Ljava/lang/String;)Z
    .locals 2
    .param p1, "localAttachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "localAttachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 305
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1}, Lcom/google/glass/sync/IAttachmentService;->isSynced(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "localAttachmentId"    # Ljava/lang/String;
    .param p2, "attachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "localAttachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 285
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "attachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 288
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public openAttachment(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 5
    .param p1, "type"    # Lcom/google/glass/io/FileType;
    .param p2, "attachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 222
    const-string v1, "type must be non-null."

    invoke-static {v1, p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "attachmentId must not be null or empty."

    invoke-static {v1, v2}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 226
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v1, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->openAttachment(Lcom/google/glass/io/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 228
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    .line 229
    sget-object v1, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "File of type %s and ID %s was either not found or something else bad happened -- returning null."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const/4 v1, 0x0

    .line 234
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public openAttachment(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 6
    .param p1, "attachmentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "attachmentId must not be null or empty."

    invoke-static {v2, v3}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 259
    iget-object v2, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v2, v1, p1}, Lcom/google/glass/sync/IAttachmentService;->openAttachment(Lcom/google/glass/io/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 261
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    .line 262
    sget-object v2, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "File with ID %s was either not found or something else bad happened -- returning null."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public store(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/google/glass/io/FileType;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 129
    const-string v0, "type must not be null."

    invoke-static {v0, p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "path must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 133
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->store(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "remoteId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 353
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 355
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "Remote ID must be non-null and non-empty."

    invoke-static {v3, v4}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 358
    iget-object v3, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v3, p1}, Lcom/google/glass/sync/IAttachmentService;->getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "oldMapping":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 361
    sget-object v3, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Mapping already exists for path %s to remote ID %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object v0, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    sget-object v3, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Skipping duplicate store of remote ID %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    :goto_0
    return v1

    .line 367
    :cond_0
    sget-object v3, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Can\'t store mapping for path %s to %s when one already exists for %s!"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v1

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 369
    goto :goto_0

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v1, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
