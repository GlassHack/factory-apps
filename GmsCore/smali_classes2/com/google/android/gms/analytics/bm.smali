.class final Lcom/google/android/gms/analytics/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/r;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/http/client/HttpClient;

.field private final c:Landroid/content/Context;

.field private d:Lcom/google/android/gms/analytics/ap;

.field private e:Ljava/net/URL;


# direct methods
.method constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 88
    invoke-static {p2}, Lcom/google/android/gms/analytics/ap;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/ap;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/analytics/bm;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/gms/analytics/ap;Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/gms/analytics/ap;Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bm;->c:Landroid/content/Context;

    .line 74
    const-string v0, "GoogleAnalytics"

    const-string v1, "3.0"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/bs;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v6, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bm;->a:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/google/android/gms/analytics/bm;->b:Lorg/apache/http/client/HttpClient;

    .line 84
    iput-object p2, p0, Lcom/google/android/gms/analytics/bm;->d:Lcom/google/android/gms/analytics/ap;

    .line 85
    return-void
.end method

.method private a(Lcom/google/android/gms/analytics/av;)Ljava/net/URL;
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/gms/analytics/bm;->e:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/analytics/bm;->e:Ljava/net/URL;

    .line 373
    :goto_0
    return-object v0

    .line 363
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/analytics/av;->d:Ljava/lang/String;

    .line 365
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v2, "http:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http://www.google-analytics.com/collect"

    :goto_1
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    const-string v0, "Error trying to parse the hardcoded host url. This really shouldn\'t happen."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->a(Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    goto :goto_0

    .line 365
    :cond_1
    :try_start_1
    const-string v1, "https://ssl.google-analytics.com/collect"
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "Empty hit, discarding."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    move-object v0, v1

    .line 311
    :goto_0
    return-object v0

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x7f4

    if-ge v0, v3, :cond_1

    .line 299
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_1
    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/gms/analytics/bm;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v2, "POST"

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 306
    :catch_0
    move-exception v0

    const-string v0, "Encoding error, discarding hit"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    move-object v0, v1

    .line 307
    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/analytics/bf;Ljava/net/URL;Z)V
    .locals 4

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bf;->a()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 265
    :cond_0
    :goto_1
    return-void

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_2
    if-nez p2, :cond_3

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/bm;->e:Ljava/net/URL;

    if-eqz v0, :cond_7

    .line 222
    iget-object p2, p0, Lcom/google/android/gms/analytics/bm;->e:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :cond_3
    :goto_2
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/bf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/analytics/bm;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_0

    .line 239
    const-string v2, "Host"

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/google/android/gms/analytics/bd;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    invoke-static {v1}, Lcom/google/android/gms/analytics/bm;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 243
    :cond_4
    if-eqz p3, :cond_5

    .line 244
    iget-object v2, p0, Lcom/google/android/gms/analytics/bm;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/analytics/u;->b(Landroid/content/Context;)V

    .line 245
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/analytics/bm;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 249
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 250
    if-eqz v2, :cond_6

    .line 251
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 253
    :cond_6
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 260
    :catch_0
    move-exception v0

    const-string v0, "ClientProtocolException sending monitoring hit."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_7
    :try_start_2
    new-instance p2, Ljava/net/URL;

    const-string v0, "https://ssl.google-analytics.com/collect"

    invoke-direct {p2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 227
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 261
    :catch_2
    move-exception v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception sending monitoring hit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static a(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 6

    .prologue
    .line 320
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 321
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 322
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 330
    if-lez v2, :cond_1

    .line 331
    new-array v2, v2, [B

    .line 332
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 333
    const-string v0, "POST:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 342
    return-void

    .line 338
    :catch_0
    move-exception v0

    const-string v0, "Error Writing hit to log..."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/gms/analytics/bf;Z)I
    .locals 19

    .prologue
    .line 109
    const/4 v7, 0x0

    .line 110
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x28

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 111
    const-string v2, "_hr"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/bf;->a(Ljava/lang/String;I)V

    .line 113
    const/4 v4, 0x0

    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v3, 0x1

    .line 116
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v9, :cond_b

    .line 117
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/av;

    .line 118
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/bm;->a(Lcom/google/android/gms/analytics/av;)Ljava/net/URL;

    move-result-object v6

    .line 120
    if-nez v6, :cond_1

    .line 121
    invoke-static {}, Lcom/google/android/gms/analytics/bd;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "No destination: discarding hit: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/google/android/gms/analytics/av;->a:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 126
    :goto_1
    add-int/lit8 v2, v7, 0x1

    .line 127
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v18, v5

    move v5, v2

    move-object/from16 v2, v18

    .line 116
    :goto_2
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v7, v5

    move-object v5, v2

    goto :goto_0

    .line 124
    :cond_0
    const-string v2, "No destination: discarding hit."

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_1
    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v11

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v10, v11, v12}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 143
    iget-object v11, v2, Lcom/google/android/gms/analytics/av;->a:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v2, ""

    .line 146
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/google/android/gms/analytics/bm;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntityEnclosingRequest;

    move-result-object v10

    .line 147
    if-nez v10, :cond_4

    .line 148
    add-int/lit8 v2, v7, 0x1

    .line 149
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move-object v2, v6

    .line 150
    goto :goto_2

    .line 143
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v2, Lcom/google/android/gms/analytics/av;->a:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v2, Lcom/google/android/gms/analytics/av;->c:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    iget-wide v14, v2, Lcom/google/android/gms/analytics/av;->c:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-ltz v14, :cond_3

    const-string v14, "&qt="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    const-string v12, "&z="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v2, Lcom/google/android/gms/analytics/av;->b:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 152
    :cond_4
    const-string v11, "Host"

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/google/android/gms/analytics/bd;->a()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 154
    invoke-static {v10}, Lcom/google/android/gms/analytics/bm;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 156
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x2000

    if-le v11, v12, :cond_7

    .line 157
    const-string v5, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v5}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 194
    :cond_6
    :goto_4
    const-string v5, "_td"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/analytics/bf;->a(Ljava/lang/String;I)V

    .line 195
    add-int/lit8 v2, v7, 0x1

    move v5, v2

    move-object v2, v6

    goto/16 :goto_2

    .line 161
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/analytics/bm;->d:Lcom/google/android/gms/analytics/ap;

    invoke-virtual {v11}, Lcom/google/android/gms/analytics/ap;->b()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 162
    const-string v5, "Dry run enabled. Hit not actually sent."

    invoke-static {v5}, Lcom/google/android/gms/analytics/bd;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 165
    :cond_8
    if-eqz v3, :cond_9

    .line 166
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/analytics/bm;->c:Landroid/content/Context;

    invoke-static {v11}, Lcom/google/android/gms/analytics/u;->b(Landroid/content/Context;)V

    .line 167
    const/4 v3, 0x0

    .line 169
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/analytics/bm;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v11, v5, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 170
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 171
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 172
    if-eqz v11, :cond_a

    .line 173
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 175
    :cond_a
    const/16 v11, 0xc8

    if-eq v10, v11, :cond_6

    .line 177
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Bad response: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 182
    :catch_0
    move-exception v5

    const-string v5, "ClientProtocolException sending hit; discarding hit..."

    invoke-static {v5}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 183
    const-string v5, "_hd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/analytics/bf;->a(Ljava/lang/String;I)V

    goto :goto_4

    .line 184
    :catch_1
    move-exception v2

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Exception sending hit: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 187
    const-string v2, "_de"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/analytics/bf;->a(Ljava/lang/String;I)V

    .line 188
    const-string v2, "_hd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/analytics/bf;->a(Ljava/lang/String;I)V

    .line 189
    const-string v2, "_hs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v7}, Lcom/google/android/gms/analytics/bf;->a(Ljava/lang/String;I)V

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v3}, Lcom/google/android/gms/analytics/bm;->a(Lcom/google/android/gms/analytics/bf;Ljava/net/URL;Z)V

    move v2, v7

    .line 202
    :goto_5
    return v2

    .line 197
    :cond_b
    const-string v2, "_hd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/analytics/bf;->a(Ljava/lang/String;I)V

    .line 198
    const-string v2, "_hs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v7}, Lcom/google/android/gms/analytics/bf;->a(Ljava/lang/String;I)V

    .line 199
    if-eqz p3, :cond_c

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v3}, Lcom/google/android/gms/analytics/bm;->a(Lcom/google/android/gms/analytics/bf;Ljava/net/URL;Z)V

    :cond_c
    move v2, v7

    .line 202
    goto :goto_5
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 385
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/bm;->e:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bm;->e:Ljava/net/URL;

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/analytics/bm;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 95
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const-string v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
