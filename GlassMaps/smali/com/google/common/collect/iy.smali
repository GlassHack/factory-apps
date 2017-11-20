.class final Lcom/google/common/collect/iy;
.super Lcom/google/common/collect/ii;
.source "SourceFile"


# instance fields
.field d:Lcom/google/common/base/aj;

.field e:Ljava/util/Set;

.field f:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/aj;Lcom/google/common/base/aj;)V
    .locals 0

    .prologue
    .line 2245
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/ii;-><init>(Ljava/util/Map;Lcom/google/common/base/aj;)V

    .line 2246
    iput-object p2, p0, Lcom/google/common/collect/iy;->d:Lcom/google/common/base/aj;

    .line 2247
    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/google/common/collect/iy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/iy;->d:Lcom/google/common/base/aj;

    invoke-interface {v0, p1}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/google/common/collect/iy;->e:Ljava/util/Set;

    .line 2254
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/iy;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/iy;->b:Lcom/google/common/base/aj;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Lcom/google/common/base/aj;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/iy;->e:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/google/common/collect/iy;->f:Ljava/util/Set;

    .line 2262
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/iy;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/iy;->d:Lcom/google/common/base/aj;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Lcom/google/common/base/aj;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/iy;->f:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
