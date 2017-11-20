.class Lcom/google/common/collect/jh;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;

.field final b:Lcom/google/common/collect/io;

.field c:Ljava/util/Set;

.field d:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/collect/io;)V
    .locals 1

    .prologue
    .line 1480
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1481
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/jh;->a:Ljava/util/Map;

    .line 1482
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/io;

    iput-object v0, p0, Lcom/google/common/collect/jh;->b:Lcom/google/common/collect/io;

    .line 1483
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/google/common/collect/jh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1515
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/google/common/collect/jh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/google/common/collect/jh;->c:Ljava/util/Set;

    .line 1527
    if-nez v0, :cond_0

    .line 1528
    new-instance v0, Lcom/google/common/collect/ji;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ji;-><init>(Lcom/google/common/collect/jh;)V

    iput-object v0, p0, Lcom/google/common/collect/jh;->c:Ljava/util/Set;

    .line 1558
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/google/common/collect/jh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1500
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/jh;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/jh;->b:Lcom/google/common/collect/io;

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/io;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/google/common/collect/jh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/google/common/collect/jh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/jh;->b:Lcom/google/common/collect/io;

    iget-object v1, p0, Lcom/google/common/collect/jh;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/io;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/google/common/collect/jh;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/google/common/collect/jh;->d:Ljava/util/Collection;

    .line 1566
    if-nez v0, :cond_0

    .line 1567
    new-instance v0, Lcom/google/common/collect/jl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/jl;-><init>(Lcom/google/common/collect/jh;)V

    iput-object v0, p0, Lcom/google/common/collect/jh;->d:Ljava/util/Collection;

    .line 1574
    :cond_0
    return-object v0
.end method
