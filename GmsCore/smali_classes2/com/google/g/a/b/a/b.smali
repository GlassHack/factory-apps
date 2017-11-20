.class final Lcom/google/g/a/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/g/a/b/f;


# instance fields
.field final synthetic a:Lcom/google/g/a/b/a/a;

.field private final b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private c:Ljava/io/ByteArrayOutputStream;

.field private d:Lorg/apache/http/HttpResponse;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/google/g/a/b/a/a;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-object p1, p0, Lcom/google/g/a/b/a/b;->a:Lcom/google/g/a/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/google/g/a/b/a/b;->c:Ljava/io/ByteArrayOutputStream;

    .line 89
    iput-object v0, p0, Lcom/google/g/a/b/a/b;->d:Lorg/apache/http/HttpResponse;

    .line 95
    if-eqz p3, :cond_0

    .line 96
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/g/a/b/a/b;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    invoke-static {}, Lcom/google/g/a/b/a/a;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 109
    :try_start_1
    invoke-static {}, Lcom/google/g/a/b/a/a;->c()I

    .line 112
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 98
    :cond_0
    :try_start_2
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/g/a/b/a/b;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URISyntaxException in HttpUriRequest, post="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 106
    throw v2

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/g/a/b/a/a;Ljava/lang/String;ZB)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/google/g/a/b/a/b;-><init>(Lcom/google/g/a/b/a/a;Ljava/lang/String;Z)V

    return-void
.end method

.method private g()Lorg/apache/http/HttpResponse;
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/g/a/b/a/b;->d:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/g/a/b/a/b;->c:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/g/a/b/a/b;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v2, p0, Lcom/google/g/a/b/a/b;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/g/a/b/a/b;->a:Lcom/google/g/a/b/a/a;

    invoke-static {v0}, Lcom/google/g/a/b/a/a;->a(Lcom/google/g/a/b/a/a;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/g/a/b/a/b;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/g/a/b/a/b;->d:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/google/g/a/b/a/b;->d:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/io/DataOutputStream;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/g/a/b/a/b;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t open output stream on a GET to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/g/a/b/a/b;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/b/a/b;->c:Ljava/io/ByteArrayOutputStream;

    .line 144
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/google/g/a/b/a/b;->c:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/g/a/b/a/b;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/io/DataInputStream;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {p0}, Lcom/google/g/a/b/a/b;->g()Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/g/a/b/a/b;->g()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/g/a/b/a/b;->g()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/g/a/b/a/b;->g()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/g/a/b/a/b;->d:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/g/a/b/a/b;->d:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 195
    :cond_0
    invoke-static {}, Lcom/google/g/a/b/a/a;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 196
    :try_start_0
    iget-boolean v0, p0, Lcom/google/g/a/b/a/b;->e:Z

    if-eqz v0, :cond_1

    .line 197
    monitor-exit v1

    .line 204
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/g/a/b/a/b;->e:Z

    .line 201
    invoke-static {}, Lcom/google/g/a/b/a/a;->d()I

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Connection closed.  # of open connections="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/g/a/b/a/a;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
