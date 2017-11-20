.class Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayFetcher;
.super Lcom/google/android/search/core/util/HttpResponseFetcher;
.source "JavaNetHttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/search/core/util/JavaNetHttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteArrayFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/search/core/util/HttpResponseFetcher",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 456
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
    .line 455
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayFetcher;->fetchResponse(Ljava/net/HttpURLConnection;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public fetchResponse(Ljava/net/HttpURLConnection;[BI)[B
    .locals 3
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
    .line 461
    :try_start_0
    invoke-static {p3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 462
    invoke-virtual {p0, p1, p2}, Lcom/google/android/search/core/util/JavaNetHttpHelper$ByteArrayFetcher;->sendRequest(Ljava/net/HttpURLConnection;[B)V

    .line 463
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 464
    .local v1, "len":I
    invoke-static {p1}, Lcom/google/android/search/core/util/NetworkUtils;->getOkHttpInputStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 465
    .local v0, "i":Ljava/io/InputStream;
    invoke-static {v0, v1}, Lcom/google/android/search/core/util/JavaNetHttpHelper;->toByteArray(Ljava/io/InputStream;I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 467
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 468
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    .line 467
    .end local v0    # "i":Ljava/io/InputStream;
    .end local v1    # "len":I
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 468
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v2
.end method
