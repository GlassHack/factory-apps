.class final Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/android/os/PowerManager$WakeLock;


# instance fields
.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/PowerManager$WakeLock;Lcom/google/glass/android/os/PowerManagerImpl$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method


# virtual methods
.method public final acquire()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 56
    return-void
.end method

.method public final acquire(J)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 61
    return-void
.end method

.method public final isHeld()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 71
    return-void
.end method

.method public final setReferenceCounted(Z)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 76
    return-void
.end method

.method public final setWorkSource(Landroid/os/WorkSource;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 81
    return-void
.end method
