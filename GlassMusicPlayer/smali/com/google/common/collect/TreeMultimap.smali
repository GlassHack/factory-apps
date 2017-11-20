.class public Lcom/google/common/collect/TreeMultimap;
.super Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient keyComparator:Ljava/util/Comparator;

.field private transient valueComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;-><init>(Ljava/util/SortedMap;)V

    .line 116
    iput-object p1, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    .line 117
    iput-object p2, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    .line 118
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/jt;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 123
    invoke-virtual {p0, p3}, Lcom/google/common/collect/TreeMultimap;->putAll(Lcom/google/common/collect/jt;)Z

    .line 124
    return-void
.end method

.method public static create()Lcom/google/common/collect/TreeMultimap;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/jt;)Lcom/google/common/collect/TreeMultimap;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/jt;)V

    return-object v0
.end method

.method public static create(Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultimap;
    .locals 3

    .prologue
    .line 100
    new-instance v2, Lcom/google/common/collect/TreeMultimap;

    invoke-static {p0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    .line 206
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultimap;->setMap(Ljava/util/Map;)V

    .line 207
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/jt;Ljava/io/ObjectInputStream;)V

    .line 208
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 194
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 196
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/jt;Ljava/io/ObjectOutputStream;)V

    .line 197
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->asMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public asMap()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->asMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 144
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createCollection()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createCollection()Ljava/util/SortedSet;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keyComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->keys()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/jt;)Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->putAll(Lcom/google/common/collect/jt;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
