.class public Lcom/google/glass/sync/AttachmentManager;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 35
    const-string v0, "connection"

    .line 36
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/AttachmentManager;->connectionLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/AttachmentManager;->BINDING_TIMEOUT:J

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.sync"

    const-string v2, "com.google.glass.sync.AttachmentService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/sync/AttachmentManager;->ATTACHMENT_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->bindingLock:Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lcom/google/glass/sync/AttachmentManager;->context:Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/google/glass/sync/AttachmentManager$AttachmentManagerConnection;

    sget-object v1, Lcom/google/glass/sync/AttachmentManager;->ATTACHMENT_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sync/AttachmentManager$AttachmentManagerConnection;-><init>(Lcom/google/glass/sync/AttachmentManager;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    .line 112
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/sync/AttachmentManager;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->bindingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/glass/sync/AttachmentManager;->connectionLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private assertConnected()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    if-nez v0, :cond_1

    .line 116
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Not connected to AttachmentService"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 4

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    .line 417
    if-eqz v0, :cond_0

    .line 418
    sget-object v1, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Disconnecting from AttachmentManager."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    iget-object v2, p0, Lcom/google/glass/sync/AttachmentManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/util/SafeServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 422
    :cond_0
    return v0
.end method

.method public connect()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 431
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 433
    sget-object v1, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Connecting to AttachmentManager."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    iget-object v2, p0, Lcom/google/glass/sync/AttachmentManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/SafeServiceConnection;->isBindCalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    sget-object v1, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to make binding call to AttachmentManager."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    :goto_0
    return v0

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/google/glass/sync/AttachmentManager;->bindingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_0
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    .line 442
    invoke-interface {v3}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v4

    .line 443
    sget-wide v0, Lcom/google/glass/sync/AttachmentManager;->BINDING_TIMEOUT:J

    .line 446
    :goto_1
    iget-object v6, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v6}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 447
    iget-object v6, p0, Lcom/google/glass/sync/AttachmentManager;->bindingLock:Ljava/lang/Object;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 448
    sget-wide v0, Lcom/google/glass/sync/AttachmentManager;->BINDING_TIMEOUT:J

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long/2addr v0, v6

    goto :goto_1

    .line 450
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public decrementRefcount(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "localAttachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 325
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1}, Lcom/google/glass/sync/IAttachmentService;->decrementRefcount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteMappingsOlderThan(J)I
    .locals 1

    .prologue
    .line 403
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 404
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 406
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->deleteMappingsOlderThan(J)I

    move-result v0

    return v0
.end method

.method public getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Path must be non-null and non-empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 390
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1}, Lcom/google/glass/sync/IAttachmentService;->getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedMillis(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 339
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 341
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 343
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1}, Lcom/google/glass/sync/IAttachmentService;->getLastModifiedMillis(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 175
    const-string v0, "type must be non-null."

    invoke-static {v0, p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "attachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    const-string v1, "Connection to AttachmentService not available."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertTrue(ZLjava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 180
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "attachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 204
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/glass/sync/IAttachmentService;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public incrementRefcount(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "localAttachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    const-string v1, "Connection to AttachmentService not available."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertTrue(ZLjava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 155
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1}, Lcom/google/glass/sync/IAttachmentService;->incrementRefcount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSynced(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "localAttachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 307
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1}, Lcom/google/glass/sync/IAttachmentService;->isSynced(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "localAttachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 287
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "attachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 290
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->markAsSynced(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public openAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 4

    .prologue
    .line 223
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 224
    const-string v0, "type must be non-null."

    invoke-static {v0, p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "attachmentId must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 228
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->openAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 230
    if-nez v1, :cond_0

    .line 231
    sget-object v0, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "File of type %s and ID %s was either not found or something else bad happened -- returning null."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public openAttachment(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "attachmentId must not be null or empty."

    invoke-static {v1, v2}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 261
    iget-object v1, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v1, v0, p1}, Lcom/google/glass/sync/IAttachmentService;->openAttachment(Lcom/google/glass/util/FileType;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 263
    if-nez v1, :cond_0

    .line 264
    sget-object v1, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "File with ID %s was either not found or something else bad happened -- returning null."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public store(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 131
    const-string v0, "type must not be null."

    invoke-static {v0, p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "path must not be null or empty."

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 135
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->store(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 357
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Remote ID must be non-null and non-empty."

    invoke-static {v2, v3}, Lcom/google/glass/predicates/Assert;->assertFalse(ZLjava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lcom/google/glass/sync/AttachmentManager;->assertConnected()V

    .line 360
    iget-object v2, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v2, p1}, Lcom/google/glass/sync/IAttachmentService;->getIdMappingForPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    if-eqz v2, :cond_1

    .line 363
    sget-object v3, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Mapping already exists for path %s to remote ID %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    sget-object v2, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Skipping duplicate store of remote ID %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :goto_0
    return v0

    .line 369
    :cond_0
    sget-object v3, Lcom/google/glass/sync/AttachmentManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Can\'t store mapping for path %s to %s when one already exists for %s!"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v0

    aput-object v2, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 371
    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/google/glass/sync/AttachmentManager;->service:Lcom/google/glass/sync/IAttachmentService;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/sync/IAttachmentService;->storePathToIdMapping(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
