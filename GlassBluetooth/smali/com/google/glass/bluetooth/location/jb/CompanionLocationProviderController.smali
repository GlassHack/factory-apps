.class public Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;
.super Ljava/lang/Object;
.source "CompanionLocationProviderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$1;,
        Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;
    }
.end annotation


# static fields
.field private static final MSG_TYPE_COMPANION_APP_CONNECTED:I = 0x4

.field private static final MSG_TYPE_COMPANION_APP_DISCONNECTED:I = 0x5

.field private static final MSG_TYPE_SERVICE_CONNECTED:I = 0x2

.field private static final MSG_TYPE_SERVICE_DISCONNECTED:I = 0x3

.field private static final MSG_TYPE_SET_LOCATION_TRACKING_ENABLED:I = 0x1

.field private static final MSG_TYPE_SET_MIN_TIME:I


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final messenger:Landroid/os/Messenger;

.field private final provider:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "provider"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    iput-object p2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->provider:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    .line 37
    new-instance v0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$MessageHandler;-><init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Landroid/os/Looper;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    .line 38
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->messenger:Landroid/os/Messenger;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->provider:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    return-object v0
.end method

.method static createOnNewThread(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;
    .locals 4
    .param p0, "provider"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    .prologue
    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    const-class v2, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Thread"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 50
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 52
    .local v1, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V

    .line 53
    new-instance v2, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-direct {v2, v1, p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;-><init>(Landroid/os/Looper;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;)V

    return-object v2
.end method


# virtual methods
.method declared-synchronized companionAppConnected()V
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized companionAppDisconnected()V
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->messenger:Landroid/os/Messenger;

    return-object v0
.end method

.method reportLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "reportLocation() [location=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->provider:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->reportLocation(Landroid/location/Location;)V

    .line 75
    return-void
.end method

.method declared-synchronized serviceConnected(Lcom/google/glass/companion/IRemoteCompanionService;)V
    .locals 3
    .param p1, "service"    # Lcom/google/glass/companion/IRemoteCompanionService;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 99
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method serviceDisconnected()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method declared-synchronized setLocationTrackingEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setMinTime(J)V
    .locals 3
    .param p1, "minTimeMs"    # J

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
