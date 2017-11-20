.class public Lcom/google/glass/net/NetworkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PING_URI:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final TIMEOUT_MS:I = 0x1f40

.field private static companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static checkNetwork()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->check()V

    .line 113
    :cond_0
    return-void
.end method

.method public static hasTetheredConnectivity(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, "connectivity"

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 50
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 55
    :goto_1
    return v0

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 55
    goto :goto_1
.end method

.method public static pingGoogle(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/google/glass/net/UserAgentProvider;->getInstance()Lcom/google/glass/net/UserAgentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/UserAgentProvider;->get()Lcom/google/glass/net/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/net/NetworkUtil;->pingGoogle(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static pingGoogle(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 73
    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    const-string v2, "https://www.google.com/generate_204"

    invoke-direct {v3, v2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    .line 75
    new-instance v5, Lcom/google/glass/net/RequestLogger;

    invoke-direct {v5, p0, v3}, Lcom/google/glass/net/RequestLogger;-><init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 76
    const/4 v2, 0x0

    .line 78
    :try_start_0
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    .line 79
    const/16 v7, 0x1f40

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 80
    const/16 v7, 0x1f40

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 82
    invoke-virtual {v4, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 83
    if-nez v2, :cond_0

    .line 84
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to get response from https://www.google.com/generate_204"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0, v3, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v5, v2}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 101
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    :goto_0
    return v1

    .line 88
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 89
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    .line 90
    if-eqz v3, :cond_1

    if-nez v6, :cond_2

    .line 91
    :cond_1
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to reach https://www.google.com/generate_204"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0, v3, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-virtual {v5, v2}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 101
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 94
    :cond_2
    :try_start_2
    sget-object v6, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Fetch of https://www.google.com/generate_204 returned status: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    const/16 v6, 0x190

    if-ge v3, v6, :cond_3

    .line 100
    :goto_1
    invoke-virtual {v5, v2}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 101
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_3
    sget-object v3, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Unable to reach %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "https://www.google.com/generate_204"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-interface {v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    invoke-virtual {v5, v2}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 101
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    invoke-virtual {v5, v2}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 101
    invoke-virtual {v4}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v0
.end method

.method public static reportNetworkError()V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->reportError()V

    .line 123
    :cond_0
    return-void
.end method

.method public static reportNetworkOK()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->reportOK()V

    .line 133
    :cond_0
    return-void
.end method

.method public static setNetworkChecker(Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;)V
    .locals 0

    .prologue
    .line 140
    sput-object p0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 141
    return-void
.end method
