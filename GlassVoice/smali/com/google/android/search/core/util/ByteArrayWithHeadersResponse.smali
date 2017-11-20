.class public Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;
.super Ljava/lang/Object;
.source "ByteArrayWithHeadersResponse.java"


# instance fields
.field private final mByteResponse:[B

.field private final mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/util/Map;)V
    .locals 0
    .param p1, "byteResponse"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;->mByteResponse:[B

    .line 17
    iput-object p2, p0, Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;->mResponseHeaders:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public getResponse()[B
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;->mByteResponse:[B

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/search/core/util/ByteArrayWithHeadersResponse;->mResponseHeaders:Ljava/util/Map;

    return-object v0
.end method
