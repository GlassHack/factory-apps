.class public abstract Lcom/google/android/search/core/util/HttpResponseFetcher;
.super Ljava/lang/Object;
.source "HttpResponseFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpResponseFetcher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    .local p0, "this":Lcom/google/android/search/core/util/HttpResponseFetcher;, "Lcom/google/android/search/core/util/HttpResponseFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isRedirect(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .prologue
    .line 118
    const/16 v0, 0x12e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSuccess(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .prologue
    .line 110
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcc

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract fetchResponse(Ljava/net/HttpURLConnection;[BI)Ljava/lang/Object;
    .param p1    # Ljava/net/HttpURLConnection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "[BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation
.end method

.method protected fetchResponseCode(Ljava/net/HttpURLConnection;)I
    .locals 5
    .param p1, "c"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/google/android/search/core/util/HttpResponseFetcher;, "Lcom/google/android/search/core/util/HttpResponseFetcher<TT;>;"
    const-string v2, "HttpResponseFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 81
    invoke-static {p1}, Lcom/google/android/search/core/util/NetworkUtils;->connect(Ljava/net/HttpURLConnection;)V

    .line 82
    const/4 v1, -0x1

    .line 88
    .local v1, "responseCode":I
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 94
    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/android/shared/exception/GsaIOException;

    const v3, 0x40005

    invoke-direct {v2, v0, v3}, Lcom/google/android/shared/exception/GsaIOException;-><init>(Ljava/lang/Throwable;I)V

    throw v2

    .line 91
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    const v2, 0x40004

    invoke-static {v0, v2}, Lcom/google/android/search/core/util/NetworkUtils;->throwGsaIOExceptionFromOkHttpException(Ljava/io/IOException;I)V

    goto :goto_0
.end method

.method public sendRequest(Ljava/net/HttpURLConnection;[B)V
    .locals 8
    .param p1, "c"    # Ljava/net/HttpURLConnection;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/exception/GsaBaseIOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/search/core/util/HttpResponseFetcher;, "Lcom/google/android/search/core/util/HttpResponseFetcher<TT;>;"
    const/4 v7, 0x0

    .line 36
    const-string v4, "HttpResponseFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with properties: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 40
    invoke-static {p1}, Lcom/google/android/search/core/util/NetworkUtils;->connect(Ljava/net/HttpURLConnection;)V

    .line 41
    const/4 v2, -0x1

    .line 44
    .local v2, "responseCode":I
    if-eqz p2, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/io/OutputStream;->write([B)V

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 58
    :goto_0
    invoke-static {v2}, Lcom/google/android/search/core/util/HttpResponseFetcher;->isSuccess(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 59
    const-string v3, ""

    .line 61
    .local v3, "responseMessage":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 66
    :goto_1
    invoke-static {v2}, Lcom/google/android/search/core/util/HttpResponseFetcher;->isRedirect(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    const-string v4, "Location"

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "location":Ljava/lang/String;
    new-instance v4, Lcom/google/android/search/core/util/HttpHelper$HttpRedirectException;

    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/search/core/util/HttpHelper$HttpRedirectException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 52
    .end local v1    # "location":Ljava/lang/String;
    .end local v3    # "responseMessage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/google/android/shared/exception/GsaIOException;

    const v5, 0x40005

    invoke-direct {v4, v0, v5}, Lcom/google/android/shared/exception/GsaIOException;-><init>(Ljava/lang/Throwable;I)V

    throw v4

    .line 54
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    const v4, 0x40004

    invoke-static {v0, v4}, Lcom/google/android/search/core/util/NetworkUtils;->throwGsaIOExceptionFromOkHttpException(Ljava/io/IOException;I)V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "responseMessage":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 64
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "HttpResponseFetcher"

    const-string v5, "Failed to get response message"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v4, Lcom/google/android/shared/exception/HttpException;

    invoke-direct {v4, v2, v3}, Lcom/google/android/shared/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 73
    .end local v3    # "responseMessage":Ljava/lang/String;
    :cond_2
    return-void
.end method
