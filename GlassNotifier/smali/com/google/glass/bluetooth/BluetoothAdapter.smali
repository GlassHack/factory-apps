.class public Lcom/google/glass/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# static fields
.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field private static final ADV_CALLBACK_NAME:Ljava/lang/String; = "android.bluetooth.BluetoothAdapter$AdvertiseCallback"

.field private static final BLUETOOTH_ADAPTER_NAME:Ljava/lang/String; = "android.bluetooth.BluetoothAdapter"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field private static instance:Lcom/google/glass/bluetooth/BluetoothAdapter;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private advertiseCallback:Ljava/lang/Object;

.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-direct {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;-><init>()V

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothAdapter;->instance:Lcom/google/glass/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 68
    invoke-direct {p0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->createAdvertiseCallback()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->advertiseCallback:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private createAdvertiseCallback()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 196
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    :goto_0
    return-object v2

    .line 201
    :cond_0
    :try_start_0
    const-string v3, "android.bluetooth.BluetoothAdapter$AdvertiseCallback"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 203
    .local v0, "cbInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    new-instance v5, Lcom/google/glass/bluetooth/BluetoothAdapter$1;

    invoke-direct {v5, p0}, Lcom/google/glass/bluetooth/BluetoothAdapter$1;-><init>(Lcom/google/glass/bluetooth/BluetoothAdapter;)V

    .line 202
    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 218
    .end local v0    # "cbInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/glass/bluetooth/BluetoothAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "failed in createAdvertiseCallback()."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/google/glass/bluetooth/BluetoothAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "failed in createAdvertiseCallback()."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/glass/bluetooth/BluetoothAdapter;->instance:Lcom/google/glass/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private invokeAdvertisingMethod(Ljava/lang/String;)Z
    .locals 9
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 171
    iget-object v6, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v6, :cond_0

    .line 172
    sget-object v4, Lcom/google/glass/bluetooth/BluetoothAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Null Bluetooth default adapter."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :goto_0
    return v5

    .line 176
    :cond_0
    iget-object v6, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->advertiseCallback:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 177
    sget-object v4, Lcom/google/glass/bluetooth/BluetoothAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Null BLE advertisement callback."

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_1
    :try_start_0
    const-string v6, "android.bluetooth.BluetoothAdapter$AdvertiseCallback"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 183
    .local v0, "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/google/glass/hidden/MethodInvoker;

    iget-object v6, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v6, p1, v0}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 184
    .local v2, "methodInvoker":Lcom/google/glass/hidden/MethodInvoker;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->advertiseCallback:Ljava/lang/Object;

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 185
    .local v3, "result":Ljava/lang/Boolean;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 186
    .end local v0    # "argType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "methodInvoker":Lcom/google/glass/hidden/MethodInvoker;
    .end local v3    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v6, Lcom/google/glass/bluetooth/BluetoothAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Failed to find class %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-interface {v6, v1, v7, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setBluetoothAdapterForTest(Lcom/google/glass/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p0, "wrapper"    # Lcom/google/glass/bluetooth/BluetoothAdapter;

    .prologue
    .line 161
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 162
    sput-object p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->instance:Lcom/google/glass/bluetooth/BluetoothAdapter;

    .line 163
    return-void
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    return v0
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 143
    :cond_0
    return-void
.end method

.method public disable()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v3, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 77
    .local v1, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v2, Lcom/google/android/util/ArraySet;

    .line 78
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/util/ArraySet;-><init>(I)V

    .line 79
    .local v2, "results":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 80
    .local v0, "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    new-instance v4, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {v4, v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v0    # "bondedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 136
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    return-object v0
.end method

.method public getScanMode()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method public hasBluetoothAdapter()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;)Lcom/google/glass/bluetooth/BluetoothServerSocket;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothServerSocket;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 154
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothServerSocket;-><init>(Landroid/bluetooth/BluetoothServerSocket;)V

    .line 153
    return-object v0
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;)Lcom/google/glass/bluetooth/BluetoothServerSocket;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothServerSocket;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 148
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothServerSocket;-><init>(Landroid/bluetooth/BluetoothServerSocket;)V

    .line 147
    return-object v0
.end method

.method public startAdvertising()Z
    .locals 1

    .prologue
    .line 110
    const-string v0, "startAdvertising"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->invokeAdvertisingMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startDiscovery()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    return v0
.end method

.method public stopAdvertising()Z
    .locals 1

    .prologue
    .line 114
    const-string v0, "stopAdvertising"

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->invokeAdvertisingMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
