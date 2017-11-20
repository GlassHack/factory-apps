.class public Lcom/google/glass/connectivity/InetConnectionState;
.super Ljava/lang/Object;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;,
        Lcom/google/glass/connectivity/InetConnectionState$Listener;
    }
.end annotation


# static fields
.field private static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field private static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field private static final connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private connectivityReceiver:Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/connectivity/InetConnectionState$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private prevState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/connectivity/InetConnectionState;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    sget-object v0, Lcom/google/glass/connectivity/InetConnectionState;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "connectivityReceiver"

    .line 27
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/connectivity/InetConnectionState;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/connectivity/InetConnectionState;Lcom/google/glass/connectivity/InetConnectionState$1;)V

    iput-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState;->connectivityReceiver:Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState;->context:Landroid/content/Context;

    .line 55
    const-string v0, "connectivity"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 57
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState;->listeners:Ljava/util/Set;

    .line 58
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/connectivity/InetConnectionState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/connectivity/InetConnectionState;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/glass/connectivity/InetConnectionState;->prevState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/glass/connectivity/InetConnectionState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/connectivity/InetConnectionState;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/google/glass/connectivity/InetConnectionState;->prevState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/connectivity/InetConnectionState;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/connectivity/InetConnectionState;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/connectivity/InetConnectionState;->connectivityReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/glass/connectivity/InetConnectionState$Listener;

    .prologue
    .line 66
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 69
    iget-object v1, p0, Lcom/google/glass/connectivity/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 70
    .local v0, "shouldRegister":Z
    iget-object v1, p0, Lcom/google/glass/connectivity/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v2, p0, Lcom/google/glass/connectivity/InetConnectionState;->connectivityReceiver:Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

    .line 73
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/connectivity/InetConnectionState;->context:Landroid/content/Context;

    .line 72
    invoke-virtual {v2, v1, v3}, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 77
    :cond_0
    new-instance v2, Lcom/google/glass/connectivity/InetConnectionState$1;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/connectivity/InetConnectionState$1;-><init>(Lcom/google/glass/connectivity/InetConnectionState;Lcom/google/glass/connectivity/InetConnectionState$Listener;)V

    .line 93
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v1}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 92
    invoke-virtual {v2, v1, v3}, Lcom/google/glass/connectivity/InetConnectionState$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method

.method public isConnected()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lcom/google/glass/connectivity/InetConnectionState;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/google/glass/connectivity/InetConnectionState;->context:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 116
    const-string v2, "inetCondition"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V
    .locals 3
    .param p1, "l"    # Lcom/google/glass/connectivity/InetConnectionState$Listener;

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 99
    iget-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/glass/connectivity/InetConnectionState;->connectivityReceiver:Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

    .line 102
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/connectivity/InetConnectionState;->context:Landroid/content/Context;

    .line 101
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 104
    :cond_0
    return-void
.end method
