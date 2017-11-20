.class public Lcom/google/glass/net/PendingHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final client:Landroid/net/http/AndroidHttpClient;

.field private final context:Landroid/content/Context;

.field protected isCancelled:Z

.field private request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/PendingHttpRequest;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/glass/net/PendingHttpRequest;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/google/glass/net/PendingHttpRequest;->client:Landroid/net/http/AndroidHttpClient;

    .line 33
    iput-object p3, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/net/PendingHttpRequest;->isCancelled:Z

    .line 35
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->abort()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/net/PendingHttpRequest;->isCancelled:Z

    .line 49
    return-void
.end method

.method public execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 61
    .line 62
    new-instance v2, Lcom/google/glass/net/RequestLogger;

    iget-object v1, p0, Lcom/google/glass/net/PendingHttpRequest;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-direct {v2, v1, v3}, Lcom/google/glass/net/RequestLogger;-><init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/net/PendingHttpRequest;->client:Landroid/net/http/AndroidHttpClient;

    iget-object v3, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v1, v3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    :try_start_1
    sget-object v3, Lcom/google/glass/net/PendingHttpRequest;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Response from server was null!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    invoke-virtual {v2, v1}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 75
    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/glass/net/SimplifiedHttpResponse;

    invoke-direct {v0, v1}, Lcom/google/glass/net/SimplifiedHttpResponse;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    invoke-virtual {v2, v1}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 75
    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    invoke-virtual {v2, v1}, Lcom/google/glass/net/RequestLogger;->log(Lorg/apache/http/HttpResponse;)V

    .line 75
    if-eqz v1, :cond_2

    .line 76
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_2
    throw v0

    .line 74
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method getRequest()Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/net/PendingHttpRequest;->request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/glass/net/PendingHttpRequest;->isCancelled:Z

    return v0
.end method
