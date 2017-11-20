.class final Lcom/google/android/gms/fitness/sensors/a/l;
.super Lcom/google/android/gms/fitness/sensors/a/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/a/f;

.field private final c:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/l;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/a/j;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;B)V

    .line 538
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/l;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 539
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;B)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/sensors/a/l;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 544
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/l;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    const-string v1, "listenOrRead on characteristic %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/l;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/fitness/sensors/a/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/l;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v1, v0, Lcom/google/android/gms/fitness/sensors/a/f;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/l;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 548
    const-string v0, "Not running read command, no gatt."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 549
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/l;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 550
    monitor-exit v1

    .line 557
    :goto_0
    return-void

    .line 552
    :cond_0
    const-string v0, "reading characteristic %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/a/l;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 553
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/l;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/l;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    const-string v0, "Couldn\'t read characteristic %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/a/l;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 555
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/l;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 557
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

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 562
    const-string v0, "ReadCharacteristicCommand{mCharacteristic=%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/l;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
