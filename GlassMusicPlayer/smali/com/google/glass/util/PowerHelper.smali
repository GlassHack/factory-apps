.class public Lcom/google/glass/util/PowerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .line 17
    const-class v0, Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/PowerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PowerHelper;->clock:Lcom/google/glass/time/Clock;

    .line 25
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Lcom/google/glass/android/os/PowerManager;

    .line 26
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Lcom/google/glass/android/os/PowerManager;

    const v1, 0x1000001a

    sget-object v2, Lcom/google/glass/util/PowerHelper;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 29
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/glass/android/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public dontStayAwake()V
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public goToSleep()V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 35
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Lcom/google/glass/android/os/PowerManager;

    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->goToSleep(J)V

    .line 36
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Lcom/google/glass/android/os/PowerManager;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public isStayingAwake()Z
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stayAwake()V
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire()V

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stayAwake(J)V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire(J)V

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/util/PowerHelper;->powerManager:Lcom/google/glass/android/os/PowerManager;

    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/android/os/PowerManager;->userActivity(JZ)V

    .line 95
    return-void
.end method

.method public wakeUp()V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/glass/util/PowerHelper;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->stayAwake()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->userActivity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 87
    monitor-exit v1

    .line 88
    return-void

    .line 85
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
