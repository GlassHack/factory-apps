.class public Lcom/google/glass/net/AndroidHttpRequestDispatcher;
.super Ljava/lang/Object;
.source "AndroidHttpRequestDispatcher.java"

# interfaces
.implements Lcom/google/glass/net/HttpRequestDispatcher;


# static fields
.field private static final TIMEOUT_MS:I = 0x7530

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final client:Landroid/net/http/AndroidHttpClient;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/net/UserAgentProvider;->getInstance()Lcom/google/glass/net/UserAgentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/UserAgentProvider;->get()Lcom/google/glass/net/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x7530

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->context:Landroid/content/Context;

    .line 50
    invoke-static {p2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    .line 52
    iget-object v1, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 53
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    return-void
.end method

.method private prepareEntityRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 4
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .param p3, "bodyEntity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpEntity;",
            ")",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 63
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    if-eqz p3, :cond_1

    .line 70
    invoke-virtual {p1, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 73
    :cond_1
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 152
    return-void
.end method

.method public postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/PendingHttpRequest;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "postData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/glass/net/PendingHttpRequest;"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 86
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    if-eqz p3, :cond_0

    .line 91
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    .end local v0    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-direct {v0, p3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 94
    .restart local v0    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, p2, v0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->prepareEntityRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    .line 95
    .local v1, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lcom/google/glass/net/PendingHttpRequest;

    iget-object v3, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/glass/net/PendingHttpRequest;-><init>(Landroid/content/Context;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    .line 97
    .local v2, "request":Lcom/google/glass/net/PendingHttpRequest;
    return-object v2
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)Lcom/google/glass/net/PendingHttpRequest;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/glass/net/PendingHttpRequest;"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 141
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 143
    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->prepareEntityRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpPut;

    .line 144
    .local v0, "put":Lorg/apache/http/client/methods/HttpPut;
    new-instance v1, Lcom/google/glass/net/PendingHttpRequest;

    iget-object v2, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/glass/net/PendingHttpRequest;-><init>(Landroid/content/Context;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    .line 146
    .local v1, "request":Lcom/google/glass/net/PendingHttpRequest;
    return-object v1
.end method

.method public putWithFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;JJ)Lcom/google/glass/net/PendingHttpRequest;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/google/glass/net/PendingHttpRequest;"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 121
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 123
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    :cond_0
    sget-object v1, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bad file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    const/4 v1, 0x0

    .line 135
    :goto_0
    return-object v1

    .line 128
    :cond_1
    const/4 v0, 0x0

    .line 130
    .local v0, "entity":Lcom/google/glass/net/FileRangeEntity;
    const-wide/16 v1, 0x0

    cmp-long v1, p7, v1

    if-lez v1, :cond_2

    .line 131
    new-instance v0, Lcom/google/glass/net/FileRangeEntity;

    .end local v0    # "entity":Lcom/google/glass/net/FileRangeEntity;
    add-long v1, p5, p7

    const-wide/16 v3, 0x1

    sub-long v5, v1, v3

    move-object v1, p3

    move-object v2, p4

    move-wide v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/net/FileRangeEntity;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    .line 134
    .restart local v0    # "entity":Lcom/google/glass/net/FileRangeEntity;
    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2, v0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->prepareEntityRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v7

    check-cast v7, Lorg/apache/http/client/methods/HttpPut;

    .line 135
    .local v7, "put":Lorg/apache/http/client/methods/HttpPut;
    new-instance v1, Lcom/google/glass/net/PendingHttpRequest;

    iget-object v2, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-direct {v1, v2, v3, v7}, Lcom/google/glass/net/PendingHttpRequest;-><init>(Landroid/content/Context;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    goto :goto_0
.end method

.method public putWithStream(Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/glass/net/PendingHttpRequest;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "stream"    # Ljava/io/InputStream;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/glass/net/PendingHttpRequest;"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 104
    invoke-static {p3}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "entity":Lorg/apache/http/entity/InputStreamEntity;
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_0

    .line 110
    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    .end local v0    # "entity":Lorg/apache/http/entity/InputStreamEntity;
    invoke-direct {v0, p3, p5, p6}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 113
    .restart local v0    # "entity":Lorg/apache/http/entity/InputStreamEntity;
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, p2, v0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->prepareEntityRequest(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpPut;

    .line 114
    .local v1, "put":Lorg/apache/http/client/methods/HttpPut;
    new-instance v2, Lcom/google/glass/net/PendingHttpRequest;

    iget-object v3, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/glass/net/AndroidHttpRequestDispatcher;->client:Landroid/net/http/AndroidHttpClient;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/glass/net/PendingHttpRequest;-><init>(Landroid/content/Context;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    return-object v2
.end method
