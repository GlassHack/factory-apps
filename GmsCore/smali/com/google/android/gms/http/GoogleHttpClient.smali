.class public Lcom/google/android/gms/http/GoogleHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field protected a:Ljavax/net/ssl/SSLSocketFactory;

.field protected b:Lcom/google/android/gms/http/e;

.field protected c:I

.field protected d:I

.field protected e:Lorg/apache/http/params/HttpParams;

.field private f:Lcom/google/android/gms/http/d;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "application/json"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/http/GoogleHttpClient;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 195
    const-string v0, "GmsCore_OpenSSL"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 197
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0xea60

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    new-instance v0, Lcom/google/android/gms/http/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/http/b;-><init>(Lcom/google/android/gms/http/GoogleHttpClient;)V

    iput-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->e:Lorg/apache/http/params/HttpParams;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    if-eqz p3, :cond_0

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; gzip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/http/GoogleHttpClient;->h:Landroid/content/Context;

    .line 231
    iput-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->i:Ljava/lang/String;

    .line 233
    new-instance v0, Lcom/google/android/gms/http/e;

    iget-object v2, p0, Lcom/google/android/gms/http/GoogleHttpClient;->h:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/http/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->b:Lcom/google/android/gms/http/e;

    .line 243
    iput v3, p0, Lcom/google/android/gms/http/GoogleHttpClient;->c:I

    .line 244
    iput v3, p0, Lcom/google/android/gms/http/GoogleHttpClient;->d:I

    .line 258
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/http/GoogleHttpClient;->loadSocketFactoryFromPackage()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 259
    :goto_0
    if-nez v0, :cond_1

    .line 260
    const-string v0, "GoogleHttpClient"

    const-string v2, "Falling back to old SSLCertificateSocketFactory"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz p1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v0, v2, :cond_3

    .line 263
    new-instance v0, Landroid/net/SSLSessionCache;

    invoke-direct {v0, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    .line 265
    :goto_1
    invoke-static {v3, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 267
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/http/GoogleHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 268
    return-void

    :cond_2
    move-object v0, v1

    .line 258
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    const-string v0, "curl "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v0, "-X "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v4, v1

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v1, v0

    .line 471
    if-nez p1, :cond_0

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Authorization"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cookie"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 473
    :cond_0
    const-string v6, "--header \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v5, "\" "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 485
    instance-of v0, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v0, :cond_6

    move-object v0, p0

    .line 486
    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v0

    .line 487
    instance-of v4, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v4, :cond_6

    .line 488
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 492
    :goto_1
    const-string v1, "\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 494
    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 497
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 498
    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    .line 501
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 502
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 504
    invoke-static {p0}, Lcom/google/android/gms/http/GoogleHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 505
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "echo \'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' | base64 -d > /tmp/$$.bin; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v0, " --data-binary @/tmp/$$.bin"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 509
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    const-string v1, " --data-ascii \""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 513
    :cond_5
    const-string v0, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpResponse;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 761
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 762
    if-gez v4, :cond_0

    .line 768
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot retrieve a valid HTTP status code from server response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->b:Lcom/google/android/gms/http/e;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/http/e;->a(Ljava/lang/String;I)V

    .line 773
    new-instance v5, Lcom/google/android/gms/http/c;

    invoke-direct {v5}, Lcom/google/android/gms/http/c;-><init>()V

    .line 774
    iput-object p1, v5, Lcom/google/android/gms/http/c;->a:Ljava/net/HttpURLConnection;

    .line 777
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v4, v1}, Lcom/google/android/gms/http/c;->setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 788
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 789
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v2

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 790
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 791
    if-eqz v1, :cond_1

    .line 792
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 793
    const-string v8, "content-type"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v3, v0

    .line 798
    :cond_2
    :goto_1
    new-instance v8, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v8, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/http/c;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 795
    :cond_3
    const-string v8, "content-encoding"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v2, v0

    .line 796
    goto :goto_1

    .line 803
    :cond_4
    const/16 v0, 0x190

    if-lt v4, v0, :cond_8

    .line 808
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 813
    :goto_2
    if-eqz v0, :cond_7

    .line 816
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    const-wide/16 v6, -0x1

    invoke-direct {v1, v0, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 817
    if-eqz v3, :cond_5

    .line 818
    invoke-virtual {v1, v3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 820
    :cond_5
    if-eqz v2, :cond_6

    .line 821
    invoke-virtual {v1, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 823
    :cond_6
    invoke-virtual {v5, v1}, Lcom/google/android/gms/http/c;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 827
    :cond_7
    return-object v5

    .line 810
    :cond_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Ljava/net/HttpURLConnection;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 8

    .prologue
    .line 839
    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 840
    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 841
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_0
    const-string v0, "User-Agent"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    if-nez v0, :cond_1

    .line 849
    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/google/android/gms/http/GoogleHttpClient;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_1
    instance-of v0, p2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 858
    check-cast p2, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 859
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 864
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v0, -0x1

    .line 865
    :goto_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    .line 866
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v4

    .line 868
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 870
    const-string v5, "content-length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_2
    if-eqz v3, :cond_3

    .line 876
    const-string v0, "content-type"

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_3
    if-eqz v4, :cond_4

    .line 879
    const-string v0, "content-encoding"

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 887
    :goto_2
    return-void

    .line 864
    :cond_5
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    goto :goto_1

    .line 885
    :cond_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_2
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 523
    const-string v2, "content-encoding"

    invoke-interface {p0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 524
    if-eqz v3, :cond_2

    .line 525
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 526
    const-string v6, "gzip"

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 542
    :cond_0
    :goto_1
    return v0

    .line 525
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 532
    :cond_2
    const-string v2, "content-type"

    invoke-interface {p0, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v4

    .line 533
    if-eqz v4, :cond_0

    .line 534
    array-length v5, v4

    move v3, v1

    :goto_2
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 535
    sget-object v7, Lcom/google/android/gms/http/GoogleHttpClient;->g:[Ljava/lang/String;

    array-length v8, v7

    move v2, v1

    :goto_3
    if-ge v2, v8, :cond_4

    aget-object v9, v7, v2

    .line 536
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v0, v1

    .line 537
    goto :goto_1

    .line 535
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 534
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2
.end method

.method private b(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 697
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 698
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This thread forbids HTTP requests"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_5

    move-wide v0, v2

    .line 703
    :goto_0
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 704
    const-string v2, "content-length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->f:Lcom/google/android/gms/http/d;

    .line 709
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/http/d;->a:Ljava/lang/String;

    iget v2, v0, Lcom/google/android/gms/http/d;->b:I

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 710
    iget-boolean v1, v0, Lcom/google/android/gms/http/d;->c:Z

    invoke-static {p1, v1}, Lcom/google/android/gms/http/GoogleHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/http/d;->b:I

    iget-object v0, v0, Lcom/google/android/gms/http/d;->a:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/http/GoogleHttpClient;->b:Lcom/google/android/gms/http/e;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/http/e;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->d:I

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->c:I

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    instance-of v0, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/google/android/gms/http/GoogleHttpClient;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 715
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 717
    invoke-static {p1}, Lcom/google/android/gms/http/GoogleHttpClient;->c(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v0

    .line 719
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_4
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/http/GoogleHttpClient;->a(Ljava/net/HttpURLConnection;Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 725
    invoke-direct {p0, v1}, Lcom/google/android/gms/http/GoogleHttpClient;->a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 702
    :cond_5
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    goto/16 :goto_0

    :cond_6
    const-wide/16 v0, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static c(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 2

    .prologue
    .line 933
    :try_start_0
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 934
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 940
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 942
    return-object v0

    .line 936
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 943
    :catch_0
    move-exception v0

    .line 944
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 4

    .prologue
    .line 361
    array-length v0, p0

    int-to-long v0, v0

    invoke-static {p1}, Lcom/google/android/gms/http/GoogleHttpClient;->getMinGzipSize(Landroid/content/ContentResolver;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 362
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 371
    :goto_0
    return-object v0

    .line 364
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 365
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 366
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    .line 367
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 368
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 369
    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMinGzipSize(Landroid/content/ContentResolver;)J
    .locals 2

    .prologue
    .line 418
    const-wide/16 v0, 0x100

    return-wide v0
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 333
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 334
    if-nez v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v1

    .line 337
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    .line 345
    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    move-object v1, v0

    .line 348
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .locals 2

    .prologue
    .line 321
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/http/GoogleHttpClient;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Lcom/google/android/gms/http/GoogleHttpClient;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/gms/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->b:Lcom/google/android/gms/http/e;

    invoke-virtual {v0}, Lcom/google/android/gms/http/e;->close()V

    .line 553
    return-void
.end method

.method public disableCurlLogging()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->f:Lcom/google/android/gms/http/d;

    .line 455
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;IZ)V

    .line 429
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 440
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/4 v0, 0x7

    if-le p2, v0, :cond_2

    .line 443
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level is out of range [27]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_2
    new-instance v0, Lcom/google/android/gms/http/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/http/d;-><init>(Ljava/lang/String;IZB)V

    iput-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->f:Lcom/google/android/gms/http/d;

    .line 448
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 685
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 692
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 674
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 637
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/google/android/gms/http/GoogleHttpClient;->b(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionFactory()Lcom/google/android/gms/http/e;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->b:Lcom/google/android/gms/http/e;

    return-object v0
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 614
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->e:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public loadSocketFactoryFromPackage()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/http/GoogleHttpClient;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/k;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 893
    if-nez v0, :cond_0

    move-object v0, v1

    .line 903
    :goto_0
    return-object v0

    .line 896
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 897
    const-string v2, "com.google.android.gms.common.net.SSLCertificateSocketFactory"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 899
    const-string v2, "getDefaultWithSessionCache"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 900
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0xea60

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/gms/http/GoogleHttpClient;->h:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    const-string v2, "GoogleHttpClient"

    const-string v3, "Failed to load SSLCertificateSocketFactory from package"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 903
    goto :goto_0
.end method

.method public setConnectionFactory(Lcom/google/android/gms/http/e;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/android/gms/http/GoogleHttpClient;->b:Lcom/google/android/gms/http/e;

    .line 288
    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/google/android/gms/http/GoogleHttpClient;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 280
    return-void
.end method
