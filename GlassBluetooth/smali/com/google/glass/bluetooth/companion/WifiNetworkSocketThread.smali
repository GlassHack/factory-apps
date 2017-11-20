.class public Lcom/google/glass/bluetooth/companion/WifiNetworkSocketThread;
.super Lcom/google/glass/bluetooth/companion/NetworkSocketThread;
.source "WifiNetworkSocketThread.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/WifiNetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V
    .locals 0
    .param p1, "companionSocketServer"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p2, "oldNetworkSocketThread"    # Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getConnectionType()Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->WIFI_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    return-object v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 25
    iget-object v4, p0, Lcom/google/glass/bluetooth/companion/WifiNetworkSocketThread;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 26
    .local v3, "wifiinfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    .line 28
    .local v2, "intaddr":I
    const/4 v4, 0x4

    new-array v0, v4, [B

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    const/4 v4, 0x1

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x2

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x3

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 31
    .local v0, "byteaddr":[B
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 34
    :goto_0
    return-object v4

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v4, Lcom/google/glass/bluetooth/companion/WifiNetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Can\'t parse wifi address"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const/4 v4, 0x0

    goto :goto_0
.end method
