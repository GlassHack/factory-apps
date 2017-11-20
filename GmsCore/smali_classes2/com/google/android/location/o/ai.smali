.class final Lcom/google/android/location/o/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/android/location/o/ag;


# direct methods
.method constructor <init>(Lcom/google/android/location/o/ag;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/location/o/ai;->b:Lcom/google/android/location/o/ag;

    iput-object p2, p0, Lcom/google/android/location/o/ai;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/o/ai;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lcom/google/android/location/o/ai;->b:Lcom/google/android/location/o/ag;

    iget-object v0, v0, Lcom/google/android/location/o/ag;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/location/o/ai;->b:Lcom/google/android/location/o/ag;

    iget-object v1, v1, Lcom/google/android/location/o/ag;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
