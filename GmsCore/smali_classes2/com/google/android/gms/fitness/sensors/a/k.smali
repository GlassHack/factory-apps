.class final Lcom/google/android/gms/fitness/sensors/a/k;
.super Lcom/google/android/gms/fitness/sensors/a/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/a/f;

.field private final c:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .prologue
    .line 482
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/a/j;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;B)V

    .line 483
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/k;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 484
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;B)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/sensors/a/k;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 489
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    const-string v1, "Enabling notifications for %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/k;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/fitness/sensors/a/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v1, v0, Lcom/google/android/gms/fitness/sensors/a/f;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 493
    const-string v0, "Not running listen, no GATT."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 494
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 495
    monitor-exit v1

    .line 524
    :goto_0
    return-void

    .line 497
    :cond_0
    const-string v0, "Enabling notifications for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/a/k;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 501
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/k;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 502
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/k;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    const-string v0, "Couldn\'t set notification characteristic"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/k;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lcom/google/android/gms/fitness/sensors/a/e;->a:Lcom/google/android/gms/fitness/sensors/a/e;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/sensors/a/e;->a()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 509
    if-nez v0, :cond_2

    .line 510
    const-string v0, "Couldn\'t subscribe from characteristic %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/a/k;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 512
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 513
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 515
    :cond_2
    :try_start_1
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 516
    const-string v0, "Couldn\'t enable notification value"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 517
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 518
    monitor-exit v1

    goto :goto_0

    .line 520
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v2, v2, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 521
    const-string v2, "Couldn\'t write descriptor %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 522
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/k;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 524
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 529
    const-string v0, "ListenForCharacteristicChangesCommand{mCharacteristic=%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/k;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
