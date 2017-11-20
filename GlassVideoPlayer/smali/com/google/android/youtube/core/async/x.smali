.class public final Lcom/google/android/youtube/core/async/x;
.super Lcom/google/android/youtube/core/async/j;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/http/client/HttpClient;

.field private b:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/be;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p2, p3}, Lcom/google/android/youtube/core/async/j;-><init>(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/b;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/x;->b:Z

    .line 50
    const-string v0, "httpClient may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/x;->a:Lorg/apache/http/client/HttpClient;

    .line 51
    return-void
.end method

.method private a(Ljava/lang/Object;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/youtube/core/async/h;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 104
    instance-of v0, p4, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_0

    move-object v0, p4

    .line 105
    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Http error: request=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Http error: status=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] msg=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/async/j;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;Ljava/lang/Exception;)V

    .line 111
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)V
    .locals 1

    .prologue
    .line 118
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 122
    :cond_0
    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/youtube/core/async/h;)V
    .locals 3

    .prologue
    .line 70
    const-string v0, "request can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/x;->b:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p1}, Lcom/google/android/youtube/core/async/y;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/x;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 79
    invoke-interface {p2, p1, v1}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v1, :cond_1

    .line 93
    :try_start_1
    invoke-static {v1}, Lcom/google/android/youtube/core/async/x;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 83
    :try_start_2
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-eqz v1, :cond_1

    .line 93
    :try_start_3
    invoke-static {v1}, Lcom/google/android/youtube/core/async/x;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    const-string v1, "Error consuming content response"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :catch_2
    move-exception v0

    .line 85
    :try_start_4
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 86
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    if-eqz v1, :cond_2

    .line 93
    :try_start_5
    invoke-static {v1}, Lcom/google/android/youtube/core/async/x;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 98
    :cond_2
    :goto_1
    throw v0

    .line 87
    :catch_3
    move-exception v0

    .line 89
    :try_start_6
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 91
    if-eqz v1, :cond_1

    .line 93
    :try_start_7
    invoke-static {v1}, Lcom/google/android/youtube/core/async/x;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 94
    :catch_4
    move-exception v0

    .line 95
    const-string v1, "Error consuming content response"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 94
    :catch_5
    move-exception v1

    .line 95
    const-string v2, "Error consuming content response"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 94
    :catch_6
    move-exception v0

    .line 95
    const-string v1, "Error consuming content response"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Object;

    check-cast p2, Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast p3, Lcom/google/android/youtube/core/async/h;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/async/x;->a(Ljava/lang/Object;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/youtube/core/async/h;Ljava/lang/Exception;)V

    return-void
.end method

.method protected final synthetic b(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast p2, Lcom/google/android/youtube/core/async/h;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/x;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/youtube/core/async/h;)V

    return-void
.end method
