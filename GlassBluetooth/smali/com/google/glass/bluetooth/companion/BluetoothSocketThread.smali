.class public Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;
.super Lcom/google/glass/bluetooth/companion/CompanionServerThread;
.source "BluetoothSocketThread.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

.field private volatile clientSocketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

.field private volatile closed:Z

.field private volatile serverSocketWrapper:Lcom/google/glass/bluetooth/BluetoothServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V
    .locals 1
    .param p1, "companionSocketServer"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p2, "formerSocketThread"    # Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V

    .line 33
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->closed:Z

    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 39
    sget-object v0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Closing SocketThread [%s]"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iput-boolean v4, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->closed:Z

    .line 41
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->serverSocketWrapper:Lcom/google/glass/bluetooth/BluetoothServerSocket;

    sget-object v1, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 42
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->clientSocketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

    sget-object v1, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->unblock()V

    .line 44
    return-void
.end method

.method public getConnectionType()Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->RFCOMM:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->closed:Z

    return v0
.end method

.method protected runInternally()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 58
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "SocketThread [%s] is now running."

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-boolean v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->closed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->blockOnConnection()V

    .line 62
    iget-boolean v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->closed:Z

    if-eqz v2, :cond_2

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isBluetoothEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Bluetooth is enabled but socket thread is killed!"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_1
    return-void

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->clientSocketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

    sget-object v3, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 69
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->serverSocketWrapper:Lcom/google/glass/bluetooth/BluetoothServerSocket;

    if-nez v2, :cond_3

    .line 71
    :try_start_0
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Listening using secure SDP: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/glass/companion/CompanionConstants;->SECURE_UUID:Landroid/os/ParcelUuid;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->btAdapterWrapper:Lcom/google/glass/bluetooth/BluetoothAdapter;

    const-string v3, "Companion"

    sget-object v4, Lcom/google/glass/companion/CompanionConstants;->SECURE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;)Lcom/google/glass/bluetooth/BluetoothServerSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->serverSocketWrapper:Lcom/google/glass/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :cond_3
    iget-boolean v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->closed:Z

    if-nez v2, :cond_0

    .line 88
    :try_start_1
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Waiting for a Companion Bluetooth client to connect..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->serverSocketWrapper:Lcom/google/glass/bluetooth/BluetoothServerSocket;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/BluetoothServerSocket;->accept()Lcom/google/glass/bluetooth/BluetoothSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->clientSocketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

    .line 90
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Companion Bluetooth client connected."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 96
    iget-boolean v2, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->closed:Z

    if-nez v2, :cond_0

    .line 100
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Creating CompanionConnection in SocketThread..."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    new-instance v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;

    new-instance v2, Lcom/google/glass/util/TimeZoneUtil;

    .line 102
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/util/TimeZoneUtil;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->clientSocketWrapper:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/glass/bluetooth/companion/CompanionConnection;-><init>(Lcom/google/glass/util/TimeZoneUtil;Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/BluetoothSocket;)V

    .line 105
    .local v0, "connection":Lcom/google/glass/bluetooth/companion/CompanionConnection;
    :try_start_2
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->prepareConnection(Lcom/google/glass/bluetooth/companion/CompanionConnection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionConnected(Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V

    .line 107
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Starting Companion connection handling..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->run()V

    .line 112
    :goto_1
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Completed Companion connection handling!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionDisconnected(Lcom/google/glass/bluetooth/companion/CompanionConnection;)V

    .line 115
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 116
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Connection closed, restarting serverSocket ..."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 74
    .end local v0    # "connection":Lcom/google/glass/bluetooth/companion/CompanionConnection;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to listen for incoming Companion connections: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 77
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to listen for Bluetooth server socket connect."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 92
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to accept Bluetooth socket."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 110
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "connection":Lcom/google/glass/bluetooth/companion/CompanionConnection;
    :cond_4
    :try_start_3
    sget-object v2, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Quiting since there is always a connection running."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 114
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->getCompanionSocketServer()Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionDisconnected(Lcom/google/glass/bluetooth/companion/CompanionConnection;)V

    .line 115
    sget-object v3, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 116
    sget-object v3, Lcom/google/glass/bluetooth/companion/BluetoothSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Connection closed, restarting serverSocket ..."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method
