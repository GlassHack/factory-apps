.class Lcom/google/common/collect/nf;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/util/Map;

.field c:Ljava/util/Set;

.field d:Ljava/util/Set;

.field final synthetic e:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/common/collect/nf;->e:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 345
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/nf;->a:Ljava/lang/Object;

    .line 346
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/common/collect/nf;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/nf;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/nf;->e:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/nf;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/nf;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/nf;->b:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/nf;->b:Ljava/util/Map;

    goto :goto_0
.end method

.method b()Ljava/util/Map;
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/common/collect/nf;->e:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/nf;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method c()V
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/common/collect/nf;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/nf;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/nf;->e:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/nf;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/nf;->b:Ljava/util/Map;

    .line 365
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/google/common/collect/nf;->a()Ljava/util/Map;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    .line 404
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/nf;->c()V

    .line 407
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/common/collect/nf;->a()Ljava/util/Map;

    move-result-object v0

    .line 370
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/common/collect/nf;->d:Ljava/util/Set;

    .line 431
    if-nez v0, :cond_0

    .line 432
    new-instance v0, Lcom/google/common/collect/nh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/nh;-><init>(Lcom/google/common/collect/nf;Lcom/google/common/collect/mn;)V

    iput-object v0, p0, Lcom/google/common/collect/nf;->d:Ljava/util/Set;

    .line 434
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/common/collect/nf;->a()Ljava/util/Map;

    move-result-object v0

    .line 376
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/common/collect/nf;->c:Ljava/util/Set;

    .line 414
    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lcom/google/common/collect/ng;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ng;-><init>(Lcom/google/common/collect/nf;)V

    iput-object v0, p0, Lcom/google/common/collect/nf;->c:Ljava/util/Set;

    .line 423
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 381
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Lcom/google/common/collect/nf;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/nf;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/common/collect/nf;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/nf;->e:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/nf;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/google/common/collect/nf;->a()Ljava/util/Map;

    move-result-object v0

    .line 392
    if-nez v0, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 397
    :goto_0
    return-object v0

    .line 395
    :cond_0
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 396
    invoke-virtual {p0}, Lcom/google/common/collect/nf;->c()V

    goto :goto_0
.end method
