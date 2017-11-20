.class final Lcom/google/android/gms/wearable/node/bluetooth/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

.field private final b:Landroid/bluetooth/BluetoothDevice;

.field private c:Lcom/google/android/gms/wearable/node/a/c;

.field private final d:Lcom/google/android/gms/wearable/node/bluetooth/b;

.field private volatile e:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/gms/wearable/node/bluetooth/b;)V
    .locals 3

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    .line 269
    const-string v0, "WearableBtClientThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->e:Z

    .line 270
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->b:Landroid/bluetooth/BluetoothDevice;

    .line 271
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/bluetooth/b;

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->d:Lcom/google/android/gms/wearable/node/bluetooth/b;

    .line 272
    new-instance v1, Lcom/google/android/gms/wearable/node/a/c;

    const/16 v2, 0x3e8

    sget-object v0, Lcom/google/android/gms/wearable/a/b;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/wearable/node/a/c;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->c:Lcom/google/android/gms/wearable/node/a/c;

    .line 274
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/gms/wearable/node/bluetooth/b;B)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/wearable/node/bluetooth/a;-><init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/gms/wearable/node/bluetooth/b;)V

    return-void
.end method

.method private static a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 428
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/wearable/node/a/b;->a(ILjava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 429
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/gms/wearable/node/a/b;->a(ILjava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 433
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 328
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->c:Lcom/google/android/gms/wearable/node/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/c;->a()I

    move-result v1

    .line 329
    const-string v0, "Waiting %.1f seconds to retry connection"

    new-array v2, v5, [Ljava/lang/Object;

    int-to-float v3, v1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(ILjava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 333
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 335
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.wearable.node.bluetooth.RETRY_CONNECTION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    const-string v4, "com.google.android.gms.wearable.node.bluetooth.RETRY_CONNECTION_DEVICE"

    iget-object v5, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->d:Lcom/google/android/gms/wearable/node/bluetooth/b;

    iget-object v5, v5, Lcom/google/android/gms/wearable/node/bluetooth/b;->b:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    invoke-virtual {v5}, Lcom/google/android/gms/wearable/ConnectionConfiguration;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    const/4 v6, 0x1

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 341
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "WearableBluetooth"

    const-string v1, "Alarm set. Releasing the WakeLock so that the device may sleep.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 345
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const-string v0, "WearableBluetooth"

    const-string v1, "Waiting to retry the connection.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->c(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->d(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 351
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->b(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 354
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->e:Z

    .line 278
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->interrupt()V

    .line 279
    return-void
.end method

.method public final run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 284
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/b;->a(Landroid/app/Service;)V

    .line 286
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 287
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connecting to \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->b:Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lcom/google/android/gms/wearable/node/bluetooth/d;->a:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/wearable/node/bh; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :try_start_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/google/android/gms/wearable/node/bh; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->c:Lcom/google/android/gms/wearable/node/a/c;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/gms/wearable/node/a/c;->a:J

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->d:Lcom/google/android/gms/wearable/node/bluetooth/b;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/bluetooth/b;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a()V

    const/4 v1, 0x3

    const-string v2, "Connected, running sync loop"

    invoke-static {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(ILjava/lang/String;)V

    const-string v1, "WearableBluetooth"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WearableBluetooth"

    const-string v2, "Releasing the WakeLock so that the device may go sleep.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->a()Lcom/google/android/gms/wearable/node/ay;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->d:Lcom/google/android/gms/wearable/node/bluetooth/b;

    iget-object v2, v2, Lcom/google/android/gms/wearable/node/bluetooth/b;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->d:Lcom/google/android/gms/wearable/node/bluetooth/b;

    iget-object v3, v3, Lcom/google/android/gms/wearable/node/bluetooth/b;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->d:Lcom/google/android/gms/wearable/node/bluetooth/b;

    iget-object v4, v4, Lcom/google/android/gms/wearable/node/bluetooth/b;->b:Lcom/google/android/gms/wearable/ConnectionConfiguration;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/wearable/node/ay;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->d:Lcom/google/android/gms/wearable/node/bluetooth/b;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/bluetooth/b;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    const-string v2, "Socket closed."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "Socket closed"

    invoke-static {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/google/android/gms/wearable/node/bh; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_1

    :try_start_5
    const-string v1, "WearableBluetooth"

    const-string v2, "onSocketReady returned, closing socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_1
    :try_start_6
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WearableBluetooth"

    const-string v1, "Acquiring the WakeLock so that an alarm can be set.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 307
    :goto_2
    :try_start_7
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->b()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 311
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_8
    const-string v1, "Connection interrupted, shutting down"

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 315
    const-string v0, "Android Wear BluetoothThread finished"

    invoke-static {v5, v0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(ILjava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 325
    :cond_3
    :goto_3
    return-void

    .line 289
    :catch_1
    move-exception v0

    :try_start_9
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Caught RuntimeException when creating the RFComm socket."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catch Lcom/google/android/gms/wearable/node/bh; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_4
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->d:Lcom/google/android/gms/wearable/node/bluetooth/b;

    iget-object v1, v1, Lcom/google/android/gms/wearable/node/bluetooth/b;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    const-string v2, "Wire protocol version mismatch!"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "Error: wire protocol version mismatch"

    invoke-static {v1, v2}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->c:Lcom/google/android/gms/wearable/node/a/c;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/a/c;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v0, :cond_4

    :try_start_b
    const-string v1, "WearableBluetooth"

    const-string v2, "onSocketReady returned, closing socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_4
    :goto_5
    :try_start_c
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "WearableBluetooth"

    const-string v1, "Acquiring the WakeLock so that an alarm can be set.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 306
    :catch_3
    move-exception v0

    .line 291
    :try_start_d
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->e:Z

    if-eqz v1, :cond_b

    .line 295
    throw v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 312
    :catch_4
    move-exception v0

    .line 313
    :try_start_e
    const-string v1, "Unexpected exception, shutting down"

    invoke-static {v1, v0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 315
    const-string v0, "Android Wear BluetoothThread finished"

    invoke-static {v5, v0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(ILjava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_3

    .line 289
    :catch_5
    move-exception v1

    :try_start_f
    new-instance v2, Lcom/google/c/f/e;

    invoke-direct {v2}, Lcom/google/c/f/e;-><init>()V

    new-instance v3, Lcom/google/c/f/d;

    invoke-direct {v3}, Lcom/google/c/f/d;-><init>()V

    iput-object v3, v2, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    iget-object v3, v2, Lcom/google/c/f/e;->f:Lcom/google/c/f/d;

    const/4 v4, 0x4

    iput v4, v3, Lcom/google/c/f/d;->a:I

    sget-object v3, Lcom/google/android/gms/wearable/b/a;->a:Lcom/google/android/gms/wearable/b/a;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/wearable/b/a;->a(Lcom/google/c/f/e;)V

    throw v1
    :try_end_f
    .catch Lcom/google/android/gms/wearable/node/bh; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catch_6
    move-exception v1

    goto/16 :goto_4

    :catch_7
    move-exception v0

    :goto_6
    :try_start_10
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->d:Lcom/google/android/gms/wearable/node/bluetooth/b;

    iget-object v2, v2, Lcom/google/android/gms/wearable/node/bluetooth/b;->c:Lcom/google/android/gms/wearable/node/bluetooth/g;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    const-string v2, "Error writing to device"

    invoke-static {v2, v0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v1, :cond_6

    :try_start_11
    const-string v0, "WearableBluetooth"

    const-string v2, "onSocketReady returned, closing socket"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_6
    :goto_7
    :try_start_12
    const-string v0, "WearableBluetooth"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "WearableBluetooth"

    const-string v1, "Acquiring the WakeLock so that an alarm can be set.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    .line 301
    :catch_8
    move-exception v0

    .line 305
    :try_start_13
    const-string v1, "Unexpected runtime exception"

    invoke-static {v1, v0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_2

    .line 315
    :catchall_0
    move-exception v0

    const-string v1, "Android Wear BluetoothThread finished"

    invoke-static {v5, v1}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(ILjava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    .line 321
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 322
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8
    throw v0

    .line 289
    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v1, :cond_9

    :try_start_14
    const-string v2, "WearableBluetooth"

    const-string v3, "onSocketReady returned, closing socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_9
    :goto_9
    :try_start_15
    const-string v1, "WearableBluetooth"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "WearableBluetooth"

    const-string v2, "Acquiring the WakeLock so that an alarm can be set.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    throw v0
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 299
    :cond_b
    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_2

    .line 315
    :cond_c
    const-string v0, "Android Wear BluetoothThread finished"

    invoke-static {v5, v0}, Lcom/google/android/gms/wearable/node/bluetooth/a;->a(ILjava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/a;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothClientService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_3

    :catch_9
    move-exception v1

    goto :goto_9

    .line 289
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8

    :catch_a
    move-exception v0

    goto/16 :goto_7

    :catch_b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6

    :catch_c
    move-exception v0

    goto/16 :goto_5

    :catch_d
    move-exception v0

    goto/16 :goto_1
.end method
