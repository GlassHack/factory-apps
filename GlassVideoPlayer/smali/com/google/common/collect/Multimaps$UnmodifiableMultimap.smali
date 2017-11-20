.class Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.super Lcom/google/common/collect/cm;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/jt;

.field transient entries:Ljava/util/Collection;

.field transient keySet:Ljava/util/Set;

.field transient keys:Lcom/google/common/collect/kp;

.field transient map:Ljava/util/Map;

.field transient values:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jt;)V
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/google/common/collect/cm;-><init>()V

    .line 496
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/jt;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/jt;

    .line 497
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    .line 512
    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 514
    new-instance v0, Lcom/google/common/collect/kn;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/kn;-><init>(Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    .line 550
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 506
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected delegate()Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/jt;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lcom/google/common/collect/jt;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    .line 556
    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    .line 559
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/jt;

    invoke-interface {v0, p1}, Lcom/google/common/collect/jt;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    .line 579
    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    .line 582
    :cond_0
    return-object v0
.end method

.method public keys()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lcom/google/common/collect/kp;

    .line 570
    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->keys()Lcom/google/common/collect/kp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/kp;)Lcom/google/common/collect/kp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lcom/google/common/collect/kp;

    .line 573
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 587
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/jt;)Z
    .locals 1

    .prologue
    .line 597
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 592
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 602
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 607
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 612
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    .line 618
    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/jt;

    invoke-interface {v0}, Lcom/google/common/collect/jt;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    .line 621
    :cond_0
    return-object v0
.end method
