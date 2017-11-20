.class public final Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$CurlLogger;,
        Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field public static final DEFAULT_SYNC_MIN_GZIP_BYTES:J = 0x100L

.field private static final TAG:Ljava/lang/String; = "AndroidHttpClient_v09"

.field private static final sThreadBlocked:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private volatile curlConfiguration:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;

.field private final delegate:Lorg/apache/http/client/HttpClient;

.field private mLeakedException:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->sThreadBlocked:Ljava/lang/ThreadLocal;

    .line 96
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$1;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$1;-><init>()V

    sput-object v0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "ccm"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient_v09 created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 147
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$2;-><init>(Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    .line 175
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->sThreadBlocked:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/http/HttpRequestInterceptor;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;)Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->curlConfiguration:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    array-length v3, p0

    int-to-long v3, v3

    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->getMinGzipSize(Landroid/content/ContentResolver;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 299
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 308
    .local v1, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_0
    return-object v1

    .line 301
    .end local v1    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 302
    .local v0, "arr":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 303
    .local v2, "zipper":Ljava/io/OutputStream;
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 304
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 305
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 306
    .restart local v1    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    const-string v3, "gzip"

    invoke-virtual {v1, v3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMinGzipSize(Landroid/content/ContentResolver;)J
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 333
    const-wide/16 v0, 0x100

    return-wide v0
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 216
    .local v2, "responseStream":Ljava/io/InputStream;
    if-nez v2, :cond_0

    move-object v3, v2

    .line 223
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .local v3, "responseStream":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 217
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 218
    .local v1, "header":Lorg/apache/http/Header;
    if-nez v1, :cond_1

    move-object v3, v2

    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_0

    .line 219
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "contentEncoding":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v3, v2

    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_0

    .line 221
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_2
    const-string v4, "gzip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    move-object v2, v3

    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_3
    move-object v3, v2

    .line 223
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 202
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;
    .locals 7
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x4e20

    const/4 v4, 0x0

    .line 111
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 115
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 118
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 119
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 120
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 124
    invoke-static {v1, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 127
    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 128
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 129
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    .line 130
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 129
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 131
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    .line 132
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 131
    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 133
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 138
    .local v0, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;

    invoke-direct {v3, v0, v1}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v3
.end method

.method public static setThreadBlocked(Z)V
    .locals 2
    .param p0, "blocked"    # Z

    .prologue
    .line 192
    sget-object v0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->sThreadBlocked:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 12
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v8, "curl "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v4, v9, v8

    .line 418
    .local v4, "header":Lorg/apache/http/Header;
    const-string v11, "--header \""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v11, "\" "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 423
    .end local v4    # "header":Lorg/apache/http/Header;
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    .line 428
    .local v7, "uri":Ljava/net/URI;
    instance-of v8, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v8, :cond_1

    move-object v8, p0

    .line 429
    check-cast v8, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v8}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v5

    .line 430
    .local v5, "original":Lorg/apache/http/HttpRequest;
    instance-of v8, v5, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v8, :cond_1

    .line 431
    check-cast v5, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v5    # "original":Lorg/apache/http/HttpRequest;
    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    .line 435
    :cond_1
    const-string v8, "\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    const-string v8, "\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    instance-of v8, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v8, :cond_2

    move-object v2, p0

    .line 440
    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 442
    .local v2, "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 443
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 444
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 445
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 446
    .local v6, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v1, v6}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 447
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    .local v3, "entityString":Ljava/lang/String;
    const-string v8, " --data-ascii \""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 451
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    .line 452
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v3    # "entityString":Ljava/lang/String;
    .end local v6    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 454
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_3
    const-string v8, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 235
    :cond_0
    return-void
.end method

.method public disableCurlLogging()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->curlConfiguration:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;

    .line 392
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/4 v0, 0x7

    if-le p2, v0, :cond_2

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level is out of range [2..7]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_2
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILcom/google/userfeedback/android/api/common/io/AndroidHttpClient$1;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->curlConfiguration:Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient$LoggingConfiguration;

    .line 385
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
    .line 279
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

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
    .line 285
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

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
    .line 267
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

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
    .line 273
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

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
    .line 256
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

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
    .line 261
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

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
    .line 246
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 180
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "AndroidHttpClient_v09"

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 184
    :cond_0
    return-void
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
