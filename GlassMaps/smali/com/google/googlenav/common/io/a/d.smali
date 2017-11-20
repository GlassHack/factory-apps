.class final Lcom/google/googlenav/common/io/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/io/a/b;

.field private final b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private c:Ljava/io/ByteArrayOutputStream;

.field private d:Lorg/apache/http/HttpResponse;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/common/io/a/b;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 102
    iput-object p1, p0, Lcom/google/googlenav/common/io/a/d;->a:Lcom/google/googlenav/common/io/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/google/googlenav/common/io/a/d;->c:Ljava/io/ByteArrayOutputStream;

    .line 98
    iput-object v0, p0, Lcom/google/googlenav/common/io/a/d;->d:Lorg/apache/http/HttpResponse;

    .line 104
    if-eqz p3, :cond_0

    .line 105
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/common/io/a/d;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-static {}, Lcom/google/googlenav/common/io/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_1
    invoke-static {}, Lcom/google/googlenav/common/io/a/b;->e()I

    .line 119
    invoke-static {}, Lcom/google/googlenav/common/io/a/b;->c()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "Connected: %s  # of open connections=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/google/googlenav/common/io/a/b;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    return-void

    .line 107
    :cond_0
    :try_start_2
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/common/io/a/d;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "URISyntaxException in HttpUriRequest, post="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {}, Lcom/google/googlenav/common/io/a/b;->c()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 115
    throw v2

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/common/io/a/b;Ljava/lang/String;ZLcom/google/googlenav/common/io/a/c;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/common/io/a/d;-><init>(Lcom/google/googlenav/common/io/a/b;Ljava/lang/String;Z)V

    return-void
.end method

.method private f()Lorg/apache/http/HttpResponse;
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/d;->d:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/d;->c:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/d;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v2, p0, Lcom/google/googlenav/common/io/a/d;->c:Ljava/io/ByteArrayOutputStream;

    .line 131
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 130
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 134
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/d;->a:Lcom/google/googlenav/common/io/a/b;

    invoke-static {v0}, Lcom/google/googlenav/common/io/a/b;->a(Lcom/google/googlenav/common/io/a/b;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/common/io/a/d;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/io/a/d;->d:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/d;->d:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-static {}, Lcom/google/googlenav/common/io/a/b;->c()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error getting response in HttpClient"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    throw v0
.end method


# virtual methods
.method public final a()Ljava/io/DataOutputStream;
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/d;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/google/googlenav/common/io/a/d;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 149
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Can\'t open output stream on a GET to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/io/a/d;->c:Ljava/io/ByteArrayOutputStream;

    .line 152
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/google/googlenav/common/io/a/d;->c:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/d;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/io/DataInputStream;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {p0}, Lcom/google/googlenav/common/io/a/d;->f()Lorg/apache/http/HttpResponse;

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
    .line 180
    invoke-direct {p0}, Lcom/google/googlenav/common/io/a/d;->f()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/d;->d:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/common/io/a/d;->d:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 203
    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/io/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 204
    :try_start_0
    iget-boolean v0, p0, Lcom/google/googlenav/common/io/a/d;->e:Z

    if-eqz v0, :cond_1

    .line 205
    monitor-exit v1

    .line 215
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/a/d;->e:Z

    .line 209
    invoke-static {}, Lcom/google/googlenav/common/io/a/b;->g()I

    .line 211
    invoke-static {}, Lcom/google/googlenav/common/io/a/b;->f()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Connection closed.  # of open connections="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-static {}, Lcom/google/googlenav/common/io/a/b;->c()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/googlenav/common/io/a/d;->f()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 187
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
    .line 175
    invoke-direct {p0}, Lcom/google/googlenav/common/io/a/d;->f()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method
