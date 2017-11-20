.class public Lcom/google/glass/boutique/PackageManagerServiceConnection;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "PackageManagerServiceConnection.java"


# static fields
.field private static final PACKAGE_MANAGER_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private service:Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.boutique"

    const-string v2, "com.google.glass.boutique.PackageManagerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->PACKAGE_MANAGER_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->PACKAGE_MANAGER_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->lock:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public getBoundService()Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;
    .locals 5

    .prologue
    .line 29
    iget-object v2, p0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 30
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->service:Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    if-nez v1, :cond_0

    .line 31
    sget-object v1, Lcom/google/glass/boutique/PackageManagerServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Waiting for PackageManagerService to be bound."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->lock:Ljava/lang/Object;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lcom/google/glass/boutique/PackageManagerServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while waiting for PackageManagerService to be connected."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const/4 v1, 0x0

    monitor-exit v2

    .line 43
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-object v1

    .line 42
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->service:Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    goto :goto_1

    .line 42
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "boundService"    # Landroid/os/IBinder;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Connected to PackageManagerService."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    check-cast p2, Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    .end local p2    # "boundService":Landroid/os/IBinder;
    iput-object p2, p0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->service:Lcom/google/glass/boutique/PackageManagerService$PackageManagerServiceBinder;

    .line 51
    iget-object v0, p0, Lcom/google/glass/boutique/PackageManagerServiceConnection;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/glass/boutique/PackageManagerServiceConnection;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Disconnected from PackageManagerService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method
