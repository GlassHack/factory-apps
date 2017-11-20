.class final Lcom/google/android/gms/fitness/sensors/a/m;
.super Lcom/google/android/gms/fitness/sensors/a/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/a/f;

.field private final c:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .prologue
    .line 430
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/m;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/a/j;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;B)V

    .line 431
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/m;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 432
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;B)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/sensors/a/m;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 437
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/m;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    const-string v1, "stopListening to characteristic %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/m;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/fitness/sensors/a/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/m;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v1, v0, Lcom/google/android/gms/fitness/sensors/a/f;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/m;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 442
    const-string v0, "Not running stop listening command, no GATT."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 443
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/m;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 444
    monitor-exit v1

    .line 470
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/m;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/m;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    const-string v0, "Couldn\'t disable notification for characteristic %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/a/m;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/m;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v2, Lcom/google/android/gms/fitness/sensors/a/e;->a:Lcom/google/android/gms/fitness/sensors/a/e;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/sensors/a/e;->a()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 454
    if-nez v0, :cond_2

    .line 455
    const-string v0, "Couldn\'t unsubscribe from characteristic %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/a/m;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 457
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/m;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 458
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 460
    :cond_2
    :try_start_1
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v2

    if-nez v2, :cond_3

    .line 461
    const-string v2, "Couldn\'t disable descriptor %s notification value"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 463
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/m;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 464
    monitor-exit v1

    goto :goto_0

    .line 466
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/m;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v2, v2, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 467
    const-string v2, "Couldn\'t write descriptor %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 468
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/m;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 470
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 475
    const-string v0, "StopListeningCommand{mCharacteristic=%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/m;->c:Landroid/bluetooth/BluetoothGattCharacteristic;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
