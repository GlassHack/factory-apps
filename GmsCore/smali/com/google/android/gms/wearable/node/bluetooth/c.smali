.class final Lcom/google/android/gms/wearable/node/bluetooth/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bluetooth/c;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;B)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/node/bluetooth/c;-><init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)V

    return-void
.end method

.method public static a()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 482
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 483
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v1, "com.google.android.gms.wearable.node.bluetooth.RETRY_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 439
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const-string v0, "WearableBluetooth"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Receiver onReceive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/c;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->e(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)V

    .line 479
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/c;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 448
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.wearable.node.bluetooth.RETRY_CONNECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    const-string v0, "com.google.android.gms.wearable.node.bluetooth.RETRY_CONNECTION_DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 452
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 453
    const-string v2, "WearableBluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", received intent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for device: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/c;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->f(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/bluetooth/b;

    .line 457
    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/wearable/node/bluetooth/b;->a:Lcom/google/android/gms/wearable/node/bluetooth/a;

    if-eqz v2, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/bluetooth/b;->a:Lcom/google/android/gms/wearable/node/bluetooth/a;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 464
    :cond_5
    const-string v0, "WearableBluetooth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received but ignoring wakeup alarm for inactive device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 467
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/c;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/c;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Z)Z

    .line 470
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 471
    const-string v0, "WearableBluetooth"

    const-string v1, "Acquiring the WakeLock to retry the connection.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/c;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 474
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/c;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/c;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/c;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
