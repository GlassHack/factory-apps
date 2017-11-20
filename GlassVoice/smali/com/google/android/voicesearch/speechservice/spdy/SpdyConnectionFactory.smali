.class public Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory;
.super Ljava/lang/Object;
.source "SpdyConnectionFactory.java"

# interfaces
.implements Lcom/google/android/s3/ConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory$DeferredResponse;
    }
.end annotation


# instance fields
.field private final mHttpHelper:Lcom/google/android/search/core/util/HttpHelper;

.field private final mTrafficTag:I


# direct methods
.method public constructor <init>(Lcom/google/android/search/core/util/HttpHelper;I)V
    .locals 0
    .param p1, "httpHelper"    # Lcom/google/android/search/core/util/HttpHelper;
    .param p2, "trafficTag"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory;->mHttpHelper:Lcom/google/android/search/core/util/HttpHelper;

    .line 28
    iput p2, p0, Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory;->mTrafficTag:I

    .line 29
    return-void
.end method


# virtual methods
.method public openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "httpServerInfo"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory;->openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openHttpConnection(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "httpServerInfo"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;
    .param p2, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const-string v2, "https"

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "SpdyConnectionFactory only supports HTTPS connections"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_0
    new-instance v1, Lcom/google/android/search/core/util/HttpHelper$GetRequest;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "getRequest":Lcom/google/android/search/core/util/HttpHelper$GetRequest;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->setUseSpdy(Z)V

    .line 52
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->setUseCaches(Z)V

    .line 54
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory;->mHttpHelper:Lcom/google/android/search/core/util/HttpHelper;

    iget v3, p0, Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory;->mTrafficTag:I

    new-instance v4, Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory$DeferredResponse;

    invoke-direct {v4}, Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory$DeferredResponse;-><init>()V

    invoke-interface {v2, v1, v3, v4}, Lcom/google/android/search/core/util/HttpHelper;->get(Lcom/google/android/search/core/util/HttpHelper$GetRequest;ILcom/google/android/search/core/util/HttpResponseFetcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 56
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->hasChunkSize()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$HttpServerInfo;->getChunkSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 62
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_0
.end method

.method public openSocket(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;)Ljava/net/Socket;
    .locals 2
    .param p1, "serverInfo"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SpdyConnectionFactory can only open HTTP connections."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
