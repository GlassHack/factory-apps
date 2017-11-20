.class public Lcom/google/android/search/core/util/HttpHelper$GetRequest;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/search/core/util/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetRequest"
.end annotation


# instance fields
.field private mFollowRedirects:Z

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxStaleSecs:I

.field private mRewriteUrl:Z

.field private mUrl:Ljava/lang/String;

.field private mUseCaches:Z

.field private mUseSpdy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mFollowRedirects:Z

    .line 67
    iput-boolean v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mRewriteUrl:Z

    .line 68
    iput-boolean v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUseCaches:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mFollowRedirects:Z

    .line 67
    iput-boolean v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mRewriteUrl:Z

    .line 68
    iput-boolean v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUseCaches:Z

    .line 84
    iput-object p1, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUrl:Ljava/lang/String;

    .line 85
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
    .line 88
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/google/android/search/core/util/HttpHelper$GetRequest;-><init>(Ljava/lang/String;)V

    .line 89
    iput-object p2, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mHeaders:Ljava/util/Map;

    .line 90
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 178
    instance-of v2, p1, Lcom/google/android/search/core/util/HttpHelper$GetRequest;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 179
    check-cast v0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;

    .line 180
    .local v0, "otherGet":Lcom/google/android/search/core/util/HttpHelper$GetRequest;
    iget-object v2, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUrl:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mHeaders:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mHeaders:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 183
    .end local v0    # "otherGet":Lcom/google/android/search/core/util/HttpHelper$GetRequest;
    :cond_0
    return v1
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mFollowRedirects:Z

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxStaleSecs()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mMaxStaleSecs:I

    return v0
.end method

.method public getRewriteUrl()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mRewriteUrl:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUseCaches:Z

    return v0
.end method

.method public getUseSpdy()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUseSpdy:Z

    return v0
.end method

.method public setFollowRedirects(Z)V
    .locals 0
    .param p1, "follow"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mFollowRedirects:Z

    .line 129
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mHeaders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mHeaders:Ljava/util/Map;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public setMaxStaleSecs(I)V
    .locals 0
    .param p1, "maxStaleSecs"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mMaxStaleSecs:I

    .line 170
    return-void
.end method

.method public setRewriteUrl(Z)V
    .locals 0
    .param p1, "rewrite"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mRewriteUrl:Z

    .line 138
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUrl:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 0
    .param p1, "useCaches"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUseCaches:Z

    .line 147
    return-void
.end method

.method public setUseSpdy(Z)V
    .locals 0
    .param p1, "useSpdy"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUseSpdy:Z

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetRequest{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/search/core/util/HttpHelper$GetRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
