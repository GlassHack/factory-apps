.class Lcom/google/glass/net/RequestLogger;
.super Ljava/lang/Object;
.source "RequestLogger.java"


# static fields
.field private static final KEY_FINAL_NET_STATE:Ljava/lang/String; = "fns"

.field private static final KEY_FINAL_NET_TYPE:Ljava/lang/String; = "fnt"

.field private static final KEY_FINAL_WIFI_LINK_SPEED:Ljava/lang/String; = "fwl"

.field private static final KEY_FINAL_WIFI_RSSI:Ljava/lang/String; = "fwr"

.field private static final KEY_HTTP_STATUS:Ljava/lang/String; = "hs"

.field private static final KEY_LATENCY:Ljava/lang/String; = "l"

.field private static final KEY_METHOD:Ljava/lang/String; = "m"

.field private static final KEY_ORIGINAL_NET_STATE:Ljava/lang/String; = "ons"

.field private static final KEY_ORIGINAL_NET_TYPE:Ljava/lang/String; = "ont"

.field private static final KEY_ORIGINAL_WIFI_LINK_SPEED:Ljava/lang/String; = "owl"

.field private static final KEY_ORIGINAL_WIFI_RSSI:Ljava/lang/String; = "owr"

.field private static final KEY_SUCCESS:Ljava/lang/String; = "s"


# instance fields
.field private final cm:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private final method:Ljava/lang/String;

.field private final originalNetInfo:Landroid/net/NetworkInfo;

.field private final originalWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final stopwatch:Lcom/google/glass/time/Stopwatch;

.field private final wm:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/glass/net/RequestLogger;->context:Landroid/content/Context;

    .line 42
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/net/RequestLogger;->cm:Landroid/net/ConnectivityManager;

    .line 43
    iget-object v0, p0, Lcom/google/glass/net/RequestLogger;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/RequestLogger;->originalNetInfo:Landroid/net/NetworkInfo;

    .line 44
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/RequestLogger;->method:Ljava/lang/String;

    .line 45
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/glass/net/RequestLogger;->wm:Landroid/net/wifi/WifiManager;

    .line 46
    iget-object v0, p0, Lcom/google/glass/net/RequestLogger;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/RequestLogger;->originalWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 47
    new-instance v0, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v0}, Lcom/google/glass/time/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/RequestLogger;->stopwatch:Lcom/google/glass/time/Stopwatch;

    .line 48
    iget-object v0, p0, Lcom/google/glass/net/RequestLogger;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v0}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 49
    return-void
.end method

.method private static stateToInteger(Landroid/net/NetworkInfo$State;)I
    .locals 2
    .param p0, "state"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 104
    sget-object v0, Lcom/google/glass/net/RequestLogger$1;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p0}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 105
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 107
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 108
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 109
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 110
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public log(Lorg/apache/http/HttpResponse;)V
    .locals 12
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 52
    iget-object v8, p0, Lcom/google/glass/net/RequestLogger;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 53
    .local v1, "finalNetInfo":Landroid/net/NetworkInfo;
    iget-object v8, p0, Lcom/google/glass/net/RequestLogger;->wm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 55
    .local v2, "finalWifiInfo":Landroid/net/wifi/WifiInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "eventData":Ljava/lang/StringBuilder;
    const-string v8, "m"

    iget-object v10, p0, Lcom/google/glass/net/RequestLogger;->method:Ljava/lang/String;

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v10, "s"

    if-eqz p1, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v0, v10, v8}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v8, p0, Lcom/google/glass/net/RequestLogger;->stopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-virtual {v8}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v4

    .line 60
    .local v4, "latency":J
    const-string v8, "l"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 62
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 63
    .local v6, "statusCode":I
    const-string v8, "hs"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .end local v4    # "latency":J
    .end local v6    # "statusCode":I
    :cond_0
    iget-object v8, p0, Lcom/google/glass/net/RequestLogger;->originalNetInfo:Landroid/net/NetworkInfo;

    if-eqz v8, :cond_2

    .line 67
    iget-object v8, p0, Lcom/google/glass/net/RequestLogger;->originalNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-static {v8}, Lcom/google/glass/net/RequestLogger;->stateToInteger(Landroid/net/NetworkInfo$State;)I

    move-result v3

    .line 68
    .local v3, "state":I
    const-string v8, "ont"

    iget-object v10, p0, Lcom/google/glass/net/RequestLogger;->originalNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const-string v8, "ons"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .end local v3    # "state":I
    :goto_1
    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-static {v8}, Lcom/google/glass/net/RequestLogger;->stateToInteger(Landroid/net/NetworkInfo$State;)I

    move-result v3

    .line 76
    .restart local v3    # "state":I
    const-string v8, "fnt"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    const-string v8, "fns"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    .end local v3    # "state":I
    :goto_2
    iget-object v8, p0, Lcom/google/glass/net/RequestLogger;->originalWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v8, :cond_4

    .line 83
    const-string v8, "owl"

    iget-object v10, p0, Lcom/google/glass/net/RequestLogger;->originalWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 84
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 83
    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v8, "owr"

    iget-object v10, p0, Lcom/google/glass/net/RequestLogger;->originalWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    :goto_3
    if-eqz v2, :cond_5

    .line 91
    const-string v8, "fwl"

    .line 92
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 91
    invoke-static {v0, v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v8, "fwr"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :goto_4
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v8

    iget-object v9, p0, Lcom/google/glass/net/RequestLogger;->context:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v7

    .line 100
    .local v7, "userEvent":Lcom/google/glass/userevent/UserEventHelper;
    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_NETWORK_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 101
    return-void

    .end local v7    # "userEvent":Lcom/google/glass/userevent/UserEventHelper;
    :cond_1
    move v8, v9

    .line 57
    goto/16 :goto_0

    .line 71
    :cond_2
    const-string v8, "ont"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v8, "ons"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 79
    :cond_3
    const-string v8, "fnt"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v8, "fns"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 87
    :cond_4
    const-string v8, "owl"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v8, "owr"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 95
    :cond_5
    const-string v8, "fwl"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0, v8, v10}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v8, "fwr"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4
.end method
