.class Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;
.super Lcom/google/common/collect/cm;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field transient asMap:Ljava/util/Map;

.field final constraint:Lcom/google/common/collect/gf;

.field final delegate:Lcom/google/common/collect/jt;

.field transient entries:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/jt;Lcom/google/common/collect/gf;)V
    .locals 1

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/google/common/collect/cm;-><init>()V

    .line 410
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/jt;

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/jt;

    .line 411
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gf;

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/gf;

    .line 412
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->asMap:Ljava/util/Map;

    .line 422
    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v1

    .line 425
    new-instance v0, Lcom/google/common/collect/gq;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/gq;-><init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->asMap:Ljava/util/Map;

    .line 469
    :cond_0
    return-object v0
.end method

.method protected delegate()Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/jt;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->entries:Ljava/util/Collection;

    .line 475
    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/gf;

    invoke-static {v0, v1}, Lcom/google/common/collect/MapConstraints;->a(Ljava/util/Collection;Lcom/google/common/collect/gf;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->entries:Ljava/util/Collection;

    .line 478
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/jt;

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/gr;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/gr;-><init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Constraints;->a(Ljava/util/Collection;Lcom/google/common/collect/bs;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/gf;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/gf;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 496
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/jt;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jt;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lcom/google/common/collect/jt;)Z
    .locals 4

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    invoke-interface {p1}, Lcom/google/common/collect/jt;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 508
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 509
    goto :goto_0

    .line 510
    :cond_0
    return v1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/jt;

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/gf;

    invoke-static {p1, p2, v1}, Lcom/google/common/collect/MapConstraints;->a(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/gf;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/jt;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->delegate:Lcom/google/common/collect/jt;

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->constraint:Lcom/google/common/collect/gf;

    invoke-static {p1, p2, v1}, Lcom/google/common/collect/MapConstraints;->a(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/gf;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/jt;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
