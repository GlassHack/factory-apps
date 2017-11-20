.class public interface abstract Lcom/google/android/search/core/util/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;,
        Lcom/google/android/search/core/util/HttpHelper$UrlRewriter;,
        Lcom/google/android/search/core/util/HttpHelper$HttpRedirectException;,
        Lcom/google/android/search/core/util/HttpHelper$PostRequest;,
        Lcom/google/android/search/core/util/HttpHelper$GetRequest;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final TAG:Ljava/lang/String; = "HttpHelper"

.field public static final TAG_FLAG_EXTERNAL:I = 0x10000000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/shared/util/Util;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/android/search/core/util/HttpHelper;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public abstract get(Lcom/google/android/search/core/util/HttpHelper$GetRequest;ILcom/google/android/search/core/util/HttpResponseFetcher;)Ljava/lang/Object;
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
.end method

.method public abstract get(Lcom/google/android/search/core/util/HttpHelper$GetRequest;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/shared/exception/HttpException;
        }
    .end annotation
.end method

.method public abstract getHttpResponseCode(Lcom/google/android/search/core/util/HttpHelper$GetRequest;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract haveNetworkConnection()Z
.end method

.method public abstract post(Lcom/google/android/search/core/util/HttpHelper$PostRequest;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/shared/exception/HttpException;
        }
    .end annotation
.end method

.method public abstract rawGet(Lcom/google/android/search/core/util/HttpHelper$GetRequest;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/shared/exception/HttpException;
        }
    .end annotation
.end method

.method public abstract rawGetWithHeaders(Lcom/google/android/search/core/util/HttpHelper$GetRequest;I)Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/shared/exception/HttpException;
        }
    .end annotation
.end method

.method public abstract rawPost(Lcom/google/android/search/core/util/HttpHelper$PostRequest;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/shared/exception/HttpException;
        }
    .end annotation
.end method

.method public abstract scheduleCacheFlush()V
.end method
