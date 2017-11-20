.class public abstract Lcom/google/glass/bluetooth/companion/NetworkSocketThread;
.super Lcom/google/glass/bluetooth/companion/CompanionServerThread;
.source "NetworkSocketThread.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "companion"

.field private static final TXT_KEY_ACCOUNT_HASH:Ljava/lang/String; = "a"

.field private static final TXT_KEY_SETUP_DEVICE_NAME:Ljava/lang/String; = "n"

.field private static final TXT_KEY_SETUP_STATE:Ljava/lang/String; = "s"

.field private static final TXT_VALUE_NOT_SETUP:Ljava/lang/String; = "0"

.field private static final TXT_VALUE_SETUP_COMPLETE:Ljava/lang/String; = "1"

.field private static final TYPE:Ljava/lang/String; = "_glass._tcp.local"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private volatile clientSocket:Ljava/net/Socket;

.field private volatile closed:Z

.field private jmdns:Ljavax/jmdns/JmDNS;

.field private lock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private presharedKey:Lcom/google/glass/bluetooth/companion/PresharedKey;

.field private volatile serverSocket:Ljava/net/ServerSocket;

.field private serviceInfo:Ljavax/jmdns/ServiceInfo;

.field private serviceInfoLock:Ljava/lang/Object;

.field protected wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V
    .locals 2
    .param p1, "companionSocketServer"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p2, "oldNetworkSocketThread"    # Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serviceInfoLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->closed:Z

    .line 70
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Lcom/google/glass/bluetooth/companion/PresharedKey;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->presharedKey:Lcom/google/glass/bluetooth/companion/PresharedKey;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->clientSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serviceInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljavax/jmdns/ServiceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serviceInfo:Ljavax/jmdns/ServiceInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getTxtMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;
    .locals 2
    .param p1, "inetAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$1;-><init>(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTxtMap()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 297
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 299
    .local v4, "txtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 300
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 302
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_2

    .line 303
    invoke-static {v1}, Lcom/google/glass/util/SetupHelper;->isDeviceSetup(Landroid/content/Context;)Z

    move-result v2

    .line 304
    .local v2, "isDeviceSetup":Z
    const-string v6, "s"

    if-eqz v2, :cond_0

    const-string v5, "1"

    :goto_0
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v5, "a"

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/glass/util/HashFunctions;->toMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v6, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Account found. isDeviceSetup = %s."

    new-array v8, v8, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    const-string v5, "true"

    :goto_1
    aput-object v5, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    .end local v2    # "isDeviceSetup":Z
    :goto_2
    return-object v4

    .line 304
    .restart local v2    # "isDeviceSetup":Z
    :cond_0
    const-string v5, "0"

    goto :goto_0

    .line 307
    :cond_1
    const-string v5, "false"

    goto :goto_1

    .line 309
    .end local v2    # "isDeviceSetup":Z
    :cond_2
    const-string v5, "s"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v5, "a"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->buildProvisionalName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "provisionalName":Ljava/lang/String;
    const-string v5, "n"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v5, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "No account found. Device assumed not set up. Name = %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private runConnection(Lcom/google/glass/bluetooth/companion/CompanionConnection;)V
    .locals 3
    .param p1, "connection"    # Lcom/google/glass/bluetooth/companion/CompanionConnection;

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->prepareConnection(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionConnected(Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V

    .line 100
    sget-object v0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Network companion connection is now running..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->run()V

    .line 105
    :goto_0
    sget-object v0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Network companion connection stopped!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    sget-object v0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionDisconnected(Lcom/google/glass/bluetooth/companion/CompanionConnection;)V

    .line 110
    return-void

    .line 103
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Quiting since there is always a connection running."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionDisconnected(Lcom/google/glass/bluetooth/companion/CompanionConnection;)V

    throw v0
.end method

.method private runServer()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-boolean v5, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->closed:Z

    if-eqz v5, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->setupServerSocket()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    :try_start_0
    sget-object v5, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "%s: Waiting for client to connect..."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->clientSocket:Ljava/net/Socket;

    .line 199
    iget-boolean v5, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->closed:Z

    if-eqz v5, :cond_3

    .line 200
    sget-object v5, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Thread was closed after creating clientSocket, quitting..."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    const-string v6, "client socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->clientSocket:Ljava/net/Socket;

    sget-object v7, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v5, v6, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.google.glass.bluetooth.PAIRED_DEVICE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 206
    .local v4, "intent":Landroid/content/Intent;
    if-nez v4, :cond_4

    .line 210
    .local v2, "deviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :goto_2
    sget-object v5, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Creating CompanionConnection in NetworkSocketThread..."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 212
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;

    new-instance v5, Lcom/google/glass/util/TimeZoneUtil;

    invoke-direct {v5, v1}, Lcom/google/glass/util/TimeZoneUtil;-><init>(Landroid/content/Context;)V

    .line 213
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v6

    new-instance v7, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v1, v2}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$2;-><init>(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;Landroid/bluetooth/BluetoothSocket;Landroid/content/Context;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;)V

    invoke-direct {v0, v5, v6, v7}, Lcom/google/glass/bluetooth/companion/CompanionConnection;-><init>(Lcom/google/glass/util/TimeZoneUtil;Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/BluetoothSocket;)V

    .line 249
    .local v0, "connection":Lcom/google/glass/bluetooth/companion/CompanionConnection;
    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->runConnection(Lcom/google/glass/bluetooth/companion/CompanionConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    const-string v6, "client socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->clientSocket:Ljava/net/Socket;

    sget-object v7, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v5, v6, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;)Z

    goto/16 :goto_0

    .line 208
    .end local v0    # "connection":Lcom/google/glass/bluetooth/companion/CompanionConnection;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "deviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.google.glass.bluetooth.EXTRA_DEVICE"

    .line 207
    invoke-static {v5, v6}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->readFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_2

    .line 253
    .restart local v0    # "connection":Lcom/google/glass/bluetooth/companion/CompanionConnection;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "deviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_5
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 250
    .end local v0    # "connection":Lcom/google/glass/bluetooth/companion/CompanionConnection;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "deviceWrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "failed to listen for network client socket connect"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    const-string v6, "client socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    iget-object v6, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->clientSocket:Ljava/net/Socket;

    sget-object v7, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v5, v6, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;)Z

    goto/16 :goto_0

    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    move-object v6, v5

    const-string v7, "client socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_5
    iget-object v7, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->clientSocket:Ljava/net/Socket;

    sget-object v8, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v5, v7, v8}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v6

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private setupServerSocket()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    if-nez v4, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 122
    .local v1, "inetAddress":Ljava/net/InetAddress;
    if-nez v1, :cond_0

    .line 123
    sget-object v2, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Skip since we don\'t have an IP address."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 159
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :goto_0
    return v2

    .line 127
    .restart local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 128
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 129
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 132
    new-instance v4, Ljava/net/ServerSocket;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    .line 133
    sget-object v4, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "server runs on %s:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-boolean v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->closed:Z

    if-eqz v4, :cond_1

    .line 136
    sget-object v2, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Thread was closed after creating serverSocket, quitting..."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 137
    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->create(Ljava/net/InetAddress;)Ljavax/jmdns/JmDNS;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    .line 143
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serviceInfoLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :try_start_1
    const-string v5, "_glass._tcp.local"

    const-string v6, "companion"

    iget-object v7, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v7

    const-string v8, ""

    invoke-static {v5, v6, v7, v8}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljavax/jmdns/ServiceInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serviceInfo:Ljavax/jmdns/ServiceInfo;

    .line 145
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serviceInfo:Ljavax/jmdns/ServiceInfo;

    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getTxtMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/jmdns/ServiceInfo;->setText(Ljava/util/Map;)V

    .line 146
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serviceInfo:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v4, v5}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 153
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "server socket socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    sget-object v5, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v4, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 155
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    .line 156
    sget-object v2, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "failed to create network server socket"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 157
    goto/16 :goto_0

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "inetAddress":Ljava/net/InetAddress;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 149
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_2
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serviceInfoLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 150
    :try_start_5
    iget-object v5, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serviceInfo:Ljavax/jmdns/ServiceInfo;

    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getTxtMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/jmdns/ServiceInfo;->setText(Ljava/util/Map;)V

    .line 151
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 154
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 76
    sget-object v0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Closing %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iput-boolean v5, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->closed:Z

    .line 78
    const-string v1, "server socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    sget-object v2, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 79
    const-string v1, "client socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->clientSocket:Ljava/net/Socket;

    sget-object v2, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 80
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->unblock()V

    .line 81
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract getInetAddress()Ljava/net/InetAddress;
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->closed:Z

    return v0
.end method

.method public notifySetupStatusChange()V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 283
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$3;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$3;-><init>(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method protected runInternally()V
    .locals 4

    .prologue
    .line 260
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->closed:Z

    if-nez v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->blockOnConnection()V

    .line 262
    invoke-direct {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->runServer()V

    .line 263
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 268
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V

    .line 273
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    sget-object v1, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 275
    :cond_1
    const-string v1, "server socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    sget-object v2, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 276
    const-string v1, "client socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->clientSocket:Ljava/net/Socket;

    sget-object v2, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 278
    :goto_3
    return-void

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    if-eqz v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V

    .line 273
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    sget-object v1, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 275
    :cond_4
    const-string v1, "server socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    sget-object v2, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 276
    const-string v1, "client socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->clientSocket:Ljava/net/Socket;

    sget-object v2, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_3

    .line 275
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 276
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 275
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 276
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 268
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->lock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 271
    :cond_9
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    if-eqz v0, :cond_a

    .line 272
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->unregisterAllServices()V

    .line 273
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->jmdns:Ljavax/jmdns/JmDNS;

    sget-object v2, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 275
    :cond_a
    const-string v2, "server socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->serverSocket:Ljava/net/ServerSocket;

    sget-object v3, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 276
    const-string v2, "client socket of "

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->clientSocket:Ljava/net/Socket;

    sget-object v3, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/net/Socket;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v1

    .line 275
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 276
    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public setKey(Lcom/google/glass/bluetooth/companion/PresharedKey;)V
    .locals 0
    .param p1, "key"    # Lcom/google/glass/bluetooth/companion/PresharedKey;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->presharedKey:Lcom/google/glass/bluetooth/companion/PresharedKey;

    .line 91
    return-void
.end method
