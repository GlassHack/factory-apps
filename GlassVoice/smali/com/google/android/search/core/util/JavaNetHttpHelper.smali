.class public Lcom/google/android/search/core/util/JavaNetHttpHelper;
.super Ljava/lang/Object;
.source "JavaNetHttpHelper.java"

# interfaces
.implements Lcom/google/android/search/core/util/HttpHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/search/core/util/JavaNetHttpHelper$HttpResponseCodeFetcher;,
        Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayWithHeadersFetcher;,
        Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayFetcher;,
        Lcom/google/android/search/core/util/JavaNetHttpHelper$StringFetcher;
    }
.end annotation


# static fields
.field private static final CHARSET_KEY:Ljava/lang/String; = "charset="

.field private static final DBG_PRINT_CURL_COMMAND:Z = false

.field private static final TAG:Ljava/lang/String; = "JavaNetHttpHelper"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static sInitialized:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "JavaNetHttpHelper.class"
    .end annotation
.end field


# instance fields
.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFlushTask:Ljava/lang/Runnable;

.field private final mNonSpdyClient:Lcom/squareup/okhttp/OkHttpClient;

.field private final mRewriter:Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;

.field private final mSpdyClient:Lcom/squareup/okhttp/OkHttpClient;

.field private final mUserAgent:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;Lcom/google/common/base/Supplier;Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 3
    .param p1, "config"    # Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;
    .param p2, "rewriter"    # Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;
    .param p4, "bgExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;",
            "Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, "userAgent":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/google/android/search/core/util/JavaNetHttpHelper$1;

    const-string v1, "flush cache"

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/search/core/util/JavaNetHttpHelper$1;-><init>(Lcom/google/android/search/core/util/JavaNetHttpHelper;Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mFlushTask:Ljava/lang/Runnable;

    .line 128
    iput-object p1, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

    .line 129
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mUserAgent:Lcom/google/common/base/Supplier;

    .line 130
    iput-object p2, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mRewriter:Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;

    .line 131
    iput-object p4, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 132
    iput-object p5, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mContext:Landroid/content/Context;

    .line 133
    iget-object v0, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 135
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mSpdyClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 136
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mNonSpdyClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/search/core/util/JavaNetHttpHelper;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/search/core/util/JavaNetHttpHelper;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mSpdyClient:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method public static charsetOrDefault(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 5
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 351
    if-nez p0, :cond_0

    sget-object v1, Lcom/google/android/search/core/util/JavaNetHttpHelper;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 361
    :goto_0
    return-object v1

    .line 353
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    const-string v1, "JavaNetHttpHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 355
    sget-object v1, Lcom/google/android/search/core/util/JavaNetHttpHelper;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "ex":Ljava/nio/charset/IllegalCharsetNameException;
    const-string v1, "JavaNetHttpHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal charset name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 359
    sget-object v1, Lcom/google/android/search/core/util/JavaNetHttpHelper;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 361
    .end local v0    # "ex":Ljava/nio/charset/IllegalCharsetNameException;
    :cond_1
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0
.end method

.method private createConnection(Ljava/lang/String;Ljava/util/Map;ZZZ)Ljava/net/HttpURLConnection;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "useCaches"    # Z
    .param p4, "useSpdyIfHttps"    # Z
    .param p5, "rewriteUrl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZ)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaIOException;
        }
    .end annotation

    .prologue
    .line 307
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    const-string v7, "https://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 308
    :cond_0
    iget-object v7, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

    iget-object v8, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mSpdyClient:Lcom/squareup/okhttp/OkHttpClient;

    iget-object v10, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mNonSpdyClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-static {v7, v8, v9, v10}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->maybeInitCacheAndSocketFactory(Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;Landroid/content/Context;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/OkHttpClient;)V

    .line 311
    :cond_1
    if-eqz p5, :cond_2

    .line 312
    iget-object v7, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mRewriter:Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;

    invoke-interface {v7, p1}, Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 316
    :cond_2
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .local v5, "u":Ljava/net/URL;
    const-string v7, "JavaNetHttpHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URL="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rewritten=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0, v5, p4}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->createConnectionInternal(Ljava/net/URL;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 323
    .local v0, "c":Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_3

    .line 324
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 325
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 326
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 327
    .local v6, "value":Ljava/lang/String;
    const-string v7, "JavaNetHttpHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v0, v4, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    .end local v0    # "c":Ljava/net/HttpURLConnection;
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "u":Ljava/net/URL;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v7, Lcom/google/android/shared/exception/GsaIOException;

    const v8, 0x40001

    invoke-direct {v7, p1, v1, v8}, Lcom/google/android/shared/exception/GsaIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v7

    .line 331
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "c":Ljava/net/HttpURLConnection;
    .restart local v5    # "u":Ljava/net/URL;
    :cond_3
    const-string v8, "User-Agent"

    iget-object v7, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mUserAgent:Lcom/google/common/base/Supplier;

    invoke-interface {v7}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-object v0
.end method

.method static extractCharset(Ljava/net/HttpURLConnection;)Ljava/nio/charset/Charset;
    .locals 7
    .param p0, "c"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v6, 0x0

    .line 340
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "contentType":Ljava/lang/String;
    if-nez v2, :cond_0

    sget-object v3, Lcom/google/android/search/core/util/JavaNetHttpHelper;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 347
    :goto_0
    return-object v3

    .line 342
    :cond_0
    const-string v3, "JavaNetHttpHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 343
    const-string v3, "charset="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 344
    .local v1, "charsetIndex":I
    if-gez v1, :cond_1

    sget-object v3, Lcom/google/android/search/core/util/JavaNetHttpHelper;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 345
    :cond_1
    const-string v3, "charset="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "charset":Ljava/lang/String;
    const-string v3, "JavaNetHttpHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Charset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 347
    invoke-static {v0}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->charsetOrDefault(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_0
.end method

.method private static maybeInitCacheAndSocketFactory(Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;Landroid/content/Context;Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 8
    .param p0, "config"    # Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spdyClient"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p3, "nonSpdyClient"    # Lcom/squareup/okhttp/OkHttpClient;

    .prologue
    .line 150
    const-class v5, Lcom/google/android/search/core/util/JavaNetHttpHelper;

    monitor-enter v5

    .line 151
    :try_start_0
    sget-boolean v4, Lcom/google/android/search/core/util/JavaNetHttpHelper;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "cache":Lcom/squareup/okhttp/HttpResponseCache;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v6, "http"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v3, "httpCacheDir":Ljava/io/File;
    new-instance v1, Lcom/squareup/okhttp/HttpResponseCache;

    invoke-interface {p0}, Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;->getCacheSize()J

    move-result-wide v6

    invoke-direct {v1, v3, v6, v7}, Lcom/squareup/okhttp/HttpResponseCache;-><init>(Ljava/io/File;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cache":Lcom/squareup/okhttp/HttpResponseCache;
    .local v1, "cache":Lcom/squareup/okhttp/HttpResponseCache;
    move-object v0, v1

    .line 160
    .end local v1    # "cache":Lcom/squareup/okhttp/HttpResponseCache;
    .end local v3    # "httpCacheDir":Ljava/io/File;
    .restart local v0    # "cache":Lcom/squareup/okhttp/HttpResponseCache;
    :goto_0
    if-eqz v0, :cond_0

    .line 161
    :try_start_2
    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/OkHttpClient;->setResponseCache(Ljava/net/ResponseCache;)Lcom/squareup/okhttp/OkHttpClient;

    .line 162
    invoke-virtual {p3, v0}, Lcom/squareup/okhttp/OkHttpClient;->setResponseCache(Ljava/net/ResponseCache;)Lcom/squareup/okhttp/OkHttpClient;

    .line 165
    :cond_0
    new-instance v4, Lcom/google/android/search/core/util/VelvetSslSocketFactory;

    const/4 v6, 0x1

    invoke-direct {v4, p0, p1, v6}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;-><init>(Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;Landroid/content/Context;Z)V

    invoke-virtual {p2, v4}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 167
    new-instance v4, Lcom/google/android/search/core/util/VelvetSslSocketFactory;

    const/4 v6, 0x0

    invoke-direct {v4, p0, p1, v6}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;-><init>(Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;Landroid/content/Context;Z)V

    invoke-virtual {p3, v4}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 169
    const/4 v4, 0x1

    sput-boolean v4, Lcom/google/android/search/core/util/JavaNetHttpHelper;->sInitialized:Z

    .line 171
    .end local v0    # "cache":Lcom/squareup/okhttp/HttpResponseCache;
    :cond_1
    monitor-exit v5

    .line 172
    return-void

    .line 156
    .restart local v0    # "cache":Lcom/squareup/okhttp/HttpResponseCache;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "JavaNetHttpHelper"

    const-string v6, "Failed to install HTTP cache"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v2, v6, v7}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    .end local v0    # "cache":Lcom/squareup/okhttp/HttpResponseCache;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private post(Ljava/lang/String;Ljava/util/Map;[BIZLcom/google/android/search/core/util/HttpResponseFetcher;Z)Ljava/lang/Object;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "trafficTag"    # I
    .param p5, "useSpdyIfHttps"    # Z
    .param p7, "rewriteUrl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BIZ",
            "Lcom/google/android/search/core/util/HttpResponseFetcher",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 256
    .local p2, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "fetcher":Lcom/google/android/search/core/util/HttpResponseFetcher;, "Lcom/google/android/search/core/util/HttpResponseFetcher<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->haveNetworkConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string v0, "JavaNetHttpHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No network connection: POST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 258
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    .line 260
    :cond_0
    if-nez p2, :cond_1

    .line 261
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 263
    .restart local p2    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v1, "Content-Length"

    if-nez p3, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->createConnection(Ljava/lang/String;Ljava/util/Map;ZZZ)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 267
    .local v6, "c":Ljava/net/HttpURLConnection;
    if-eqz p3, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 269
    :try_start_0
    const-string v0, "POST"

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    invoke-virtual {p6, v6, p3, p4}, Lcom/google/android/search/core/util/HttpResponseFetcher;->fetchResponse(Ljava/net/HttpURLConnection;[BI)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 263
    .end local v6    # "c":Ljava/net/HttpURLConnection;
    :cond_2
    array-length v0, p3

    goto :goto_1

    .line 267
    .restart local v6    # "c":Ljava/net/HttpURLConnection;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 270
    :catch_0
    move-exception v7

    .line 271
    .local v7, "e":Ljava/net/ProtocolException;
    new-instance v0, Lcom/google/android/shared/exception/GsaIOException;

    const v1, 0x4000c

    invoke-direct {v0, v7, v1}, Lcom/google/android/shared/exception/GsaIOException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method static toByteArray(Ljava/io/InputStream;I)[B
    .locals 5
    .param p0, "i"    # Ljava/io/InputStream;
    .param p1, "len"    # I

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 436
    .local v1, "response":[B
    if-gez p1, :cond_1

    .line 437
    :try_start_0
    invoke-static {p0}, Lcom/google/android/shared/util/IoUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 445
    :goto_0
    if-eqz p0, :cond_0

    .line 446
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    :cond_0
    :goto_1
    return-object v1

    .line 439
    :cond_1
    :try_start_2
    new-array v1, p1, [B

    .line 440
    invoke-static {p0, v1}, Lcom/google/android/shared/util/IoUtils;->readFully(Ljava/io/InputStream;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v2

    if-eqz p0, :cond_2

    .line 446
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "io":Ljava/io/IOException;
    const-string v2, "JavaNetHttpHelper"

    const-string v3, "Failed to read byte response from InputStream."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method createConnectionInternal(Ljava/net/URL;Z)Ljava/net/HttpURLConnection;
    .locals 8
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "useSpdyIfHttps"    # Z

    .prologue
    const/4 v7, 0x0

    .line 277
    iget-object v4, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

    invoke-interface {v4}, Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;->getConnectTimeoutMs()I

    move-result v2

    .line 278
    .local v2, "connectTimeout":I
    iget-object v4, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

    invoke-interface {v4}, Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;->getReadTimeoutMs()I

    move-result v3

    .line 281
    .local v3, "readTimeout":I
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

    invoke-interface {v4}, Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;->isSpdyEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "https"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    const-string v4, "JavaNetHttpHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using spdy for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mSpdyClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 289
    .local v1, "client":Lcom/squareup/okhttp/OkHttpClient;
    :goto_0
    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/OkHttpClient;->open(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 290
    .local v0, "c":Ljava/net/HttpURLConnection;
    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 293
    :cond_0
    if-eqz v3, :cond_1

    .line 294
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 297
    :cond_1
    return-object v0

    .line 285
    .end local v0    # "c":Ljava/net/HttpURLConnection;
    .end local v1    # "client":Lcom/squareup/okhttp/OkHttpClient;
    :cond_2
    const-string v4, "JavaNetHttpHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not using spdy for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 286
    iget-object v1, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mNonSpdyClient:Lcom/squareup/okhttp/OkHttpClient;

    .restart local v1    # "client":Lcom/squareup/okhttp/OkHttpClient;
    goto :goto_0
.end method

.method public get(Lcom/google/android/search/core/util/HttpHelper$GetRequest;ILcom/google/android/search/core/util/HttpResponseFetcher;)Ljava/lang/Object;
    .locals 9
    .param p1, "request"    # Lcom/google/android/search/core/util/HttpHelper$GetRequest;
    .param p2, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/search/core/util/HttpHelper$GetRequest;",
            "I",
            "Lcom/google/android/search/core/util/HttpResponseFetcher",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 212
    .local p3, "fetcher":Lcom/google/android/search/core/util/HttpResponseFetcher;, "Lcom/google/android/search/core/util/HttpResponseFetcher<TT;>;"
    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->getUseCaches()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->getUseSpdy()Z

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->getRewriteUrl()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->createConnection(Ljava/lang/String;Ljava/util/Map;ZZZ)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 215
    .local v6, "c":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v0, "GET"

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->getFollowRedirects()Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 220
    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->getUseCaches()Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->haveNetworkConnection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "JavaNetHttpHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No network connection: GET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will try cache."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 226
    const-string v0, "Cache-Control"

    const-string v1, "only-if-cached"

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->getMaxStaleSecs()I

    move-result v8

    .line 228
    .local v8, "maxStaleSecs":I
    if-lez v8, :cond_1

    .line 229
    const-string v0, "Cache-Control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max-stale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v8    # "maxStaleSecs":I
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p3, v6, v0, p2}, Lcom/google/android/search/core/util/HttpResponseFetcher;->fetchResponse(Ljava/net/HttpURLConnection;[BI)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 216
    :catch_0
    move-exception v7

    .line 217
    .local v7, "e":Ljava/net/ProtocolException;
    new-instance v0, Lcom/google/android/shared/exception/GsaIOException;

    const v1, 0x4000b

    invoke-direct {v0, v7, v1}, Lcom/google/android/shared/exception/GsaIOException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 232
    .end local v7    # "e":Ljava/net/ProtocolException;
    .restart local v8    # "maxStaleSecs":I
    :cond_1
    const-string v0, "Cache-Control"

    const-string v1, "max-stale"

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public get(Lcom/google/android/search/core/util/HttpHelper$GetRequest;I)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lcom/google/android/search/core/util/HttpHelper$GetRequest;
    .param p2, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lcom/google/android/search/core/util/JavaNetHttpHelper$StringFetcher;

    invoke-direct {v0}, Lcom/google/android/search/core/util/JavaNetHttpHelper$StringFetcher;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->get(Lcom/google/android/search/core/util/HttpHelper$GetRequest;ILcom/google/android/search/core/util/HttpResponseFetcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponseCode(Lcom/google/android/search/core/util/HttpHelper$GetRequest;I)I
    .locals 1
    .param p1, "request"    # Lcom/google/android/search/core/util/HttpHelper$GetRequest;
    .param p2, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lcom/google/android/search/core/util/JavaNetHttpHelper$HttpResponseCodeFetcher;

    invoke-direct {v0}, Lcom/google/android/search/core/util/JavaNetHttpHelper$HttpResponseCodeFetcher;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->get(Lcom/google/android/search/core/util/HttpHelper$GetRequest;ILcom/google/android/search/core/util/HttpResponseFetcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public haveNetworkConnection()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v2, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 367
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 368
    :cond_0
    const-string v2, "JavaNetHttpHelper"

    const-string v3, "haveNetworkConnection: Not connected to network."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 371
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public post(Lcom/google/android/search/core/util/HttpHelper$PostRequest;I)Ljava/lang/String;
    .locals 8
    .param p1, "request"    # Lcom/google/android/search/core/util/HttpHelper$PostRequest;
    .param p2, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->getContent()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->getUseSpdy()Z

    move-result v5

    new-instance v6, Lcom/google/android/search/core/util/JavaNetHttpHelper$StringFetcher;

    invoke-direct {v6}, Lcom/google/android/search/core/util/JavaNetHttpHelper$StringFetcher;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->getRewriteUrl()Z

    move-result v7

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->post(Ljava/lang/String;Ljava/util/Map;[BIZLcom/google/android/search/core/util/HttpResponseFetcher;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public rawGet(Lcom/google/android/search/core/util/HttpHelper$GetRequest;I)[B
    .locals 1
    .param p1, "request"    # Lcom/google/android/search/core/util/HttpHelper$GetRequest;
    .param p2, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayFetcher;

    invoke-direct {v0}, Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayFetcher;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->get(Lcom/google/android/search/core/util/HttpHelper$GetRequest;ILcom/google/android/search/core/util/HttpResponseFetcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public rawGetWithHeaders(Lcom/google/android/search/core/util/HttpHelper$GetRequest;I)Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/android/search/core/util/HttpHelper$GetRequest;
    .param p2, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayWithHeadersFetcher;

    invoke-direct {v0}, Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayWithHeadersFetcher;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->get(Lcom/google/android/search/core/util/HttpHelper$GetRequest;ILcom/google/android/search/core/util/HttpResponseFetcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;

    return-object v0
.end method

.method public rawPost(Lcom/google/android/search/core/util/HttpHelper$PostRequest;I)[B
    .locals 8
    .param p1, "request"    # Lcom/google/android/search/core/util/HttpHelper$PostRequest;
    .param p2, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->getContent()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->getUseSpdy()Z

    move-result v5

    new-instance v6, Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayFetcher;

    invoke-direct {v6}, Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayFetcher;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->getRewriteUrl()Z

    move-result v7

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->post(Ljava/lang/String;Ljava/util/Map;[BIZLcom/google/android/search/core/util/HttpResponseFetcher;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public scheduleCacheFlush()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/search/core/util/JavaNetHttpHelper;->mFlushTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method
