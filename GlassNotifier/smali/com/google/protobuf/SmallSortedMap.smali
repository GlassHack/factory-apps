.class Lcom/google/protobuf/SmallSortedMap;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/SmallSortedMap$EmptySet;,
        Lcom/google/protobuf/SmallSortedMap$DescendingEntryIterator;,
        Lcom/google/protobuf/SmallSortedMap$EntryIterator;,
        Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;,
        Lcom/google/protobuf/SmallSortedMap$EntrySet;,
        Lcom/google/protobuf/SmallSortedMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/SmallSortedMap",
            "<TK;TV;>.Entry;>;"
        }
    .end annotation
.end field

.field private isImmutable:Z

.field private volatile lazyDescendingEntrySet:Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SmallSortedMap",
            "<TK;TV;>.DescendingEntrySet;"
        }
    .end annotation
.end field

.field private volatile lazyEntrySet:Lcom/google/protobuf/SmallSortedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SmallSortedMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private final maxArraySize:I

.field private overflowEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private overflowEntriesDescending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "arraySize"    # I

    .prologue
    .line 129
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 130
    iput p1, p0, Lcom/google/protobuf/SmallSortedMap;->maxArraySize:I

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 136
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/protobuf/SmallSortedMap$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/google/protobuf/SmallSortedMap$1;

    .prologue
    .line 59
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/SmallSortedMap;-><init>(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/protobuf/SmallSortedMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/SmallSortedMap;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/protobuf/SmallSortedMap;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/SmallSortedMap;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/protobuf/SmallSortedMap;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/SmallSortedMap;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/protobuf/SmallSortedMap;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/SmallSortedMap;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/protobuf/SmallSortedMap;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/SmallSortedMap;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    return-object v0
.end method

.method private binarySearchInArray(Ljava/lang/Comparable;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    const/4 v1, 0x0

    .line 309
    .local v1, "left":I
    iget-object v4, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 314
    .local v3, "right":I
    if-ltz v3, :cond_2

    .line 315
    iget-object v4, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 316
    .local v0, "cmp":I
    if-lez v0, :cond_1

    .line 317
    add-int/lit8 v4, v3, 0x2

    neg-int v2, v4

    .line 334
    .end local v0    # "cmp":I
    :cond_0
    :goto_0
    return v2

    .line 318
    .restart local v0    # "cmp":I
    :cond_1
    if-nez v0, :cond_2

    move v2, v3

    .line 319
    goto :goto_0

    .line 323
    .end local v0    # "cmp":I
    :cond_2
    :goto_1
    if-gt v1, v3, :cond_4

    .line 324
    add-int v4, v1, v3

    div-int/lit8 v2, v4, 0x2

    .line 325
    .local v2, "mid":I
    iget-object v4, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 326
    .restart local v0    # "cmp":I
    if-gez v0, :cond_3

    .line 327
    add-int/lit8 v3, v2, -0x1

    goto :goto_1

    .line 328
    :cond_3
    if-lez v0, :cond_0

    .line 329
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "cmp":I
    .end local v2    # "mid":I
    :cond_4
    add-int/lit8 v4, v1, 0x1

    neg-int v2, v4

    goto :goto_0
.end method

.method private checkMutable()V
    .locals 1

    .prologue
    .line 366
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/SmallSortedMap;->isImmutable:Z

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 369
    :cond_0
    return-void
.end method

.method private ensureEntryArrayMutable()V
    .locals 2

    .prologue
    .line 394
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 395
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/protobuf/SmallSortedMap;->maxArraySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 398
    :cond_0
    return-void
.end method

.method private getOverflowEntriesMutable()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 380
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 383
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;
    .locals 1
    .param p0, "arraySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<TFieldDescriptorType;>;>(I)",
            "Lcom/google/protobuf/SmallSortedMap",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/google/protobuf/SmallSortedMap$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/SmallSortedMap$1;-><init>(I)V

    return-object v0
.end method

.method static newInstanceForTest(I)Lcom/google/protobuf/SmallSortedMap;
    .locals 1
    .param p0, "arraySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/protobuf/SmallSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/google/protobuf/SmallSortedMap;

    invoke-direct {v0, p0}, Lcom/google/protobuf/SmallSortedMap;-><init>(I)V

    return-object v0
.end method

.method private removeArrayEntryAt(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 290
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 291
    .local v1, "removed":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 296
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v4, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v4, p0, v2}, Lcom/google/protobuf/SmallSortedMap$Entry;-><init>(Lcom/google/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 299
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 256
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 262
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 207
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 208
    .local v0, "key":Ljava/lang/Comparable;, "TK;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method descendingEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/google/protobuf/SmallSortedMap;Lcom/google/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/google/protobuf/SmallSortedMap$DescendingEntrySet;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/google/protobuf/SmallSortedMap$EntrySet;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/google/protobuf/SmallSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/google/protobuf/SmallSortedMap;Lcom/google/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/google/protobuf/SmallSortedMap$EntrySet;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/google/protobuf/SmallSortedMap$EntrySet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 679
    if-ne p0, p1, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v4

    .line 683
    :cond_1
    instance-of v6, p1, Lcom/google/protobuf/SmallSortedMap;

    if-nez v6, :cond_2

    .line 684
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 687
    check-cast v2, Lcom/google/protobuf/SmallSortedMap;

    .line 688
    .local v2, "other":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<**>;"
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap;->size()I

    move-result v3

    .line 689
    .local v3, "size":I
    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->size()I

    move-result v6

    if-eq v3, v6, :cond_3

    move v4, v5

    .line 690
    goto :goto_0

    .line 694
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    .line 695
    .local v1, "numArrayEntries":I
    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v6

    if-eq v1, v6, :cond_4

    .line 696
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 699
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_6

    .line 700
    invoke-virtual {p0, v0}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-virtual {v2, v0}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    .line 701
    goto :goto_0

    .line 699
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 705
    :cond_6
    if-eq v1, v3, :cond_0

    .line 706
    iget-object v4, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    iget-object v5, v2, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    .line 221
    .local v1, "key":Ljava/lang/Comparable;, "TK;"
    invoke-direct {p0, v1}, Lcom/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 222
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 223
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 225
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getArrayEntryAt(I)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public getNumArrayEntries()I
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumOverflowEntries()I
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOverflowEntries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/google/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method getOverflowEntriesDescending()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/google/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 715
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 716
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    .line 717
    .local v2, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 718
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap$Entry;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/SmallSortedMap;->getNumOverflowEntries()I

    move-result v3

    if-lez v3, :cond_1

    .line 722
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 724
    :cond_1
    return v0
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 160
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/SmallSortedMap;->isImmutable:Z

    return v0
.end method

.method public makeImmutable()V
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 147
    :goto_0
    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 149
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 150
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 152
    :goto_1
    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/SmallSortedMap;->isImmutable:Z

    .line 156
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1
.end method

.method public put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 231
    invoke-direct {p0, p1}, Lcom/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 232
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 234
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3, p2}, Lcom/google/protobuf/SmallSortedMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 250
    :goto_0
    return-object v3

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->ensureEntryArrayMutable()V

    .line 237
    add-int/lit8 v3, v0, 0x1

    neg-int v1, v3

    .line 238
    .local v1, "insertionPoint":I
    iget v3, p0, Lcom/google/protobuf/SmallSortedMap;->maxArraySize:I

    if-lt v1, v3, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 243
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/google/protobuf/SmallSortedMap;->maxArraySize:I

    if-ne v3, v4, :cond_2

    .line 245
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    iget v4, p0, Lcom/google/protobuf/SmallSortedMap;->maxArraySize:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/SmallSortedMap$Entry;

    .line 246
    .local v2, "lastEntryInArray":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    .line 247
    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 246
    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v2    # "lastEntryInArray":Lcom/google/protobuf/SmallSortedMap$Entry;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v4, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/protobuf/SmallSortedMap$Entry;-><init>(Lcom/google/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 250
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    move-object v1, p1

    .line 274
    check-cast v1, Ljava/lang/Comparable;

    .line 275
    .local v1, "key":Ljava/lang/Comparable;, "TK;"
    invoke-direct {p0, v1}, Lcom/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 276
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 277
    invoke-direct {p0, v0}, Lcom/google/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 284
    :goto_0
    return-object v2

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    const/4 v2, 0x0

    goto :goto_0

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 195
    .local p0, "this":Lcom/google/protobuf/SmallSortedMap;, "Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
