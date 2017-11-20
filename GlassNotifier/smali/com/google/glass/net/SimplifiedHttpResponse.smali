.class public final Lcom/google/glass/net/SimplifiedHttpResponse;
.super Ljava/lang/Object;
.source "SimplifiedHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/SimplifiedHttpResponse$Builder;
    }
.end annotation


# static fields
.field private static final HTTP_RESPONSE_READ_CHUNK_SIZE_BYTES:I = 0x400


# instance fields
.field public final body:[B

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/google/glass/net/SimplifiedHttpResponse;-><init>(ILjava/util/Map;[B)V

    .line 32
    return-void
.end method

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
    .line 34
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    .line 36
    if-eqz p2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 40
    :cond_0
    iput p1, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    .line 41
    iput-object p3, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    .line 48
    iput v5, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    .line 49
    iput-object v6, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    .line 72
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    iput v4, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    .line 56
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 57
    invoke-static {p1}, Lcom/google/glass/net/SimplifiedHttpResponse;->getResponseInputStream(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v2

    .line 58
    .local v2, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 60
    .local v3, "length":I
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 62
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    .line 63
    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    .line 71
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "length":I
    :goto_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/glass/net/SimplifiedHttpResponse;->createHeaderMap([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    goto :goto_0

    .line 68
    :cond_2
    iput-object v6, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    goto :goto_2
.end method

.method private static getResponseInputStream(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 5
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 89
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_1

    .line 90
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 91
    .local v2, "input":Ljava/io/InputStream;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 92
    .local v0, "encodingHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    const-string v3, "gzip"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 97
    .end local v0    # "encodingHeader":Lorg/apache/http/Header;
    .end local v2    # "input":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newBuilder()Lcom/google/glass/net/SimplifiedHttpResponse$Builder;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;-><init>(Lcom/google/glass/net/SimplifiedHttpResponse$1;)V

    return-object v0
.end method


# virtual methods
.method createHeaderMap([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 6
    .param p1, "allHeaders"    # [Lorg/apache/http/Header;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    array-length v2, p1

    invoke-static {v2}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 77
    .local v1, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 78
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "header":Lorg/apache/http/Header;
    :cond_0
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Status: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, "Headers:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v2, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "\t"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v3, "Body: "

    iget-object v2, p0, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 111
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
