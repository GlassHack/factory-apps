.class final Lcom/google/android/gms/wearable/node/bluetooth/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

.field private final b:Lcom/google/android/gms/wearable/node/a/c;

.field private volatile c:Landroid/bluetooth/BluetoothServerSocket;

.field private volatile d:Z

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    iput-object p1, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    .line 169
    const-string v0, "WearableBtServerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 165
    iput-boolean v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->d:Z

    .line 166
    iput-boolean v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->e:Z

    .line 170
    new-instance v0, Lcom/google/android/gms/wearable/node/a/c;

    const/16 v1, 0x64

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wearable/node/a/c;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->b:Lcom/google/android/gms/wearable/node/a/c;

    .line 171
    return-void
.end method

.method private static a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/gms/wearable/node/a/b;->a(ILjava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 312
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothAdapter;Z)V
    .locals 6

    .prologue
    .line 276
    if-eqz p2, :cond_0

    const/16 v0, 0x15

    .line 279
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v2}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->b(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v2, "WearableBluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set scan mode to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_2
    return-void

    .line 276
    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    .line 279
    :cond_1
    const-string v1, "disabled"

    goto :goto_1

    .line 287
    :catch_0
    move-exception v2

    const-string v2, "WearableBluetooth"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error setting scan mode to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 315
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/gms/wearable/node/a/b;->a(ILjava/lang/CharSequence;Ljava/lang/Throwable;)V

    .line 316
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->b:Lcom/google/android/gms/wearable/node/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/c;->a()I

    move-result v0

    .line 293
    const-string v1, "Waiting %.1f seconds to retry connection"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, v0

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(ILjava/lang/String;)V

    .line 296
    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 297
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->c:Landroid/bluetooth/BluetoothServerSocket;

    .line 301
    if-eqz v0, :cond_0

    .line 303
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->e:Z

    .line 268
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->interrupt()V

    .line 269
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->d:Z

    return v0
.end method

.method public final run()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 175
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "WearableBluetooth"

    const-string v2, "BluetoothThread running"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 182
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/wearable/node/a/b;->a(Landroid/app/Service;)V

    .line 184
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->d()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    const-string v0, "WearableBt"

    sget-object v2, Lcom/google/android/gms/wearable/node/bluetooth/d;->a:Ljava/util/UUID;

    invoke-virtual {v3, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->c:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->b:Lcom/google/android/gms/wearable/node/a/c;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/google/android/gms/wearable/node/a/c;->a:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    const/4 v0, 0x2

    :try_start_3
    const-string v2, "Accepting connections"

    invoke-static {v0, v2}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(ILjava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/wearable/node/bluetooth/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(Landroid/bluetooth/BluetoothAdapter;Z)V

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->c:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;
    :try_end_3
    .catch Lcom/google/android/gms/wearable/node/bh; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 210
    :try_start_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 211
    iget-object v4, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v4}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->b(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v2}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a()V

    .line 213
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->b:Lcom/google/android/gms/wearable/node/a/c;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/google/android/gms/wearable/node/a/c;->a:J

    .line 214
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->d()V

    .line 215
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(Landroid/bluetooth/BluetoothAdapter;Z)V

    .line 216
    const/4 v2, 0x3

    const-string v4, "Connected, running sync loop"

    invoke-static {v2, v4}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(ILjava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->a()Lcom/google/android/gms/wearable/node/ay;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v4}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v5}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/wearable/node/ay;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    .line 222
    const/4 v2, 0x1

    const-string v4, "Connection closed, waiting."

    invoke-static {v2, v4}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/google/android/gms/wearable/node/bh; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 243
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v2}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->b()V

    .line 244
    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 248
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->c()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 251
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_6
    const-string v1, "Connection thread interrupted, shutting down"

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 255
    const-string v0, "BluetoothThread is finished"

    invoke-static {v7, v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(ILjava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->d()V

    .line 257
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    .line 259
    iput-boolean v7, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->d:Z

    .line 260
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    const-string v0, "WearableBluetooth"

    const-string v1, "BluetoothThread shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_2
    :goto_2
    return-void

    .line 190
    :catch_1
    move-exception v0

    .line 194
    :try_start_7
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Caught RuntimeException when trying to  listen to the RFComm socket."

    invoke-direct {v2, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 198
    :catch_2
    move-exception v0

    .line 199
    :try_start_8
    const-string v2, "Error listening for connection"

    invoke-static {v2, v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->c()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 252
    :catch_3
    move-exception v0

    .line 253
    :try_start_9
    const-string v1, "Unexpected exception, shutting down"

    invoke-static {v1, v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 255
    const-string v0, "BluetoothThread is finished"

    invoke-static {v7, v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(ILjava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->d()V

    .line 257
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    .line 259
    iput-boolean v7, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->d:Z

    .line 260
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    const-string v0, "WearableBluetooth"

    const-string v1, "BluetoothThread shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 224
    :catch_4
    move-exception v0

    move-object v0, v1

    :goto_3
    const/4 v2, 0x4

    :try_start_a
    const-string v4, "Error: wire protocol version mismatch"

    invoke-static {v2, v4}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(ILjava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->b:Lcom/google/android/gms/wearable/node/a/c;

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/a/c;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 243
    :try_start_b
    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v2}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/wearable/node/bluetooth/g;->b()V

    .line 244
    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 255
    :catchall_0
    move-exception v0

    const-string v1, "BluetoothThread is finished"

    invoke-static {v7, v1}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(ILjava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->d()V

    .line 257
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    .line 259
    iput-boolean v7, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->d:Z

    .line 260
    const-string v1, "WearableBluetooth"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 261
    const-string v1, "WearableBluetooth"

    const-string v2, "BluetoothThread shut down."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v0

    .line 227
    :catch_5
    move-exception v0

    move-object v2, v1

    .line 228
    :goto_4
    :try_start_c
    iget-object v4, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v4}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 229
    const-string v4, "Error writing to device"

    invoke-static {v4, v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 243
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/g;->b()V

    .line 244
    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 230
    :catch_6
    move-exception v0

    move-object v2, v1

    .line 231
    :goto_5
    :try_start_e
    iget-boolean v4, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->e:Z

    if-eqz v4, :cond_5

    .line 233
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 243
    :catchall_1
    move-exception v0

    :goto_6
    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v1}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/node/bluetooth/g;->b()V

    .line 244
    if-eqz v2, :cond_4

    .line 245
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V

    :cond_4
    throw v0
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 235
    :cond_5
    :try_start_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 236
    const-string v4, "Connection closed, waiting"

    invoke-static {v4, v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 243
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/g;->b()V

    .line 244
    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_1

    .line 238
    :catch_7
    move-exception v0

    move-object v2, v1

    .line 239
    :goto_7
    :try_start_12
    iget-object v4, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v4}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/wearable/node/bluetooth/g;->a(Ljava/lang/String;)V

    .line 240
    const-string v4, "Unexpected exception"

    invoke-static {v4, v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->b:Lcom/google/android/gms/wearable/node/a/c;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/a/c;->b()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 243
    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;->a(Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;)Lcom/google/android/gms/wearable/node/bluetooth/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/node/bluetooth/g;->b()V

    .line 244
    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_1

    .line 255
    :cond_6
    const-string v0, "BluetoothThread is finished"

    invoke-static {v7, v0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->a(ILjava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/google/android/gms/wearable/node/bluetooth/e;->d()V

    .line 257
    invoke-static {}, Lcom/google/android/gms/wearable/service/y;->b()Lcom/google/android/gms/wearable/node/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->a:Lcom/google/android/gms/wearable/node/bluetooth/BluetoothServerService;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/node/a/b;->b(Landroid/app/Service;)V

    .line 259
    iput-boolean v7, p0, Lcom/google/android/gms/wearable/node/bluetooth/e;->d:Z

    .line 260
    const-string v0, "WearableBluetooth"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    const-string v0, "WearableBluetooth"

    const-string v1, "BluetoothThread shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 243
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    .line 238
    :catch_8
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_7

    .line 230
    :catch_9
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_5

    .line 227
    :catch_a
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_4

    .line 224
    :catch_b
    move-exception v2

    goto/16 :goto_3
.end method
