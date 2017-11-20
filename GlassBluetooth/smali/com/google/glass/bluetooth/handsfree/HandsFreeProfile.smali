.class public Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;
.super Ljava/lang/Object;
.source "HandsFreeProfile.java"

# interfaces
.implements Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;
.implements Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;
.implements Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

.field private handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

.field private pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

.field private final phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

.field private serverSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

.field private final service:Lcom/google/glass/bluetooth/GlassBluetoothService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/GlassBluetoothService;)V
    .locals 1
    .param p1, "service"    # Lcom/google/glass/bluetooth/GlassBluetoothService;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    .line 48
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-direct {v0, p1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .line 49
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-direct {v0, p1}, Lcom/google/glass/bluetooth/BluetoothAdapterState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    .line 50
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->adapterState:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/BluetoothAdapterState;->addListener(Lcom/google/glass/bluetooth/BluetoothAdapterState$Listener;)V

    .line 51
    return-void
.end method

.method private createHandsFree(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 5
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    const/4 v4, 0x0

    .line 147
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;Landroid/content/Context;Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .line 148
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothSocket;->getRemoteDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "already had a socket"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->startServiceConnection(Lcom/google/glass/bluetooth/BluetoothSocket;)V

    .line 157
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    .line 159
    :cond_0
    return-void

    .line 153
    :cond_1
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "already had a service connection from the wrong device (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    .line 154
    invoke-virtual {v3}, Lcom/google/glass/bluetooth/BluetoothSocket;->getRemoteDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v3

    aput-object v3, v2, v4

    .line 153
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const-string v0, "pending service connection"

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    sget-object v2, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "close()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 109
    iput-object v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .line 110
    const-string v0, "pending service connection"

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    sget-object v2, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 111
    iput-object v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    .line 112
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->serverSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 113
    iput-object v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->serverSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    .line 114
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->onDestroy()V

    .line 115
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 173
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " Headset service:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  .handsFree = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    .line 177
    invoke-static {v2}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getHeadsetState(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Headset state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " PhoneCallManager: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/glass/phone/PhoneCallHelper;

    iget-object v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-direct {v2, v3}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " PhoneCallHelper thinks its in a call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pendingServiceConnectionSocket: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-virtual {v1, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->dump(Ljava/io/PrintWriter;)V

    .line 186
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "execute()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connect()V

    .line 123
    :cond_0
    return-void
.end method

.method public onBluetoothAdapterDisabled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->serverSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 85
    iput-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->serverSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    .line 86
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 87
    iput-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .line 88
    return-void
.end method

.method public onBluetoothAdapterEnabled()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 55
    const/4 v3, 0x0

    .line 57
    .local v3, "ss":Lcom/google/glass/bluetooth/BluetoothServerSocket;
    :try_start_0
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 58
    .local v0, "adapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    const-string v4, "Handsfree"

    sget-object v5, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_HANDSFREE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v4, v5}, Lcom/google/glass/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;)Lcom/google/glass/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 69
    invoke-static {v3}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v4, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    invoke-direct {v4, v3, p0}, Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;-><init>(Lcom/google/glass/bluetooth/BluetoothServerSocket;Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket$Listener;)V

    iput-object v4, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->serverSocket:Lcom/google/glass/bluetooth/AsyncBluetoothServerSocket;

    .line 72
    iget-object v4, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v4}, Lcom/google/glass/bluetooth/GlassBluetoothService;->getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    .line 73
    .local v1, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    iget-object v4, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    if-eqz v4, :cond_0

    .line 74
    sget-object v4, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "got onBluetoothAdapterEnabled() when handsFree!=null"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v4, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    sget-object v5, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v4, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 77
    :cond_0
    if-eqz v1, :cond_1

    .line 78
    invoke-direct {p0, v1}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->createHandsFree(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 80
    .end local v0    # "adapter":Lcom/google/glass/bluetooth/BluetoothAdapter;
    .end local v1    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_1
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to listen for RFCOMM connections on adapter enable: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 64
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to call Hidden api."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCallSetupStateChanged(I)V
    .locals 1
    .param p1, "callSetupState"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->onCallSetupStateChanged(I)V

    .line 194
    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 1
    .param p1, "callState"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->onCallStateChanged(I)V

    .line 198
    return-void
.end method

.method public onCallerIdChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "callerId"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->onCallerIdChanged(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public onConnected()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->unregisterTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V

    .line 164
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->registerTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V

    .line 169
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->onError(I)V

    .line 202
    return-void
.end method

.method public onInBandRingChanged(Z)V
    .locals 1
    .param p1, "inBandRing"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->phoneCallManager:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->onInBandRingChanged(Z)V

    .line 206
    return-void
.end method

.method public onPairedDeviceChanged(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 6
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onPairedDeviceChanged(%s)"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 130
    iput-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .line 131
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/GlassBluetoothService;->unregisterTask(Lcom/google/glass/bluetooth/GlassBluetoothService$PeriodicTask;)V

    .line 133
    :cond_0
    if-eqz p1, :cond_2

    .line 134
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "got onPairedDevice(%s) when handsFree!=null"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 137
    iput-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .line 139
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->createHandsFree(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    .line 141
    :cond_2
    return-void
.end method

.method public onPairedDeviceUpdated(Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V
    .locals 0
    .param p1, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .prologue
    .line 144
    return-void
.end method

.method public onSocketAccepted(Lcom/google/glass/bluetooth/BluetoothSocket;)V
    .locals 3
    .param p1, "socket"    # Lcom/google/glass/bluetooth/BluetoothSocket;

    .prologue
    .line 92
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onSocketAccepted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothSocket;->getRemoteDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->service:Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/GlassBluetoothService;->getPairedDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->handsFree:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->startServiceConnection(Lcom/google/glass/bluetooth/BluetoothSocket;)V

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "pending service connection"

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    sget-object v2, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 100
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->pendingServiceConnectionSocket:Lcom/google/glass/bluetooth/BluetoothSocket;

    goto :goto_0
.end method
