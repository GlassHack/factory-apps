.class public Lcom/google/android/search/core/util/HttpHelper$PostRequest;
.super Lcom/google/android/search/core/util/HttpHelper$GetRequest;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/search/core/util/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostRequest"
.end annotation


# instance fields
.field private mContent:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;-><init>(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->mContent:[B

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 205
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->mContent:[B

    .line 206
    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/google/android/search/core/util/HttpHelper;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public setContent([B)V
    .locals 0
    .param p1, "content"    # [B

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/search/core/util/HttpHelper$PostRequest;->mContent:[B

    .line 210
    return-void
.end method
