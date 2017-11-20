.class public Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory$DeferredResponse;
.super Lcom/google/android/search/core/util/HttpResponseFetcher;
.source "SpdyConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/search/core/util/HttpResponseFetcher",
        "<",
        "Ljava/net/HttpURLConnection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
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
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/voicesearch/speechservice/spdy/SpdyConnectionFactory$DeferredResponse;->fetchResponse(Ljava/net/HttpURLConnection;[BI)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public fetchResponse(Ljava/net/HttpURLConnection;[BI)Ljava/net/HttpURLConnection;
    .locals 0
    .param p1, "c"    # Ljava/net/HttpURLConnection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "requestContent"    # [B
    .param p3, "trafficTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaIOException;,
            Lcom/google/android/shared/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 69
    return-object p1
.end method
