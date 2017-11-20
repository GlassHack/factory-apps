.class Lcom/google/android/search/core/util/JavaNetHttpHelper$HttpResponseCodeFetcher;
.super Lcom/google/android/search/core/util/HttpResponseFetcher;
.source "JavaNetHttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/search/core/util/JavaNetHttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpResponseCodeFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/search/core/util/HttpResponseFetcher",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/google/android/search/core/util/HttpResponseFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchResponse(Ljava/net/HttpURLConnection;[BI)Ljava/lang/Integer;
    .locals 2
    .param p1, "c"    # Ljava/net/HttpURLConnection;
    .param p2, "requestContent"    # [B
    .param p3, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 500
    :try_start_0
    invoke-static {p3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 501
    invoke-virtual {p0, p1}, Lcom/google/android/search/core/util/JavaNetHttpHelper$HttpResponseCodeFetcher;->fetchResponseCode(Ljava/net/HttpURLConnection;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 503
    .local v0, "responseCode":I
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 504
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 506
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 503
    .end local v0    # "responseCode":I
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 504
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
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
    .line 494
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/search/core/util/JavaNetHttpHelper$HttpResponseCodeFetcher;->fetchResponse(Ljava/net/HttpURLConnection;[BI)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
