.class public Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "GazeLoggingControlReceiver.java"


# static fields
.field public static final ACTION_GAZE_LOGGING:Ljava/lang/String; = "com.google.glass.action.GAZE_LOGGING_CONTROL"

.field public static final EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field public static final TAG:Ljava/lang/String;

.field private static final WAKE_LOCK_NAME:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->TAG:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 29
    sget-object v0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_WakeLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->WAKE_LOCK_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method

.method private acquireWakeLock(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->createWakeLockIfNeeded(Landroid/content/Context;)V

    .line 65
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire()V

    .line 66
    return-void
.end method

.method private createWakeLockIfNeeded(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->getPowerManager(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->WAKE_LOCK_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 80
    :cond_0
    return-void
.end method

.method private enableGazeLogger(Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 95
    invoke-static {p1}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/glass/eye/EyeGestureManager;->activateGazeLogging(Z)V

    .line 96
    invoke-direct {p0, p1}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->isGazeLoggerRunning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getPowerManager(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    return-object v0
.end method

.method private getRunningString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 87
    if-eqz p1, :cond_0

    const-string v0, "Running"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Stopped"

    goto :goto_0
.end method

.method private isGazeLoggerRunning(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-static {p1}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/eye/EyeGestureManager;->isGazeLogging()Z

    move-result v0

    return v0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "com.google.glass.action.GAZE_LOGGING_CONTROL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 38
    :cond_0
    sget-object v4, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unexpected intent action received: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-interface {v4, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :goto_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->acquireWakeLock(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->isGazeLoggerRunning(Landroid/content/Context;)Z

    move-result v0

    .line 51
    .local v0, "currentEnableState":Z
    const-string v4, "enable"

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 52
    .local v1, "newEnabledState":Z
    sget-object v2, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "GazeLogger current state = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->getRunningString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    sget-object v2, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Changing state to: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v1}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->getRunningString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-direct {p0, p1, v1}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->enableGazeLogger(Landroid/content/Context;Z)Z

    .line 57
    sget-object v2, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "GazeLogger new state = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->isGazeLoggerRunning(Landroid/content/Context;)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->getRunningString(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->releaseWakeLock()V

    goto :goto_0

    .end local v1    # "newEnabledState":Z
    :cond_2
    move v2, v3

    .line 51
    goto :goto_1

    .line 59
    .end local v0    # "currentEnableState":Z
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/GazeLoggingControlReceiver;->releaseWakeLock()V

    throw v2
.end method
