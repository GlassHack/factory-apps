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
.field private static final CAPTIVE_PORTAL_DETECTION_ENABLED:Ljava/lang/String; = "captive_portal_detection_enabled"

.field private static final CAPTIVE_PORTAL_SERVER:Ljava/lang/String; = "captive_portal_server"

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "www.google.com"

.field private static final TIMEOUT_MS:I = 0x1f40

.field private static companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetwork()V
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 137
    .local v0, "worker":Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->check()V

    .line 140
    :cond_0
    return-void
.end method

.method public static hasTetheredConnectivity(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 55
    const-string v4, "connectivity"

    .line 56
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 57
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 58
    .local v2, "networks":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 59
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 60
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    const/4 v3, 0x1

    .line 65
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return v3

    .line 59
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static pingGoogle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
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
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "captive_portal_detection_enabled"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 86
    .local v4, "isCaptivePortalCheckEnabled":I
    if-nez v4, :cond_0

    .line 87
    sget-object v12, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Pinging the network is disabled."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const/4 v12, 0x0

    .line 125
    :goto_0
    return v12

    .line 91
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "captive_portal_server"

    invoke-static {v12, v13}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "portalServer":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 95
    const-string v7, "www.google.com"

    .line 98
    :cond_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x15

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "https://"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/generate_204"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "pingURI":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v8, v6}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 101
    .local v8, "request":Lorg/apache/http/client/methods/HttpHead;
    invoke-static/range {p1 .. p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 102
    .local v3, "httpClient":Landroid/net/http/AndroidHttpClient;
    new-instance v9, Lcom/google/glass/net/RequestLogger;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v8}, Lcom/google/glass/net/RequestLogger;-><init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 103
    .local v9, "requestLogger":Lcom/google/glass/net/RequestLogger;
    const/4 v10, 0x0

    .line 105
    .local v10, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 106
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    const/16 v12, 0x1f40

    invoke-static {v5, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 107
    const/16 v12, 0x1f40

    invoke-static {v5, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    invoke-virtual {v3, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 110
    if-nez v10, :cond_3

    .line 111
    sget-object v13, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Unable to get response from "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_1
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v13, v12, v14}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    const/4 v12, 0x0

    .line 127
    invoke-virtual {v9, v10}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 128
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 111
    :cond_2
    :try_start_1
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 123
    .end local v5    # "params":Lorg/apache/http/params/HttpParams;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v12, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v13, "Unable to reach %s: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    const/4 v12, 0x0

    .line 127
    invoke-virtual {v9, v10}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 128
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "params":Lorg/apache/http/params/HttpParams;
    :cond_3
    :try_start_3
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 116
    .local v11, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 117
    .local v2, "headers":[Lorg/apache/http/Header;
    if-eqz v11, :cond_4

    if-nez v2, :cond_6

    .line 118
    :cond_4
    sget-object v13, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "Unable to reach "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_2
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface {v13, v12, v14}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    const/4 v12, 0x0

    .line 127
    invoke-virtual {v9, v10}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 128
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 118
    :cond_5
    :try_start_4
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 127
    .end local v2    # "headers":[Lorg/apache/http/Header;
    .end local v5    # "params":Lorg/apache/http/params/HttpParams;
    .end local v11    # "status":Lorg/apache/http/StatusLine;
    :catchall_0
    move-exception v12

    invoke-virtual {v9, v10}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 128
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v12

    .line 121
    .restart local v2    # "headers":[Lorg/apache/http/Header;
    .restart local v5    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v11    # "status":Lorg/apache/http/StatusLine;
    :cond_6
    :try_start_5
    sget-object v12, Lcom/google/glass/net/NetworkUtil;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Fetch of "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " returned status: %s"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v12

    const/16 v13, 0x190

    if-ge v12, v13, :cond_7

    const/4 v12, 0x1

    .line 127
    :goto_3
    invoke-virtual {v9, v10}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 128
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 122
    :cond_7
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public static reportNetworkError()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 147
    .local v0, "worker":Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->reportError()V

    .line 150
    :cond_0
    return-void
.end method

.method public static reportNetworkOK()V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 157
    .local v0, "worker":Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;->reportOK()V

    .line 160
    :cond_0
    return-void
.end method

.method public static setNetworkChecker(Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;)V
    .locals 0
    .param p0, "worker"    # Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .prologue
    .line 167
    sput-object p0, Lcom/google/glass/net/NetworkUtil;->companionNetworkWorker:Lcom/google/glass/net/NetworkUtil$CompanionNetworkWorker;

    .line 168
    return-void
.end method
