.class Lcom/google/glass/voice/network/DirectGwsRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

.field final synthetic val$canUseSignIn:Z

.field final synthetic val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/DirectGwsRequest;Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    iput-object p2, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$query:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$canUseSignIn:Z

    iput-object p4, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v3, Lcom/google/glass/voice/network/SearchQueryBuilder;

    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$query:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Lcom/google/glass/voice/network/SearchQueryBuilder;->addTransportParams()V

    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/DirectGwsRequest;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 76
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 77
    sget v1, Lcom/google/glass/voice/network/DirectGwsRequest;->HTTP_TIMEOUT_MS:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    sget v1, Lcom/google/glass/voice/network/DirectGwsRequest;->HTTP_TIMEOUT_MS:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 79
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    invoke-static {v0}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$000(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/location/LocationManagerHelper;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getHttpHeaders(Lcom/google/glass/location/LocationManagerHelper;)Ljava/util/Map;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, "Host"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    invoke-static {v0}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$100(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/Cookies;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    const-string v1, "Cookie"

    invoke-virtual {v5, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    iget-boolean v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$canUseSignIn:Z

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    invoke-static {v0}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$200(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    move-result-object v0

    sget-wide v6, Lcom/google/glass/voice/network/DirectGwsRequest;->AUTH_TOKEN_LOOKUP_TIMEOUT_MS:J

    invoke-virtual {v0, v6, v7}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->getSearchAuthToken(J)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 98
    const-string v1, "Authorization"

    const-string v6, "Bearer "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v5, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_3
    :goto_2
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Sending GWS request: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-interface {v0, v1, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :try_start_0
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_8

    .line 112
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid response from server: "

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    :try_start_1
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_4

    .line 154
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Connection timeout sending GWS request"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_4
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Exception sending GWS request"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    invoke-interface {v1, v0}, Lcom/google/glass/voice/network/GwsResponseHandler;->onError(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    invoke-interface {v0}, Lcom/google/glass/voice/network/GwsResponseHandler;->onDone()V

    .line 161
    :goto_4
    return-void

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_6
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "No search auth token; not setting auth header."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 112
    :cond_7
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 159
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    invoke-interface {v1}, Lcom/google/glass/voice/network/GwsResponseHandler;->onDone()V

    throw v0

    .line 116
    :cond_8
    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 118
    :goto_5
    array-length v2, v4

    if-ge v0, v2, :cond_a

    .line 119
    aget-object v2, v4, v0

    .line 120
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Set-Cookie"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 121
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 124
    :cond_a
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    invoke-static {v0}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$100(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/google/glass/voice/network/Cookies;->setCookiesFromSetCookieHeaders(Ljava/lang/String;Ljava/util/List;)V

    .line 127
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lcom/google/common/base/t;->c:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v1}, Lcom/google/common/io/v;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct {v1}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    .line 131
    invoke-virtual {v1, v0}, Lcom/google/glass/voice/network/PinholePage;->updateDirectlyFromFullGwsResponse(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "act0"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/voice/network/PinholePage;->assemblePinholeContentByTypes(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 138
    iget-object v2, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    invoke-interface {v2, v0}, Lcom/google/glass/voice/network/GwsResponseHandler;->onActionResult(Ljava/lang/String;)V

    .line 143
    :cond_b
    const/4 v0, 0x1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "act0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ans0"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/voice/network/PinholePage;->assemblePinholeContentByTypes(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 147
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Got a doc from the pinhole results."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    invoke-interface {v1, v0}, Lcom/google/glass/voice/network/GwsResponseHandler;->onHtmlAnswerCardResult(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :goto_6
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    invoke-interface {v0}, Lcom/google/glass/voice/network/GwsResponseHandler;->onDone()V

    goto/16 :goto_4

    .line 150
    :cond_c
    :try_start_4
    iget-object v0, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    invoke-interface {v0}, Lcom/google/glass/voice/network/GwsResponseHandler;->onNoResults()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6
.end method
