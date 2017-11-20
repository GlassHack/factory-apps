.class public Lcom/google/glass/bluetooth/companion/TetheringNetworkSocketThread;
.super Lcom/google/glass/bluetooth/companion/NetworkSocketThread;
.source "TetheringNetworkSocketThread.java"


# static fields
.field private static final TETHERING_INTERFACE_NAME:Ljava/lang/String; = "bt-pan"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/TetheringNetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V
    .locals 0
    .param p1, "companionSocketServer"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p2, "oldNetworkSocketThread"    # Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;-><init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getConnectionType()Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->TETHERING_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    return-object v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 29
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 30
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 31
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 32
    .local v4, "networkInterface":Ljava/net/NetworkInterface;
    const-string v5, "bt-pan"

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 35
    sget-object v5, Lcom/google/glass/bluetooth/companion/TetheringNetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Bluetooth tethering NetworkInterface is %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 38
    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 39
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 40
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v3, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 48
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "networkInterface":Ljava/net/NetworkInterface;
    :goto_0
    return-object v3

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/net/SocketException;
    sget-object v5, Lcom/google/glass/bluetooth/companion/TetheringNetworkSocketThread;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Can\'t find ip address"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
