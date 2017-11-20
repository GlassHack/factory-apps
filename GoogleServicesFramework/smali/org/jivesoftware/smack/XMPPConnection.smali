.class public Lorg/jivesoftware/smack/XMPPConnection;
.super Ljava/lang/Object;
.source "XMPPConnection.java"


# static fields
.field public static CURRENT_VERSION:B

.field public static DEBUG_ENABLED:Z

.field private static connectionEstablishedListeners:Ljava/util/List;


# instance fields
.field private anonymous:Z

.field private authenticated:Z

.field chats:Ljava/util/Map;

.field private compressionMethods:Ljava/util/Collection;

.field private configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field private connected:Z

.field connectionID:Ljava/lang/String;

.field private heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

.field host:Ljava/lang/String;

.field private localConnectionId:I

.field private loginSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultAccountId:J

.field mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

.field mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

.field mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field packetReader:Lorg/jivesoftware/smack/PacketReader;

.field packetWriter:Lorg/jivesoftware/smack/PacketWriter;

.field port:I

.field reader:Ljava/io/InputStream;

.field private saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

.field private serverClockSkew:J

.field serviceName:Ljava/lang/String;

.field socket:Ljava/net/Socket;

.field useProtoBuf:Z

.field private user:Ljava/lang/String;

.field private usingCompression:Z

.field private usingTLS:Z

.field writer:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x8

    sput-byte v0, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/XMPPConnection;->connectionEstablishedListeners:Ljava/util/List;

    .line 119
    :try_start_0
    const-string v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getVersion()Ljava/lang/String;

    .line 126
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjavax/net/SocketFactory;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "useProtoBuf"    # Z
    .param p5, "socketFactory"    # Ljavax/net/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 147
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 148
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 149
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z

    .line 150
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 155
    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    .line 156
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mDefaultAccountId:J

    .line 172
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    .line 173
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 174
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    .line 180
    new-instance v1, Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/SASLAuthentication;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->chats:Ljava/util/Map;

    .line 336
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    .local v0, "config":Lorg/jivesoftware/smack/ConnectionConfiguration;
    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setTLSEnabled(Z)V

    .line 338
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    .line 339
    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 340
    sget-boolean v1, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setDebuggerEnabled(Z)V

    .line 341
    invoke-virtual {v0, p4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setUseProtoBuf(Z)V

    .line 343
    invoke-direct {p0, v0, p5}, Lorg/jivesoftware/smack/XMPPConnection;->connectUsingConfiguration(Lorg/jivesoftware/smack/ConnectionConfiguration;Ljavax/net/SocketFactory;)V

    .line 344
    return-void
.end method

.method private closeSocket()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 794
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 806
    :goto_0
    return-void

    .line 799
    :cond_0
    :try_start_0
    const-string v1, "Smack"

    const-string v2, "close socket"

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "Smack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSocket: ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    throw v1
.end method

.method private connectUsingConfiguration(Lorg/jivesoftware/smack/ConnectionConfiguration;Ljavax/net/SocketFactory;)V
    .locals 7
    .param p1, "config"    # Lorg/jivesoftware/smack/ConnectionConfiguration;
    .param p2, "socketFactory"    # Ljavax/net/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPort()I

    move-result v3

    iput v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    .line 363
    :try_start_0
    const-string v3, "Smack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create socket connection("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    if-nez p2, :cond_0

    .line 365
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    iget v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 384
    :goto_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getUseProtoBuf()Z

    move-result v3

    iput-boolean v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    .line 385
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getServiceName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    .line 389
    :try_start_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/ConnectionConfiguration;

    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 396
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->init()V

    .line 400
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->setConnected(Z)V

    .line 403
    const-string v3, "Smack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_2

    .line 414
    return-void

    .line 368
    :cond_0
    :try_start_3
    iget-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    iget v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-virtual {p2, v3, v4}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 371
    :catch_0
    move-exception v2

    .line 372
    .local v2, "uhe":Ljava/net/UnknownHostException;
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v6, 0x194

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v3, v4, v5, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v3

    .line 377
    .end local v2    # "uhe":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 378
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Lorg/jivesoftware/smack/XMPPException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XMPPError connecting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v6, 0x1f6

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v3, v4, v5, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v3

    .line 404
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 407
    .local v0, "ex":Lorg/jivesoftware/smack/XMPPException;
    const-string v3, "Smack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectUsingConfiguration: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_1

    .line 409
    const-string v3, "Smack"

    const-string v4, "connectUsingConfiguration: socket is opened, close it."

    invoke-direct {p0, v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->closeSocket()V

    .line 412
    :cond_1
    throw v0

    .line 391
    .end local v0    # "ex":Lorg/jivesoftware/smack/XMPPException;
    :catch_3
    move-exception v3

    goto/16 :goto_1
.end method

.method private static connectionEstablished(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 1313
    const/4 v1, 0x0

    .line 1314
    .local v1, "listeners":[Lorg/jivesoftware/smack/ConnectionEstablishedListener;
    sget-object v3, Lorg/jivesoftware/smack/XMPPConnection;->connectionEstablishedListeners:Ljava/util/List;

    monitor-enter v3

    .line 1315
    :try_start_0
    sget-object v2, Lorg/jivesoftware/smack/XMPPConnection;->connectionEstablishedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Lorg/jivesoftware/smack/ConnectionEstablishedListener;

    .line 1316
    sget-object v2, Lorg/jivesoftware/smack/XMPPConnection;->connectionEstablishedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1317
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1319
    aget-object v2, v1, v0

    invoke-interface {v2, p0}, Lorg/jivesoftware/smack/ConnectionEstablishedListener;->connectionEstablished(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1317
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1321
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method private hasAvailableCompressionMethod(Ljava/lang/String;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1420
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1036
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 1038
    new-instance v0, Lorg/jivesoftware/smack/PacketWriter;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketWriter;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    .line 1039
    new-instance v0, Lorg/jivesoftware/smack/PacketReader;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketReader;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    .line 1051
    return-void
.end method

.method private initReaderAndWriter()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1173
    :try_start_0
    iget-boolean v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    if-nez v6, :cond_0

    .line 1174
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    .line 1175
    new-instance v6, Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    .line 1307
    :goto_0
    return-void

    .line 1178
    :cond_0
    const-string v6, "Smack"

    const-string v7, "initReaderAndWriter: use compression"

    invoke-direct {p0, v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->closeReader()V

    .line 1182
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->closeWriter()V

    .line 1185
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    .local v0, "def":Ljava/util/zip/Deflater;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "flushParm"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1189
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1190
    const/4 v6, 0x2

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1198
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :goto_1
    :try_start_2
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 1199
    .local v1, "dos":Ljava/io/OutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x2000

    invoke-direct {v6, v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    .line 1201
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    iget-object v6, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1202
    .local v3, "iis":Ljava/util/zip/InflaterInputStream;
    iput-object v3, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    .line 1203
    const-string v6, "Smack"

    const-string v7, "compression started"

    invoke-direct {p0, v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1241
    .end local v0    # "def":Ljava/util/zip/Deflater;
    .end local v1    # "dos":Ljava/io/OutputStream;
    .end local v3    # "iis":Ljava/util/zip/InflaterInputStream;
    :catch_0
    move-exception v4

    .line 1242
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "XMPPError establishing connection with server."

    new-instance v8, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v9, 0x1f6

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v6, v7, v8, v4}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v6

    .line 1191
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "def":Ljava/util/zip/Deflater;
    :catch_1
    move-exception v5

    .line 1196
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v6, "Smack"

    const-string v7, "Compression hack failed"

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    return-void
.end method

.method private logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1649
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gsf/gtalkservice/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    :cond_0
    return-void
.end method

.method private setAuthenticated(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 780
    const-string v0, "Smack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAuthenticated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iput-boolean p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 782
    return-void
.end method

.method private setConnected(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 756
    const-string v0, "Smack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iput-boolean p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    .line 758
    return-void
.end method

.method private useCompression()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1452
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v1, :cond_1

    .line 1483
    :cond_0
    :goto_0
    return v0

    .line 1457
    :cond_1
    iget-boolean v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    if-eqz v1, :cond_2

    .line 1458
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compression should be negotiated before authentication."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :cond_2
    const-string v1, "zlib"

    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->hasAvailableCompressionMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1473
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->requestStreamCompression()V

    .line 1475
    monitor-enter p0

    .line 1477
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1480
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1481
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    goto :goto_0

    .line 1480
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1479
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public acquireWakeLock(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1583
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1585
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wakelock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    :goto_0
    return-void

    .line 1588
    :cond_0
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWakeLock=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 1
    .param p1, "connectionListener"    # Lorg/jivesoftware/smack/ConnectionListener;

    .prologue
    .line 993
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 994
    return-void
.end method

.method public addDataMessageListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 1
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;

    .prologue
    .line 893
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->addDataMessageListener(Lorg/jivesoftware/smack/PacketListener;)Z

    .line 894
    return-void
.end method

.method public addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2
    .param p1, "packetListener"    # Lorg/jivesoftware/smack/PacketListener;
    .param p2, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 907
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/PacketReader;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)Z

    .line 911
    return-void
.end method

.method public declared-synchronized bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 14
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "resource"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1666
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1667
    .local v2, "user":Ljava/lang/String;
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1668
    .local v3, "domain":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smack/packet/BindAccountRequest;

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/jivesoftware/smack/packet/BindAccountRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1670
    .local v1, "bindAccount":Lorg/jivesoftware/smack/packet/BindAccountRequest;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/BindAccountRequest;->getPacketID()Ljava/lang/String;

    move-result-object v10

    .line 1671
    .local v10, "id":Ljava/lang/String;
    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-direct {v4, v10}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/XMPPConnection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v8

    .line 1672
    .local v8, "collector":Lorg/jivesoftware/smack/PacketCollector;
    iget-object v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 1676
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v8, v4, v5}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v12

    .line 1677
    .local v12, "packet":Lorg/jivesoftware/smack/packet/Packet;
    if-nez v12, :cond_0

    .line 1678
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "MCS authentication timed out."

    new-instance v6, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v7, 0x1f6

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1666
    .end local v1    # "bindAccount":Lorg/jivesoftware/smack/packet/BindAccountRequest;
    .end local v2    # "user":Ljava/lang/String;
    .end local v3    # "domain":Ljava/lang/String;
    .end local v8    # "collector":Lorg/jivesoftware/smack/PacketCollector;
    .end local v10    # "id":Ljava/lang/String;
    .end local v12    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1679
    .restart local v1    # "bindAccount":Lorg/jivesoftware/smack/packet/BindAccountRequest;
    .restart local v2    # "user":Ljava/lang/String;
    .restart local v3    # "domain":Ljava/lang/String;
    .restart local v8    # "collector":Lorg/jivesoftware/smack/PacketCollector;
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v12    # "packet":Lorg/jivesoftware/smack/packet/Packet;
    :cond_0
    :try_start_1
    instance-of v4, v12, Lorg/jivesoftware/smack/packet/BindAccountResponse;

    if-nez v4, :cond_1

    .line 1682
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Expected BindAccountResponse!"

    new-instance v6, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v7, 0x1f6

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v4, v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 1684
    :cond_1
    move-object v0, v12

    check-cast v0, Lorg/jivesoftware/smack/packet/BindAccountResponse;

    move-object v13, v0

    .line 1685
    .local v13, "response":Lorg/jivesoftware/smack/packet/BindAccountResponse;
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->getJid()Ljava/lang/String;

    move-result-object v11

    .line 1686
    .local v11, "jid":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1687
    invoke-virtual {v13}, Lorg/jivesoftware/smack/packet/BindAccountResponse;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v9

    .line 1688
    .local v9, "error":Lorg/jivesoftware/smack/packet/XMPPError;
    if-nez v9, :cond_2

    .line 1693
    new-instance v9, Lorg/jivesoftware/smack/packet/XMPPError;

    .end local v9    # "error":Lorg/jivesoftware/smack/packet/XMPPError;
    const/16 v4, 0x191

    invoke-direct {v9, v4}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    .line 1695
    .restart local v9    # "error":Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_2
    new-instance v4, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v4, v9}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v4

    .line 1699
    .end local v9    # "error":Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_3
    invoke-virtual {v8}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1701
    monitor-exit p0

    return-object v11
.end method

.method public close()V
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    .line 810
    return-void
.end method

.method public close(Z)V
    .locals 4
    .param p1, "notifyConnectionClosed"    # Z

    .prologue
    .line 819
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    monitor-enter v1

    .line 820
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 821
    const-string v0, "Smack"

    const-string v2, "close: socket already closed, bail"

    invoke-direct {p0, v0, v2}, Lorg/jivesoftware/smack/XMPPConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    monitor-exit v1

    .line 850
    :goto_0
    return-void

    .line 826
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    const-string v0, "Smack"

    const-string v2, "##### close: isConnected=false but socket is open! close it"

    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->closeSocket()V

    .line 830
    monitor-exit v1

    goto :goto_0

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 832
    :cond_1
    :try_start_1
    const-string v0, "Smack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close connection, notifyClosed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->shutdown(Z)V

    .line 836
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    const-wide/16 v2, 0x96

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->closeSocket()V

    .line 847
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setAuthenticated(Z)V

    .line 848
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setConnected(Z)V

    .line 849
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 842
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public closeReader()V
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1150
    :try_start_0
    const-string v0, "Smack"

    const-string v1, "[closeReader] close reader stream"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->reader:Ljava/io/InputStream;

    .line 1157
    :cond_0
    return-void

    .line 1152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public closeWriter()V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 1162
    :try_start_0
    const-string v0, "Smack"

    const-string v1, "[closeWriter] close writer stream"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    .line 1169
    :cond_0
    return-void

    .line 1164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1061
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "not connected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "ex":Lorg/jivesoftware/smack/XMPPException;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    .line 1143
    throw v0

    .line 1068
    .end local v0    # "ex":Lorg/jivesoftware/smack/XMPPException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketWriter;->startup()V

    .line 1071
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketReader;->startup()V

    .line 1079
    invoke-static {p0}, Lorg/jivesoftware/smack/XMPPConnection;->connectionEstablished(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1145
    return-void
.end method

.method public createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;
    .locals 1
    .param p1, "packetFilter"    # Lorg/jivesoftware/smack/filter/PacketFilter;

    .prologue
    .line 983
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XMPP connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getHostIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    return-void
.end method

.method public dumpVerbose(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .prologue
    .line 1634
    const-string v0, "PacketReader"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1635
    const-string v0, "----------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->dump(Ljava/io/PrintWriter;)V

    .line 1638
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    const-string v0, "PacketWriter"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    const-string v0, "----------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketWriter;->dump(Ljava/io/PrintWriter;)V

    .line 1642
    return-void
.end method

.method public getConnectionConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;
    .locals 1

    .prologue
    .line 1658
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    return-object v0
.end method

.method public getConnectionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connectionID:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAccountId()J
    .locals 2

    .prologue
    .line 1710
    iget-wide v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mDefaultAccountId:J

    return-wide v0
.end method

.method public getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHostIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x0

    .line 476
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 469
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastActivityFromServerTime()J
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketReader;->getLastActive()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastActivityToServerTime()J
    .locals 2

    .prologue
    .line 1533
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->getLastActive()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalConnectionId()I
    .locals 1

    .prologue
    .line 1607
    iget v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->localConnectionId:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->port:I

    return v0
.end method

.method public getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    return-object v0
.end method

.method public getRmqManager()Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    return-object v0
.end method

.method public getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    return-object v0
.end method

.method public getServerClockSkew()J
    .locals 2

    .prologue
    .line 512
    iget-wide v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->serverClockSkew:J

    return-wide v0
.end method

.method public getServerClockSkewKnown()Z
    .locals 2

    .prologue
    .line 521
    sget-byte v0, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->connected:Z

    return v0
.end method

.method public declared-synchronized login(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLjava/util/List;ZJIZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;I)V
    .locals 20
    .param p1, "useAndroidId"    # Z
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "resource"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "useRmq"    # Z
    .param p7, "lastRmqId"    # J
    .param p9, "useRmq2"    # Z
    .param p11, "sendPresence"    # Z
    .param p12, "accountId"    # J
    .param p14, "compress"    # I
    .param p15, "adaptiveHeartbeat"    # Z
    .param p16, "heartbeatStat"    # Lorg/jivesoftware/smack/packet/HeartbeatStat;
    .param p18, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZJIZ",
            "Lorg/jivesoftware/smack/packet/HeartbeatStat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 607
    .local p10, "rmq2S2dIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p17, "loginSettingsRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 608
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Not connected to server."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 610
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    if-eqz v4, :cond_1

    .line 611
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Already logged in to server."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 614
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 616
    const/16 v19, 0x0

    .line 617
    .local v19, "response":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-eqz v4, :cond_4

    .line 618
    new-instance v3, Lorg/jivesoftware/smack/ProtoBufAuthentication;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-wide/from16 v11, p12

    move-object/from16 v13, p10

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    invoke-direct/range {v3 .. v18}, Lorg/jivesoftware/smack/ProtoBufAuthentication;-><init>(Lorg/jivesoftware/smack/XMPPConnection;ZLjava/lang/String;ZJZJLjava/util/List;IZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;I)V

    .line 622
    .local v3, "auth":Lorg/jivesoftware/smack/ProtoBufAuthentication;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Lorg/jivesoftware/smack/ProtoBufAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 623
    invoke-virtual {v3}, Lorg/jivesoftware/smack/ProtoBufAuthentication;->getServerSettings()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->loginSettings:Ljava/util/Map;

    .line 624
    invoke-virtual {v3}, Lorg/jivesoftware/smack/ProtoBufAuthentication;->getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    .line 625
    invoke-virtual {v3}, Lorg/jivesoftware/smack/ProtoBufAuthentication;->getServerClockSkew()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->serverClockSkew:J

    .line 626
    const-string v4, "Smack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[XMPPConn] login via protobuf, serverClockSkew="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/jivesoftware/smack/XMPPConnection;->serverClockSkew:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .end local v3    # "auth":Lorg/jivesoftware/smack/ProtoBufAuthentication;
    :goto_0
    if-eqz v19, :cond_6

    .line 648
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 650
    invoke-static/range {v19 .. v19}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    .line 652
    const-string v4, "Smack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[XMPPConn] login: got servicename from response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isCompressionEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 675
    invoke-direct/range {p0 .. p0}, Lorg/jivesoftware/smack/XMPPConnection;->useCompression()Z

    .line 692
    :cond_3
    const-string v4, "Smack"

    const-string v5, "[XMPPConn] login: authenticated"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->authenticated:Z

    .line 696
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->anonymous:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    monitor-exit p0

    return-void

    .line 629
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSASLAuthenticationEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SASLAuthentication;->hasNonAnonymousAuthentication()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 632
    const-string v4, "Smack"

    const-string v5, "[XMPPConn] login: use SASL to authenticate"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 638
    :cond_5
    const-string v4, "Smack"

    const-string v5, "[XMPPConn] login: use NonSASL to authenticate"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    new-instance v4, Lorg/jivesoftware/smack/NonSASLAuthentication;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 659
    :cond_6
    const-string v4, "@"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 668
    :goto_2
    if-eqz p4, :cond_2

    .line 669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    goto/16 :goto_1

    .line 662
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jivesoftware/smack/XMPPConnection;->user:Ljava/lang/String;

    .line 663
    invoke-static/range {p2 .. p2}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    .line 665
    const-string v4, "Smack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[XMPPConn] login: get servicename from username "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/jivesoftware/smack/XMPPConnection;->serviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public markPacketReception()V
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->markPacketReception()V

    .line 1565
    :cond_0
    return-void
.end method

.method public markPacketTransmission()V
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->markPacketTransmission()V

    .line 1575
    :cond_0
    return-void
.end method

.method proceedTLSReceived()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1366
    const-string v1, "Smack"

    const-string v2, "[XMPPConn] proceedTLSReceived: bind TLS to socket"

    invoke-direct {p0, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    .line 1383
    .local v0, "plain":Ljava/net/Socket;
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    .line 1386
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1391
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 1393
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->socket:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 1396
    iput-boolean v4, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingTLS:Z

    .line 1399
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/PacketWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1401
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 1402
    return-void
.end method

.method public releaseWakeLock(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1593
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1595
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLock: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wakelock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    :goto_0
    return-void

    .line 1598
    :cond_0
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLock: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWakeLock=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetConnection(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1554
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    .line 1555
    return-void
.end method

.method public sendHeartbeat()V
    .locals 2

    .prologue
    .line 886
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->sendHeartbeat()V

    .line 890
    return-void
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 872
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_0
    if-nez p1, :cond_1

    .line 876
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Packet is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 879
    return-void
.end method

.method setAvailableCompressionMethods(Ljava/util/Collection;)V
    .locals 0
    .param p1, "methods"    # Ljava/util/Collection;

    .prologue
    .line 1410
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->compressionMethods:Ljava/util/Collection;

    .line 1411
    return-void
.end method

.method public setDefaultAccountId(J)V
    .locals 0
    .param p1, "accountId"    # J

    .prologue
    .line 1706
    iput-wide p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mDefaultAccountId:J

    .line 1707
    return-void
.end method

.method public setHeartbeatAlarm(Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;)V
    .locals 0
    .param p1, "alarm"    # Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    .prologue
    .line 1545
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mGTalkHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    .line 1546
    return-void
.end method

.method public setLocalConnectionId(I)V
    .locals 0
    .param p1, "ts"    # I

    .prologue
    .line 1603
    iput p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->localConnectionId:I

    .line 1604
    return-void
.end method

.method public setRmq2Manager(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V
    .locals 0
    .param p1, "rmq2Mgr"    # Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .prologue
    .line 1611
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 1612
    return-void
.end method

.method public setWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .locals 3
    .param p1, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 1578
    iput-object p1, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1579
    const-string v0, "GTalkService/wake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    return-void
.end method

.method public startStreamCompression()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1491
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->startStreamCompression(Z)V

    .line 1492
    return-void
.end method

.method public startStreamCompression(Z)V
    .locals 2
    .param p1, "notify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->usingCompression:Z

    .line 1503
    invoke-direct {p0}, Lorg/jivesoftware/smack/XMPPConnection;->initReaderAndWriter()V

    .line 1506
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/PacketWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 1508
    iget-boolean v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->useProtoBuf:Z

    if-nez v0, :cond_0

    .line 1511
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->openStream()V

    .line 1514
    :cond_0
    if-eqz p1, :cond_1

    .line 1515
    monitor-enter p0

    .line 1516
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1517
    monitor-exit p0

    .line 1519
    :cond_1
    return-void

    .line 1517
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startTLSReceived()V
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isTLSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1358
    :goto_0
    return-void

    .line 1357
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketWriter;->sendStartTLS()V

    goto :goto_0
.end method

.method streamCompressionDenied()V
    .locals 1

    .prologue
    .line 1523
    monitor-enter p0

    .line 1524
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1525
    monitor-exit p0

    .line 1526
    return-void

    .line 1525
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method write(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 861
    .local v0, "utfBytes":[B
    iget-object v2, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    monitor-enter v2

    .line 862
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 863
    monitor-exit v2

    .line 864
    return-void

    .line 863
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
