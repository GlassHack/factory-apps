.class final Lcom/google/android/gms/blescanner/compat/h;
.super Lcom/google/android/gms/blescanner/compat/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Landroid/bluetooth/le/BluetoothLeScanner;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothManager;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/blescanner/compat/a;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/h;->a:Ljava/util/Map;

    .line 35
    const-string v0, "BLE \'L\' hardware access layer activated"

    invoke-static {v0}, Lcom/google/android/gms/blescanner/b/c;->b(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/h;->b:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 37
    return-void
.end method

.method static a(Landroid/bluetooth/le/ScanResult;)Lcom/google/android/gms/blescanner/compat/ScanResult;
    .locals 10

    .prologue
    .line 183
    new-instance v0, Lcom/google/android/gms/blescanner/compat/ScanResult;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/blescanner/compat/n;->a([B)Lcom/google/android/gms/blescanner/compat/n;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/blescanner/compat/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/google/android/gms/blescanner/compat/n;IJ)V

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 7

    .prologue
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/blescanner/compat/ScanFilter;

    .line 135
    new-instance v3, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/blescanner/compat/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/blescanner/compat/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i()[B

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j()[B

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i()[B

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g()Landroid/os/ParcelUuid;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e()[B

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f()[B

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e()[B

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f()[B

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b()Landroid/os/ParcelUuid;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c()Landroid/os/ParcelUuid;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    :cond_4
    :goto_3
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B)Landroid/bluetooth/le/ScanFilter$Builder;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g()Landroid/os/ParcelUuid;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter$Builder;

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b()Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    goto :goto_3

    .line 137
    :cond_8
    return-object v1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 202
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported setScanWindowOverride("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms) called on hardware \'L\' BLE layer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BleScanCompatLib"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BleScanCompatLib"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/blescanner/compat/k;)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanCallback;

    .line 60
    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    const-string v1, "Stopping BLE \'L\' hardware scan"

    invoke-static {v1}, Lcom/google/android/gms/blescanner/b/c;->b(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/h;->b:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "Exception caught calling \'L\' BluetoothLeScanner.stopScan()"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Exception;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcom/google/android/gms/blescanner/compat/ScanSettings;Lcom/google/android/gms/blescanner/compat/k;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/blescanner/compat/ScanSettings;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    .line 42
    new-instance v3, Lcom/google/android/gms/blescanner/compat/i;

    invoke-direct {v3, p3}, Lcom/google/android/gms/blescanner/compat/i;-><init>(Lcom/google/android/gms/blescanner/compat/k;)V

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/blescanner/compat/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 45
    iget-object v5, p0, Lcom/google/android/gms/blescanner/compat/h;->a:Ljava/util/Map;

    invoke-interface {v5, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :try_start_0
    const-string v5, "Starting BLE \'L\' hardware scan"

    invoke-static {v5}, Lcom/google/android/gms/blescanner/b/c;->b(Ljava/lang/String;)V

    .line 48
    iget-object v5, p0, Lcom/google/android/gms/blescanner/compat/h;->b:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {v5, v4, v2, v3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return v0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    const-string v3, "Exception caught calling \'L\' BluetoothLeScanner.startScan()"

    new-array v0, v0, [Ljava/lang/Exception;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/google/android/gms/blescanner/b/c;->a(Ljava/lang/String;[Ljava/lang/Exception;)V

    move v0, v1

    .line 52
    goto :goto_0
.end method
