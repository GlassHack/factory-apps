.class public Lcom/google/glass/net/FakePendingHttpRequest;
.super Lcom/google/glass/net/PendingHttpRequest;
.source "FakePendingHttpRequest.java"


# instance fields
.field private final exceptionToThrow:Ljava/io/IOException;

.field private final response:Lcom/google/glass/net/SimplifiedHttpResponse;


# direct methods
.method public constructor <init>(ILjava/util/Map;[B)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p3, "body"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/glass/net/SimplifiedHttpResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/glass/net/SimplifiedHttpResponse;-><init>(ILjava/util/Map;[B)V

    invoke-direct {p0, v0}, Lcom/google/glass/net/FakePendingHttpRequest;-><init>(Lcom/google/glass/net/SimplifiedHttpResponse;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/net/SimplifiedHttpResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/google/glass/net/SimplifiedHttpResponse;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, v0, v0}, Lcom/google/glass/net/PendingHttpRequest;-><init>(Landroid/content/Context;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    .line 40
    iput-object p1, p0, Lcom/google/glass/net/FakePendingHttpRequest;->response:Lcom/google/glass/net/SimplifiedHttpResponse;

    .line 41
    iput-object v0, p0, Lcom/google/glass/net/FakePendingHttpRequest;->exceptionToThrow:Ljava/io/IOException;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .param p1, "exceptionToThrow"    # Ljava/io/IOException;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0, v0}, Lcom/google/glass/net/PendingHttpRequest;-><init>(Landroid/content/Context;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;)V

    .line 54
    iput-object v0, p0, Lcom/google/glass/net/FakePendingHttpRequest;->response:Lcom/google/glass/net/SimplifiedHttpResponse;

    .line 55
    iput-object p1, p0, Lcom/google/glass/net/FakePendingHttpRequest;->exceptionToThrow:Ljava/io/IOException;

    .line 56
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/net/FakePendingHttpRequest;->isCancelled:Z

    .line 61
    return-void
.end method

.method public execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/net/FakePendingHttpRequest;->exceptionToThrow:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/google/glass/net/FakePendingHttpRequest;->exceptionToThrow:Ljava/io/IOException;

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/glass/net/FakePendingHttpRequest;->response:Lcom/google/glass/net/SimplifiedHttpResponse;

    return-object v0
.end method
