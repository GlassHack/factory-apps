.class final Lcom/google/android/location/o/ah;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/android/location/o/ag;


# direct methods
.method constructor <init>(Lcom/google/android/location/o/ag;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/google/android/location/o/ah;->b:Lcom/google/android/location/o/ag;

    iput-object p3, p0, Lcom/google/android/location/o/ah;->a:Landroid/os/Handler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/o/ah;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v0, p0, Lcom/google/android/location/o/ah;->b:Lcom/google/android/location/o/ag;

    iget-object v0, v0, Lcom/google/android/location/o/ag;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/location/o/ah;->b:Lcom/google/android/location/o/ag;

    iget-object v1, v1, Lcom/google/android/location/o/ag;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
