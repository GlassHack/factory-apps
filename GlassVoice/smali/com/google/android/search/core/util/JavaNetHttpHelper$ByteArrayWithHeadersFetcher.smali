.class Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayWithHeadersFetcher;
.super Lcom/google/android/search/core/util/HttpResponseFetcher;
.source "JavaNetHttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/search/core/util/JavaNetHttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteArrayWithHeadersFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/search/core/util/HttpResponseFetcher",
        "<",
        "Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/google/android/search/core/util/HttpResponseFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/net/HttpURLConnection;[BI)Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;
    .locals 5
    .param p1, "c"    # Ljava/net/HttpURLConnection;
    .param p2, "requestContent"    # [B
    .param p3, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 481
    :try_start_0
    invoke-static {p3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 482
    invoke-virtual {p0, p1, p2}, Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayWithHeadersFetcher;->sendRequest(Ljava/net/HttpURLConnection;[B)V

    .line 483
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 484
    .local v1, "len":I
    invoke-static {p1}, Lcom/google/android/search/core/util/NetworkUtils;->getOkHttpInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 485
    .local v0, "i":Ljava/io/InputStream;
    invoke-static {v0, v1}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 486
    .local v2, "response":[B
    new-instance v3, Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;-><init>([BLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 489
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    .line 488
    .end local v0    # "i":Ljava/io/InputStream;
    .end local v1    # "len":I
    .end local v2    # "response":[B
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 489
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3
.end method

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
    .line 473
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayWithHeadersFetcher;->fetchResponse(Ljava/net/HttpURLConnection;[BI)Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;

    move-result-object v0

    return-object v0
.end method
