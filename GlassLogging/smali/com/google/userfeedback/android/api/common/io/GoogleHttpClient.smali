.class public Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;
.super Ljava/lang/Object;
.source "GoogleHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleHttpClient_v09"


# instance fields
.field private final mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p2}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    .line 87
    iput-object p1, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    .line 88
    iput-object p2, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mUserAgent:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "appAndVersion"    # Ljava/lang/String;
    .param p3, "gzipCapable"    # Z

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "userAgent":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 113
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "; gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    invoke-static {v0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    .line 116
    iput-object p1, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    .line 117
    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mUserAgent:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static getGzipCapableUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "originalUserAgent"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "; gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 3
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    instance-of v2, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_0

    .line 208
    new-instance v1, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 215
    .local v1, "wrapped":Lorg/apache/http/impl/client/RequestWrapper;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 217
    return-object v1

    .line 211
    .end local v1    # "wrapped":Lorg/apache/http/impl/client/RequestWrapper;
    .restart local p0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "wrapped":Lorg/apache/http/impl/client/RequestWrapper;
    goto :goto_0

    .line 218
    .end local v1    # "wrapped":Lorg/apache/http/impl/client/RequestWrapper;
    .end local p0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Lorg/apache/http/ProtocolException;
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v2, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->close()V

    .line 126
    return-void
.end method

.method public disableCurlLogging()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->disableCurlLogging()V

    .line 300
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 293
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 276
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 282
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 8
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 179
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "original":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    .end local v2    # "uri":Ljava/net/URI;
    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .restart local v2    # "uri":Ljava/net/URI;
    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v3

    .line 189
    .local v3, "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 190
    move-object p1, v3

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    return-object v4

    .line 183
    .end local v2    # "uri":Ljava/net/URI;
    .end local v3    # "wrapper":Lorg/apache/http/impl/client/RequestWrapper;
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Bad URL from: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-direct {v5, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const-string v0, "Error"

    .line 133
    .local v0, "code":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 135
    .local v3, "start":J
    :try_start_0
    iget-object v5, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v5, p1, p2}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 136
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    return-object v2

    .line 138
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    const-string v0, "IOException"

    .line 140
    throw v1
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/GoogleHttpClient;->mClient:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
