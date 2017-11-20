.class abstract Lcom/google/android/gms/fitness/sensors/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field private a:Z

.field final synthetic d:Lcom/google/android/gms/fitness/sensors/a/t;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/sensors/a/t;)V
    .locals 1

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/x;->d:Lcom/google/android/gms/fitness/sensors/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/sensors/a/x;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/sensors/a/t;B)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/sensors/a/x;-><init>(Lcom/google/android/gms/fitness/sensors/a/t;)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/google/android/gms/fitness/data/BleDevice;)V
.end method

.method protected final declared-synchronized b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/fitness/sensors/a/x;->a:Z

    if-nez v2, :cond_0

    .line 152
    const-string v1, "Stopping BLE scan"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 153
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/x;->d:Lcom/google/android/gms/fitness/sensors/a/t;

    iget-object v1, v1, Lcom/google/android/gms/fitness/sensors/a/t;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/sensors/a/x;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/x;->d:Lcom/google/android/gms/fitness/sensors/a/t;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    :cond_0
    :goto_0
    array-length v2, p3

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p3, v0

    if-eqz v0, :cond_1

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p3, v3

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v2

    goto :goto_0

    :goto_1
    if-le v2, v7, :cond_0

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p3, v0

    add-int/lit8 v3, v5, 0x1

    aget-byte v5, p3, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v0

    add-int/lit8 v0, v2, -0x2

    const-string v2, "%08x-0000-1000-8000-00805f9b34fb"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/google/android/gms/fitness/d/a/c;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 136
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/d/a/b;

    .line 137
    invoke-interface {v0}, Lcom/google/android/gms/fitness/d/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 140
    :cond_2
    new-instance v0, Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/fitness/d/a/c;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/fitness/data/BleDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/a/x;->a(Lcom/google/android/gms/fitness/data/BleDevice;)V

    .line 148
    :cond_3
    return-void

    :pswitch_0
    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_1

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
