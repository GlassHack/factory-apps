.class final Lcom/google/android/gms/fitness/sensors/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field final a:Ljava/util/Queue;

.field final b:Landroid/bluetooth/BluetoothDevice;

.field final c:Lcom/google/android/gms/fitness/sensors/a/h;

.field final d:Lcom/google/c/j/a/ad;

.field final e:Ljava/lang/Object;

.field f:Landroid/bluetooth/BluetoothGatt;

.field final g:Ljava/lang/Object;

.field h:I

.field final i:Lcom/google/android/gms/fitness/sensors/a/r;

.field private final j:Landroid/bluetooth/BluetoothGattCallback;

.field private final k:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final l:Landroid/content/Context;

.field private final m:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/gms/fitness/sensors/a/r;Lcom/google/android/gms/fitness/sensors/a/h;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/google/android/gms/fitness/sensors/a/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/sensors/a/g;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->j:Landroid/bluetooth/BluetoothGattCallback;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->e:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->g:Ljava/lang/Object;

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->h:I

    .line 163
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/a/f;->l:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/a/f;->b:Landroid/bluetooth/BluetoothDevice;

    .line 165
    const-string v0, "Callback is not provided"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a/h;

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->c:Lcom/google/android/gms/fitness/sensors/a/h;

    .line 166
    invoke-static {}, Lcom/google/c/j/a/ad;->a()Lcom/google/c/j/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->d:Lcom/google/c/j/a/ad;

    .line 167
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->a:Ljava/util/Queue;

    .line 168
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/f;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 174
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 176
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->m:Landroid/bluetooth/BluetoothAdapter;

    .line 177
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/a/f;->i:Lcom/google/android/gms/fitness/sensors/a/r;

    .line 178
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    const-string v0, "Connection failed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 330
    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    .line 353
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/f;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->h:I

    if-eq v0, v2, :cond_5

    .line 355
    const-string v0, "Not running commands, not connected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 356
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->m:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Bluetooth adapter is not enabled, not connecting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 357
    :goto_0
    monitor-exit v1

    .line 370
    :cond_0
    :goto_1
    return-void

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/f;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->h:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Connecting to device."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->h:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/a/f;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_3

    const-string v0, "Connecting using existing Gatt."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/a/f;->b()V

    :cond_2
    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 359
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 356
    :pswitch_0
    :try_start_5
    const-string v0, "Already connected to device."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :pswitch_1
    :try_start_7
    const-string v0, "Connection is already in progress."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :cond_3
    :try_start_8
    const-string v0, "Connecting using new Gatt."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->aa:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "BLE auto-connect is %s"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    const-string v0, "enabled"

    :goto_3
    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->b:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/a/f;->l:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/a/f;->j:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v4, v3, v5}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->f:Landroid/bluetooth/BluetoothGatt;

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/a/f;->b()V

    goto :goto_2

    :cond_4
    const-string v0, "disabled"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 359
    :cond_5
    monitor-exit v1

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a/j;

    :goto_4
    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/f;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 363
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/a/f;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_9
    iget v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->h:I

    if-eq v0, v2, :cond_6

    .line 365
    const-string v0, "Not running commands, not connected."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 366
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/16 :goto_1

    .line 368
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    monitor-exit v1

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a/j;

    goto :goto_4

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 252
    const-string v0, "listenOrRead on characteristic %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    const/4 v0, 0x0

    .line 255
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    .line 256
    and-int/lit8 v2, v1, 0x2

    if-lez v2, :cond_0

    .line 257
    new-instance v0, Lcom/google/android/gms/fitness/sensors/a/l;

    invoke-direct {v0, p0, p1, v3}, Lcom/google/android/gms/fitness/sensors/a/l;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;B)V

    .line 260
    :cond_0
    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_1

    .line 261
    new-instance v0, Lcom/google/android/gms/fitness/sensors/a/k;

    invoke-direct {v0, p0, p1, v3}, Lcom/google/android/gms/fitness/sensors/a/k;-><init>(Lcom/google/android/gms/fitness/sensors/a/f;Landroid/bluetooth/BluetoothGattCharacteristic;B)V

    .line 263
    :cond_1
    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/a/f;->a(Lcom/google/android/gms/fitness/sensors/a/j;)V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_2
    const-string v0, "Characteristic %s is not a read or notify property"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/fitness/sensors/a/j;)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/a/f;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/sensors/a/f;->a()V

    .line 350
    return-void
.end method
