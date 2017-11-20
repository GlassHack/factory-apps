.class final Lcom/google/android/gms/fitness/sensors/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/google/android/gms/fitness/sensors/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/a/a;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/b;->b:Lcom/google/android/gms/fitness/sensors/a/a;

    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/b;->b:Lcom/google/android/gms/fitness/sensors/a/a;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/a;->b:Lcom/google/android/gms/fitness/n/ar;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/n/ar;->e_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/internal/ble/b;

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/b;->b:Lcom/google/android/gms/fitness/sensors/a/a;

    iget-object v3, v0, Lcom/google/android/gms/fitness/internal/ble/b;->a:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/fitness/sensors/a/a;->b(Lcom/google/android/gms/fitness/data/BleDevice;)Lcom/google/android/gms/fitness/sensors/a/n;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/fitness/internal/ble/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/fitness/sensors/a/n;->b(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    const-string v1, "Failed to recreate device registrations, retrying..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 92
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->T:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/b;->b:Lcom/google/android/gms/fitness/sensors/a/a;

    iget-object v1, v0, Lcom/google/android/gms/fitness/sensors/a/a;->a:Landroid/os/Handler;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->U:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_0
    return-void

    .line 87
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;
    :try_end_1
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
