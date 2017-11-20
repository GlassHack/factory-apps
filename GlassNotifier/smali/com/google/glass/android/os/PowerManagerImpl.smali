.class final Lcom/google/glass/android/os/PowerManagerImpl;
.super Ljava/lang/Object;
.source "PowerManagerImpl.java"

# interfaces
.implements Lcom/google/glass/android/os/PowerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;
    }
.end annotation


# instance fields
.field private final powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;)V
    .locals 1
    .param p1, "powerManager"    # Landroid/os/PowerManager;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "null PowerManager"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    .line 25
    return-void
.end method


# virtual methods
.method public goToSleep(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    iget-object v1, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    const-string v2, "goToSleep"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 45
    .local v0, "powerManagerInvoker":Lcom/google/glass/hidden/MethodInvoker;
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;
    .locals 3
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;

    iget-object v1, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;-><init>(Landroid/os/PowerManager$WakeLock;Lcom/google/glass/android/os/PowerManagerImpl$1;)V

    return-object v0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public userActivity(JZ)V
    .locals 9
    .param p1, "when"    # J
    .param p3, "noChangeLights"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    iget-object v1, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    const-string v2, "userActivity"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 37
    .local v0, "powerManagerInvoker":Lcom/google/glass/hidden/MethodInvoker;
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public wakeUp(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    iget-object v1, p0, Lcom/google/glass/android/os/PowerManagerImpl;->powerManager:Landroid/os/PowerManager;

    const-string v2, "wakeUp"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 53
    .local v0, "powerManagerInvoker":Lcom/google/glass/hidden/MethodInvoker;
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
