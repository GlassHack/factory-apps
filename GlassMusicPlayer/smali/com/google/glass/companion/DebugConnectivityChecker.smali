.class public Lcom/google/glass/companion/DebugConnectivityChecker;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final DELAY_MS:J = 0x7530L

.field private static final INITIAL_DELAY_MS:J = 0x1388L

.field private static final LOG_FILENAME:Ljava/lang/String; = "connectivity.log"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

.field private static wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/android/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;)Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    return-object p0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 111
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Starting companion connection debug."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/companion/DebugConnectivityChecker;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 117
    const-string v0, "connectivity.log"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 119
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 120
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    .line 121
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 123
    return-void
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping companion connection debug."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/companion/DebugConnectivityChecker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 130
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    .line 96
    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 99
    :cond_0
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    invoke-virtual {v0, v3}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->cancel(Z)Z

    .line 101
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 104
    :cond_1
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Acquiring wakelock for companion connection debug."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire()V

    .line 106
    new-instance v0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;-><init>(Lcom/google/glass/companion/DebugConnectivityChecker;Landroid/content/Context;)V

    sput-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    .line 107
    sget-object v0, Lcom/google/glass/companion/DebugConnectivityChecker;->pingTask:Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    return-void
.end method
