.class final Lcom/google/glass/android/os/PowerManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/android/os/PowerManager;


# instance fields
.field private final powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "null PowerManager"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    .line 15
    return-void
.end method


# virtual methods
.method public final goToSleep(J)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 30
    return-void
.end method

.method public final isScreenOn()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public final newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;

    iget-object v1, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/google/glass/android/os/PowerManagerImpl$1;)V

    return-object v0
.end method

.method public final reboot(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public final userActivity(JZ)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 25
    return-void
.end method

.method public final wakeUp(J)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 35
    return-void
.end method
