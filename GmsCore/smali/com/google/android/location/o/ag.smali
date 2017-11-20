.class public final Lcom/google/android/location/o/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/os/PowerManager$WakeLock;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/location/o/ag;->a:Landroid/os/PowerManager$WakeLock;

    .line 21
    new-instance v0, Lcom/google/android/location/o/ah;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/location/o/ah;-><init>(Lcom/google/android/location/o/ag;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/location/o/ag;->b:Landroid/os/Handler;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(IIILjava/lang/Object;)V
    .locals 4

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 39
    iget-object v0, p0, Lcom/google/android/location/o/ag;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    cmp-long v1, v2, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/o/ag;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 40
    return-void

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/o/ag;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/location/o/ag;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 64
    iget-object v0, p0, Lcom/google/android/location/o/ag;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/location/o/ai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/o/ai;-><init>(Lcom/google/android/location/o/ag;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
