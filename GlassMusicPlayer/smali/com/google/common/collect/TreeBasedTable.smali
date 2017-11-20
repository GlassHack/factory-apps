.class public Lcom/google/common/collect/TreeBasedTable;
.super Lcom/google/common/collect/StandardRowSortedTable;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final columnComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/google/common/collect/TreeBasedTable$Factory;

    invoke-direct {v1, p2}, Lcom/google/common/collect/TreeBasedTable$Factory;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/aw;)V

    .line 136
    iput-object p2, p0, Lcom/google/common/collect/TreeBasedTable;->columnComparator:Ljava/util/Comparator;

    .line 137
    return-void
.end method

.method public static create()Lcom/google/common/collect/TreeBasedTable;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lcom/google/common/collect/TreeBasedTable;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeBasedTable;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/TreeBasedTable;)Lcom/google/common/collect/TreeBasedTable;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/google/common/collect/TreeBasedTable;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->rowComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeBasedTable;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 130
    invoke-virtual {v0, p0}, Lcom/google/common/collect/TreeBasedTable;->putAll(Lcom/google/common/collect/nw;)V

    .line 131
    return-object v0
.end method

.method public static create(Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/TreeBasedTable;
    .locals 1

    .prologue
    .line 118
    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/google/common/collect/TreeBasedTable;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeBasedTable;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->clear()V

    return-void
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable;->columnComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardRowSortedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createColumnKeyIterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/oc;

    invoke-direct {v2, p0}, Lcom/google/common/collect/oc;-><init>(Lcom/google/common/collect/TreeBasedTable;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/eg;->a(Ljava/lang/Iterable;Lcom/google/common/base/w;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/ej;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/ol;

    move-result-object v1

    .line 360
    new-instance v2, Lcom/google/common/collect/od;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/common/collect/od;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/util/Iterator;Ljava/util/Comparator;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 330
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardRowSortedTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/StandardRowSortedTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/nw;)V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable;->putAll(Lcom/google/common/collect/nw;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 340
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/StandardRowSortedTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable;->row(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/google/common/collect/oe;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/oe;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public rowComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/StandardRowSortedTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
