.class final Lcom/google/android/gms/fitness/sensors/a/i;
.super Lcom/google/android/gms/fitness/sensors/a/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/a/f;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/sensors/a/f;)V
    .locals 1

    .prologue
    .line 566
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/i;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/a/j;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/sensors/a/f;B)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/sensors/a/i;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 571
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/i;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    const-string v1, "discoverProperties"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/fitness/sensors/a/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/i;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v1, v0, Lcom/google/android/gms/fitness/sensors/a/f;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/i;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 574
    const-string v0, "Not running discover command, no Gatt."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 575
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/i;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 576
    monitor-exit v1

    .line 582
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/i;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    const-string v0, "Failed to start discover services"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 580
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/i;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 582
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
