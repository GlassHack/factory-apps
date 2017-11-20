.class Lcom/google/glass/voice/network/DirectGwsRequest$1;
.super Ljava/lang/Object;
.source "DirectGwsRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/DirectGwsRequest;->sendGwsRequest(Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

.field final synthetic val$canUseSignIn:Z

.field final synthetic val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/DirectGwsRequest;Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/DirectGwsRequest;

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
    .locals 27

    .prologue
    .line 71
    new-instance v21, Lcom/google/glass/voice/network/SearchQueryBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$query:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .local v21, "sqb":Lcom/google/glass/voice/network/SearchQueryBuilder;
    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/voice/network/SearchQueryBuilder;->addTransportParams()V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/glass/voice/network/DirectGwsRequest;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    .line 76
    .local v6, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    .line 77
    .local v17, "params":Lorg/apache/http/params/HttpParams;
    sget v23, Lcom/google/glass/voice/network/DirectGwsRequest;->HTTP_TIMEOUT_MS:I

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    sget v23, Lcom/google/glass/voice/network/DirectGwsRequest;->HTTP_TIMEOUT_MS:I

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 79
    new-instance v19, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 82
    .local v19, "request":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$000(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/location/LocationManagerHelper;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getHttpHeaders(Lcom/google/glass/location/LocationManagerHelper;)Ljava/util/Map;

    move-result-object v13

    .line 83
    .local v13, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 85
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "Host"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 86
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$100(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/google/glass/voice/network/Cookies;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "beforeCookie":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 92
    const-string v23, "Cookie"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$canUseSignIn:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$200(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    move-result-object v23

    sget-wide v24, Lcom/google/glass/voice/network/DirectGwsRequest;->AUTH_TOKEN_LOOKUP_TIMEOUT_MS:J

    invoke-virtual/range {v23 .. v25}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;->getSearchAuthToken(J)Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, "loginOauth":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 98
    const-string v24, "Authorization"

    const-string v25, "Bearer "

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_5

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v16    # "loginOauth":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v23

    const-string v24, "Sending GWS request: %s"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v21, v25, v26

    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :try_start_0
    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 110
    .local v20, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    .line 111
    .local v22, "status":Lorg/apache/http/StatusLine;
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v23

    const/16 v24, 0xc8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    .line 112
    new-instance v24, Ljava/io/IOException;

    const-string v25, "Invalid response from server: "

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    if-eqz v26, :cond_7

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "status":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v9

    .line 153
    .local v9, "e":Ljava/io/IOException;
    :try_start_1
    instance-of v0, v9, Ljava/net/SocketTimeoutException;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 154
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v23

    const-string v24, "Connection timeout sending GWS request"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_4
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v23

    const-string v24, "Exception sending GWS request"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v9, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Lcom/google/glass/voice/network/GwsResponseHandler;->onError(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/google/glass/voice/network/GwsResponseHandler;->onDone()V

    .line 161
    .end local v9    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    .line 98
    .restart local v16    # "loginOauth":Ljava/lang/String;
    :cond_5
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 101
    :cond_6
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v23

    const-string v24, "No search auth token; not setting auth header."

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 112
    .end local v16    # "loginOauth":Ljava/lang/String;
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    .restart local v22    # "status":Lorg/apache/http/StatusLine;
    :cond_7
    :try_start_2
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 159
    .end local v20    # "response":Lorg/apache/http/HttpResponse;
    .end local v22    # "status":Lorg/apache/http/StatusLine;
    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/google/glass/voice/network/GwsResponseHandler;->onDone()V

    throw v23

    .line 116
    .restart local v20    # "response":Lorg/apache/http/HttpResponse;
    .restart local v22    # "status":Lorg/apache/http/StatusLine;
    :cond_8
    :try_start_3
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .line 117
    .local v4, "allHeaders":[Lorg/apache/http/Header;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v7, "cookieList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v14, v0, :cond_a

    .line 119
    aget-object v12, v4, v14

    .line 120
    .local v12, "h":Lorg/apache/http/Header;
    invoke-interface {v12}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v24, "Set-Cookie"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 121
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 124
    .end local v12    # "h":Lorg/apache/http/Header;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$100(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lcom/google/glass/voice/network/Cookies;->setCookiesFromSetCookieHeaders(Ljava/lang/String;Ljava/util/List;)V

    .line 127
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 128
    .local v15, "is":Ljava/io/InputStream;
    new-instance v23, Ljava/io/InputStreamReader;

    sget-object v24, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v15, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static/range {v23 .. v23}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, "fullResponse":Ljava/lang/String;
    new-instance v18, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct/range {v18 .. v18}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    .line 131
    .local v18, "pinholePage":Lcom/google/glass/voice/network/PinholePage;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/google/glass/voice/network/PinholePage;->updateDirectlyFromFullGwsResponse(Ljava/lang/String;)V

    .line 135
    const/16 v23, 0x0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "act0"

    aput-object v26, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/network/PinholePage;->assemblePinholeContentByTypes(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "action":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Lcom/google/glass/voice/network/GwsResponseHandler;->onActionResult(Ljava/lang/String;)V

    .line 143
    :cond_b
    const/16 v23, 0x1

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "act0"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string v26, "ans0"

    aput-object v26, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/network/PinholePage;->assemblePinholeContentByTypes(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "doc":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 147
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v23

    const-string v24, "Got a doc from the pinhole results."

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-interface/range {v23 .. v25}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lcom/google/glass/voice/network/GwsResponseHandler;->onHtmlAnswerCardResult(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/google/glass/voice/network/GwsResponseHandler;->onDone()V

    goto/16 :goto_4

    .line 150
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/google/glass/voice/network/GwsResponseHandler;->onNoResults()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6
.end method
