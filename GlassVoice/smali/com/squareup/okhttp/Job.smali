.class final Lcom/squareup/okhttp/Job;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final connection:Ljava/net/HttpURLConnection;

.field final dispatcher:Lcom/squareup/okhttp/Dispatcher;

.field final request:Lcom/squareup/okhttp/Request;

.field final responseReceiver:Lcom/squareup/okhttp/Response$Receiver;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Dispatcher;Ljava/net/HttpURLConnection;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response$Receiver;)V
    .locals 0
    .param p1, "dispatcher"    # Lcom/squareup/okhttp/Dispatcher;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "request"    # Lcom/squareup/okhttp/Request;
    .param p4, "responseReceiver"    # Lcom/squareup/okhttp/Response$Receiver;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/squareup/okhttp/Job;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    .line 30
    iput-object p2, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    .line 31
    iput-object p3, p0, Lcom/squareup/okhttp/Job;->request:Lcom/squareup/okhttp/Request;

    .line 32
    iput-object p4, p0, Lcom/squareup/okhttp/Job;->responseReceiver:Lcom/squareup/okhttp/Response$Receiver;

    .line 33
    return-void
.end method

.method private readResponse()Lcom/squareup/okhttp/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v5, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 72
    .local v3, "responseCode":I
    new-instance v2, Lcom/squareup/okhttp/Response$Builder;

    iget-object v5, p0, Lcom/squareup/okhttp/Job;->request:Lcom/squareup/okhttp/Request;

    invoke-direct {v2, v5, v3}, Lcom/squareup/okhttp/Response$Builder;-><init>(Lcom/squareup/okhttp/Request;I)V

    .line 74
    .local v2, "responseBuilder":Lcom/squareup/okhttp/Response$Builder;
    const/4 v0, 0x0

    .line 75
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 81
    new-instance v5, Lcom/squareup/okhttp/Dispatcher$RealResponseBody;

    iget-object v6, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    iget-object v7, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/squareup/okhttp/Dispatcher$RealResponseBody;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    invoke-virtual {v2, v5}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/Response$Body;)Lcom/squareup/okhttp/Response$Builder;

    .line 83
    invoke-virtual {v2}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object v5

    return-object v5

    .line 77
    :cond_0
    iget-object v5, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v2, v1, v4}, Lcom/squareup/okhttp/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendRequest()Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/squareup/okhttp/Job;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Request;->headerCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 53
    iget-object v4, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lcom/squareup/okhttp/Job;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v5, v3}, Lcom/squareup/okhttp/Request;->headerName(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/squareup/okhttp/Job;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v6, v3}, Lcom/squareup/okhttp/Request;->headerValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v4, p0, Lcom/squareup/okhttp/Job;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/Request$Body;

    move-result-object v0

    .line 56
    .local v0, "body":Lcom/squareup/okhttp/Request$Body;
    if-eqz v0, :cond_2

    .line 57
    iget-object v4, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 58
    invoke-virtual {v0}, Lcom/squareup/okhttp/Request$Body;->contentLength()J

    move-result-wide v1

    .line 59
    .local v1, "contentLength":J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-lez v4, :cond_3

    .line 60
    :cond_1
    iget-object v4, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 65
    :goto_1
    iget-object v4, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Request$Body;->writeTo(Ljava/io/OutputStream;)V

    .line 67
    .end local v1    # "contentLength":J
    :cond_2
    iget-object v4, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    return-object v4

    .line 63
    .restart local v1    # "contentLength":J
    :cond_3
    iget-object v4, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    long-to-int v5, v1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 37
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/Job;->sendRequest()Ljava/net/HttpURLConnection;

    .line 38
    invoke-direct {p0}, Lcom/squareup/okhttp/Job;->readResponse()Lcom/squareup/okhttp/Response;

    move-result-object v1

    .line 39
    .local v1, "response":Lcom/squareup/okhttp/Response;
    iget-object v2, p0, Lcom/squareup/okhttp/Job;->responseReceiver:Lcom/squareup/okhttp/Response$Receiver;

    invoke-interface {v2, v1}, Lcom/squareup/okhttp/Response$Receiver;->onResponse(Lcom/squareup/okhttp/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object v2, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    iget-object v2, p0, Lcom/squareup/okhttp/Job;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Job;)V

    .line 49
    .end local v1    # "response":Lcom/squareup/okhttp/Response;
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/squareup/okhttp/Job;->responseReceiver:Lcom/squareup/okhttp/Response$Receiver;

    new-instance v3, Lcom/squareup/okhttp/Failure$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp/Failure$Builder;-><init>()V

    iget-object v4, p0, Lcom/squareup/okhttp/Job;->request:Lcom/squareup/okhttp/Request;

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/Failure$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Failure$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/Failure$Builder;->exception(Ljava/lang/Throwable;)Lcom/squareup/okhttp/Failure$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/Failure$Builder;->build()Lcom/squareup/okhttp/Failure;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/Response$Receiver;->onFailure(Lcom/squareup/okhttp/Failure;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    iget-object v2, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    iget-object v2, p0, Lcom/squareup/okhttp/Job;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    invoke-virtual {v2, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Job;)V

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/squareup/okhttp/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    iget-object v3, p0, Lcom/squareup/okhttp/Job;->dispatcher:Lcom/squareup/okhttp/Dispatcher;

    invoke-virtual {v3, p0}, Lcom/squareup/okhttp/Dispatcher;->finished(Lcom/squareup/okhttp/Job;)V

    throw v2
.end method
