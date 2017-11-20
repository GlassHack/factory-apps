.class public Lcom/google/glass/net/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    }
.end annotation


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
    .local v0, "worker":Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->check()V

    .line 113
    :cond_0
    return-void
.end method

.method public static hasTetheredConnectivity(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 45
    const-string v4, "connectivity"

    .line 46
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 48
    .local v2, "networks":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 49
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 50
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 51
    const/4 v3, 0x1

    .line 55
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return v3

    .line 49
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static pingGoogle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

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
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 73
    new-instance v4, Lorg/apache/http/client/methods/HttpHead;

    const-string v8, "https://www.google.com/generate_204"

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 74
    .local v4, "request":Lorg/apache/http/client/methods/HttpHead;
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 75
    .local v2, "httpClient":Landroid/net/http/AndroidHttpClient;
    new-instance v5, Lcom/google/glass/net/RequestLogger;

    invoke-direct {v5, p0, v4}, Lcom/google/glass/net/RequestLogger;-><init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 76
    .local v5, "requestLogger":Lcom/google/glass/net/RequestLogger;
    const/4 v6, 0x0

    .line 78
    .local v6, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 79
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    const/16 v8, 0x1f40

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 80
    const/16 v8, 0x1f40

    invoke-static {v3, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 82
    invoke-virtual {v2, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 83
    if-nez v6, :cond_0

    .line 84
    sget-object v8, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Unable to get response from https://www.google.com/generate_204"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    const/4 v8, 0x0

    .line 100
    invoke-virtual {v5, v6}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 101
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    :goto_0
    return v8

    .line 88
    .restart local v3    # "params":Lorg/apache/http/params/HttpParams;
    :cond_0
    :try_start_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 89
    .local v7, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 90
    .local v1, "headers":[Lorg/apache/http/Header;
    if-eqz v7, :cond_1

    if-nez v1, :cond_2

    .line 91
    :cond_1
    sget-object v8, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Unable to reach https://www.google.com/generate_204"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    const/4 v8, 0x0

    .line 100
    invoke-virtual {v5, v6}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 101
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 94
    :cond_2
    :try_start_2
    sget-object v8, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Fetch of https://www.google.com/generate_204 returned status: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    const/16 v9, 0x190

    if-ge v8, v9, :cond_3

    const/4 v8, 0x1

    .line 100
    :goto_1
    invoke-virtual {v5, v6}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 101
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 95
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 96
    .end local v1    # "headers":[Lorg/apache/http/Header;
    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    .end local v7    # "status":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v8, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Unable to reach %s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "https://www.google.com/generate_204"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    const/4 v8, 0x0

    .line 100
    invoke-virtual {v5, v6}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 101
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-virtual {v5, v6}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 101
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v8
.end method

.method public static reportNetworkError()V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 120
    .local v0, "worker":Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
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
    .local v0, "worker":Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->reportOK()V

    .line 133
    :cond_0
    return-void
.end method

.method public static setNetworkChecker(Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;)V
    .locals 0
    .param p0, "worker"    # Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .prologue
    .line 140
    sput-object p0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 141
    return-void
.end method
