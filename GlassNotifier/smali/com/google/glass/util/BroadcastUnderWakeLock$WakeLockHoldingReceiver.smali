.class Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastUnderWakeLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/BroadcastUnderWakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeLockHoldingReceiver"
.end annotation


# instance fields
.field private final wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

.field private final wakeLockName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wakeLockName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLockName:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/google/glass/util/BroadcastUnderWakeLock;->access$000(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 47
    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/glass/android/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 48
    invoke-direct {p0}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->acquireLock()V

    .line 49
    return-void
.end method

.method private acquireLock()V
    .locals 5

    .prologue
    .line 52
    invoke-static {}, Lcom/google/glass/util/BroadcastUnderWakeLock;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Acquiring broadcast wakelock: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLockName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v2, v3}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire(J)V

    .line 54
    return-void
.end method

.method private declared-synchronized releaseLock()V
    .locals 5

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/util/BroadcastUnderWakeLock;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Releasing broadcast wakelock: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLockName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/glass/util/BroadcastUnderWakeLock$WakeLockHoldingReceiver;->releaseLock()V

    .line 67
    return-void
.end method
