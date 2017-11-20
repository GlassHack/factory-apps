.class final Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;
.super Ljava/lang/Object;
.source "PowerManagerImpl.java"

# interfaces
.implements Lcom/google/glass/android/os/PowerManager$WakeLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/android/os/PowerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WakeLockImpl"
.end annotation


# instance fields
.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p1, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/PowerManager$WakeLock;Lcom/google/glass/android/os/PowerManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/PowerManager$WakeLock;
    .param p2, "x1"    # Lcom/google/glass/android/os/PowerManagerImpl$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 75
    return-void
.end method

.method public acquire(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 80
    return-void
.end method

.method public isHeld()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 90
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 95
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 1
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/android/os/PowerManagerImpl$WakeLockImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 100
    return-void
.end method
