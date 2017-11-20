.class Lcom/google/android/search/core/util/JavaNetHttpHelper$StringFetcher;
.super Lcom/google/android/search/core/util/HttpResponseFetcher;
.source "JavaNetHttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/search/core/util/JavaNetHttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/search/core/util/HttpResponseFetcher",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/google/android/search/core/util/HttpResponseFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fetchResponse(Ljava/net/HttpURLConnection;[BI)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/net/HttpURLConnection;
    .param p2, "x1"    # [B
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/search/core/util/JavaNetHttpHelper$StringFetcher;->fetchResponse(Ljava/net/HttpURLConnection;[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchResponse(Ljava/net/HttpURLConnection;[BI)Ljava/lang/String;
    .locals 10
    .param p1, "c"    # Ljava/net/HttpURLConnection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "requestContent"    # [B
    .param p3, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 382
    .local v2, "charset":Ljava/nio/charset/Charset;
    :try_start_0
    invoke-static {p3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 383
    invoke-virtual {p0, p1, p2}, Lcom/google/android/search/core/util/JavaNetHttpHelper$StringFetcher;->sendRequest(Ljava/net/HttpURLConnection;[B)V

    .line 384
    invoke-static {p1}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->extractCharset(Ljava/net/HttpURLConnection;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 386
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 393
    .local v3, "contentLength":I
    const/16 v7, 0x200

    const/16 v8, 0x2000

    mul-int/lit8 v9, v3, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 394
    .local v6, "initialSizeBytes":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 395
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 397
    .local v5, "i":Ljava/io/InputStream;
    :try_start_1
    invoke-static {p1}, Lcom/google/android/search/core/util/NetworkUtils;->getOkHttpInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 399
    :try_start_2
    invoke-static {v5, v1}, Lcom/google/android/shared/util/IoUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    :try_start_3
    invoke-static {v5}, Lcom/google/android/shared/util/IoUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 409
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-le v7, v6, :cond_0

    .line 410
    const-string v7, "JavaNetHttpHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initial buffer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", actual data "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Consider preallocating more."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 415
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 418
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 422
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v7

    return-object v7

    .line 400
    :catch_0
    move-exception v4

    .line 401
    .local v4, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v7, Lcom/google/android/shared/exception/GsaIOException;

    const v8, 0x40009

    invoke-direct {v7, v4, v8}, Lcom/google/android/shared/exception/GsaIOException;-><init>(Ljava/lang/Throwable;I)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 405
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :try_start_6
    invoke-static {v5}, Lcom/google/android/shared/util/IoUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 415
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "contentLength":I
    .end local v5    # "i":Ljava/io/InputStream;
    .end local v6    # "initialSizeBytes":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 418
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v7

    .line 423
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "contentLength":I
    .restart local v5    # "i":Ljava/io/InputStream;
    .restart local v6    # "initialSizeBytes":I
    :catch_1
    move-exception v4

    .line 424
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/google/android/shared/exception/GsaIOException;

    const v8, 0x4000a

    invoke-direct {v7, v4, v8}, Lcom/google/android/shared/exception/GsaIOException;-><init>(Ljava/lang/Throwable;I)V

    throw v7

    .line 415
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "contentLength":I
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "i":Ljava/io/InputStream;
    .end local v6    # "initialSizeBytes":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v7

    goto :goto_0
.end method
