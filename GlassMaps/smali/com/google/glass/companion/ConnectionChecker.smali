.class public Lcom/google/glass/companion/ConnectionChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;


# static fields
.field private static final CHECK_INTERVAL:J = 0xc350L

.field private static final JELLY_BEAN_MR1_VERSION_CODE:I = 0x11

.field private static final MAX_CONTINUAL_TETHERING_ERROR:I = 0x5

.field private static final REPORT_INTERVAL:J = 0xc350L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private companionService:Lcom/google/glass/companion/IRemoteCompanionService;

.field private final context:Landroid/content/Context;

.field private volatile isConnected:Z

.field private lastCheckTime:J

.field private lastReportErrorTime:J

.field private final messenger:Landroid/os/Messenger;

.field private final tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J

    .line 49
    iput-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/companion/ConnectionChecker$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/companion/ConnectionChecker$1;-><init>(Lcom/google/glass/companion/ConnectionChecker;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->messenger:Landroid/os/Messenger;

    .line 105
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/google/glass/companion/ConnectionChecker;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 107
    invoke-static {p0}, Lcom/google/glass/net/NetworkUtil;->setNetworkChecker(Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;)V

    .line 108
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/companion/ConnectionChecker;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/companion/ConnectionChecker;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/companion/ConnectionChecker;->sendTetheringErrorMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/companion/ConnectionChecker;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method private sendTetheringErrorMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    sget-object v0, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "xxxxSend tethering error message to glass."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    new-instance v0, Lcom/google/glass/companion/Proto$Error;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Error;-><init>()V

    .line 192
    iput v3, v0, Lcom/google/glass/companion/Proto$Error;->type:I

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 196
    :try_start_1
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 197
    invoke-virtual {v1, v0}, Lcom/google/glass/companion/Proto$Envelope;->setError(Lcom/google/glass/companion/Proto$Error;)Lcom/google/glass/companion/Proto$Envelope;

    .line 198
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->messenger:Landroid/os/Messenger;

    invoke-static {v1, v0}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-interface {v1, v0}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    sget-object v1, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error sending envelope to companion service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public check()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xc350

    .line 122
    iget-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    monitor-enter p0

    .line 128
    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v0, :cond_3

    .line 130
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastCheckTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-interface {v0}, Lcom/google/glass/companion/IRemoteCompanionService;->ping()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    sget-object v1, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error occurs while pinging."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public isTetheringErrorDetected()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportError()V
    .locals 7

    .prologue
    const-wide/32 v4, 0xc350

    .line 144
    iget-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->context:Landroid/content/Context;

    .line 152
    invoke-static {v0}, Lcom/google/glass/net/NetworkUtil;->hasTetheredConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-nez v0, :cond_3

    .line 155
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/companion/ConnectionChecker;->lastReportErrorTime:J

    .line 159
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->getNextUniqueId()J

    move-result-wide v0

    .line 160
    new-instance v2, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v2}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    .line 161
    iput-wide v0, v2, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    .line 162
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/glass/companion/Proto$CompanionInfo;->setRequestNetwork(Z)Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 163
    sget-object v3, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Requesting companion info, id = %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v2}, Lcom/google/glass/companion/Proto$Envelope;->setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope;

    .line 167
    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker;->messenger:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 169
    :try_start_2
    iget-object v1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-interface {v1, v0}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    sget-object v1, Lcom/google/glass/companion/ConnectionChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error sending envelope to companion service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public reportOK()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 179
    return-void
.end method

.method public declared-synchronized setCompanionService(Lcom/google/glass/companion/IRemoteCompanionService;)V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/companion/ConnectionChecker;->companionService:Lcom/google/glass/companion/IRemoteCompanionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConnectState(Z)V
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/glass/companion/ConnectionChecker;->isConnected:Z

    .line 116
    iget-object v0, p0, Lcom/google/glass/companion/ConnectionChecker;->tetheringProblemCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
