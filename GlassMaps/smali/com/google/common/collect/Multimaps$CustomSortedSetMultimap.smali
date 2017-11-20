.class Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;
.super Lcom/google/common/collect/AbstractSortedSetMultimap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient factory:Lcom/google/common/base/aw;

.field transient valueComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/aw;)V
    .locals 1

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;-><init>(Ljava/util/Map;)V

    .line 358
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/aw;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->factory:Lcom/google/common/base/aw;

    .line 359
    invoke-interface {p2}, Lcom/google/common/base/aw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->valueComparator:Ljava/util/Comparator;

    .line 360
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 384
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/aw;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->factory:Lcom/google/common/base/aw;

    .line 385
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->factory:Lcom/google/common/base/aw;

    invoke-interface {v0}, Lcom/google/common/base/aw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->valueComparator:Ljava/util/Comparator;

    .line 386
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 387
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->setMap(Ljava/util/Map;)V

    .line 388
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 375
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->factory:Lcom/google/common/base/aw;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 377
    return-void
.end method


# virtual methods
.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/Set;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->factory:Lcom/google/common/base/aw;

    invoke-interface {v0}, Lcom/google/common/base/aw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$CustomSortedSetMultimap;->valueComparator:Ljava/util/Comparator;

    return-object v0
.end method
