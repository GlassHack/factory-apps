.class public Lcom/google/android/wearable/app/ConnectionSetupService;
.super Landroid/app/IntentService;
.source "ConnectionSetupService.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/wearable/app/ConnectionSetupService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "ConnectionSetupService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v13, 0x0

    .line 29
    sget-object v5, Lcom/google/android/wearable/app/ConnectionSetupService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "onHandleIntent"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-interface {v5, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 33
    .local v2, "address":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 34
    .local v6, "adapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    if-eqz v6, :cond_2

    .line 35
    invoke-virtual {v6}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v7

    .line 36
    .local v7, "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    if-nez v7, :cond_0

    .line 37
    sget-object v5, Lcom/google/android/wearable/app/ConnectionSetupService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "no paired devices?"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-interface {v5, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_0
    sget-object v5, Lcom/google/android/wearable/app/ConnectionSetupService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "adapter is non-null, devices=%s devices"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-interface {v5, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 46
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 47
    sget-object v5, Lcom/google/android/wearable/app/ConnectionSetupService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "More than 1 bonded device, assuming the first device is the Wear device."

    new-array v11, v13, [Ljava/lang/Object;

    invoke-interface {v5, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_1
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 50
    .local v8, "firstDevice":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v8}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v8}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 52
    sget-object v5, Lcom/google/android/wearable/app/ConnectionSetupService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "paired device, name=%s, address=%s"

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v1, v11, v13

    aput-object v2, v11, v3

    invoke-interface {v5, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .end local v7    # "devices":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    .end local v8    # "firstDevice":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_2
    new-instance v0, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/ConnectionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 62
    .local v0, "config":Lcom/google/android/gms/wearable/ConnectionConfiguration;
    :try_start_0
    sget-object v3, Lcom/google/android/gms/wearable/Wearable;->ConnectionApi:Lcom/google/android/gms/wearable/ConnectionApi;

    .line 63
    invoke-static {p0}, Lcom/google/android/clockwork/host/WearableHost;->acquireApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    .line 62
    invoke-interface {v3, v4, v0}, Lcom/google/android/gms/wearable/ConnectionApi;->setConfig(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/ConnectionConfiguration;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    .line 63
    invoke-interface {v3}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/common/api/Status;

    .line 64
    .local v9, "result":Lcom/google/android/gms/common/api/Status;
    sget-object v3, Lcom/google/android/wearable/app/ConnectionSetupService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Set wearable connection [config=%s, result=%s]."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v5, v10

    const/4 v10, 0x1

    aput-object v9, v5, v10

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-static {p0}, Lcom/google/android/clockwork/host/WearableHost;->releaseApiClient(Landroid/content/Context;)V

    .line 68
    return-void

    .line 66
    .end local v9    # "result":Lcom/google/android/gms/common/api/Status;
    :catchall_0
    move-exception v3

    invoke-static {p0}, Lcom/google/android/clockwork/host/WearableHost;->releaseApiClient(Landroid/content/Context;)V

    throw v3
.end method
