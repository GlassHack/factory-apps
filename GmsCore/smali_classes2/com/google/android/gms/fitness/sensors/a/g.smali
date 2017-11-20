.class final Lcom/google/android/gms/fitness/sensors/a/g;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/sensors/a/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/sensors/a/f;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    .prologue
    .line 133
    const-string v0, "received characteristic %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->c:Lcom/google/android/gms/fitness/sensors/a/h;

    invoke-interface {v0, p2}, Lcom/google/android/gms/fitness/sensors/a/h;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 135
    return-void
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 111
    if-nez p3, :cond_0

    .line 112
    const-string v0, "characteristic with uuid received: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->c:Lcom/google/android/gms/fitness/sensors/a/h;

    invoke-interface {v0, p2}, Lcom/google/android/gms/fitness/sensors/a/h;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "onCharacteristicRead received: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    if-eqz p2, :cond_0

    if-eq p3, v5, :cond_2

    :cond_0
    move v0, p3

    .line 56
    :goto_0
    if-eq p3, v0, :cond_3

    .line 57
    const-string v2, "onConnectionStateChange: status=0x%04X newState=%s correctedNewState=%s oldState=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget v5, v5, Lcom/google/android/gms/fitness/sensors/a/f;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v2, v2, Lcom/google/android/gms/fitness/sensors/a/f;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iput v0, v3, Lcom/google/android/gms/fitness/sensors/a/f;->h:I

    .line 66
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 55
    goto :goto_0

    .line 60
    :cond_3
    if-eqz p2, :cond_1

    .line 61
    const-string v2, "onConnectionStateChange: status=0x%04X newState=%s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 69
    :pswitch_0
    const-string v0, "Connecting to GATT server."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 72
    :pswitch_1
    const-string v0, "Connected to GATT server."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/f;->a()V

    goto :goto_2

    .line 76
    :pswitch_2
    const-string v0, "Disconnecting from GATT server."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 79
    :pswitch_3
    const-string v0, "Disconnected from GATT server."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v1, v0, Lcom/google/android/gms/fitness/sensors/a/f;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 123
    if-nez p3, :cond_0

    .line 124
    const-string v0, "descriptor written with uuid: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "descriptor received: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/a/r;->a()V

    .line 90
    if-nez p2, :cond_1

    .line 91
    const-string v0, "onServicesDiscovered received: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/g;->a:Lcom/google/android/gms/fitness/sensors/a/f;

    iget-object v1, v1, Lcom/google/android/gms/fitness/sensors/a/f;->d:Lcom/google/c/j/a/ad;

    invoke-virtual {v1, v0}, Lcom/google/c/j/a/ad;->a(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 95
    const-string v2, "service with uuid found: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 98
    const-string v3, "characteristic with uuid found: %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 103
    :cond_1
    const-string v0, "onServicesDiscovered received: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    :cond_2
    return-void
.end method
