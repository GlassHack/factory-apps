.class public Lcom/google/glass/util/PowerHelper;
.super Ljava/lang/Object;
.source "PowerHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private final powerManager:Lcom/google/glass/android/os/PowerManager;

.field private final wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/PowerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PowerHelper;->clock:Lcom/google/glass/time/Clock;

    .line 24
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Lcom/google/glass/android/os/PowerManager;

    .line 25
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Lcom/google/glass/android/os/PowerManager;

    const v1, 0x1000001a

    sget-object v2, Lcom/google/glass/util/PowerHelper;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 28
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/glass/android/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public dontStayAwake()V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 62
    :cond_0
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public goToSleep()V
    .locals 4

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 34
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Lcom/google/glass/android/os/PowerManager;

    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/glass/android/os/PowerManager;->goToSleep(J)V

    .line 35
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Lcom/google/glass/android/os/PowerManager;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public isStayingAwake()Z
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stayAwake()V
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire()V

    .line 41
    monitor-exit v1

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stayAwake(J)V
    .locals 3
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 51
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire(J)V

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Lcom/google/glass/android/os/PowerManager;

    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/google/glass/android/os/PowerManager;->userActivity(JZ)V

    .line 94
    return-void
.end method

.method public wakeUp()V
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->stayAwake()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->userActivity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 86
    monitor-exit v1

    .line 87
    return-void

    .line 84
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    throw v0

    .line 86
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
