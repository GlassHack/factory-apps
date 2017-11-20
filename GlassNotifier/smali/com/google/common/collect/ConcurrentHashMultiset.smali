.class public final Lcom/google/common/collect/ConcurrentHashMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "ConcurrentHashMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;,
        Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient countMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, "countMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 127
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    const-string v1, "the backing map (%s) must be empty"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 128
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ConcurrentHashMultiset;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ConcurrentHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ConcurrentHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/ConcurrentHashMultiset;->create()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    .line 102
    .local v0, "multiset":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 103
    return-object v0
.end method

.method public static create(Ljava/util/concurrent/ConcurrentMap;)Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)",
            "Lcom/google/common/collect/ConcurrentHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "countMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ConcurrentHashMultiset;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 585
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 588
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 589
    .local v0, "deserializedCountMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TE;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;->COUNT_MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 590
    return-void
.end method

.method private snapshot()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 181
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 182
    .local v1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 184
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 187
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    .end local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 581
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 582
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 8
    .param p2, "occurrences"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x0

    .line 204
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    if-nez p2, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 240
    :goto_0
    return v3

    .line 208
    :cond_0
    const-string v6, "occurences"

    invoke-static {p2, v6}, Lcom/google/common/collect/CollectPreconditions;->checkPositive(ILjava/lang/String;)V

    .line 211
    :cond_1
    iget-object v6, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v6, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 212
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_2

    .line 213
    iget-object v6, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v6, p1, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 214
    .restart local v0    # "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_2

    move v3, v5

    .line 215
    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 222
    .local v3, "oldValue":I
    if-eqz v3, :cond_3

    .line 224
    :try_start_0
    invoke-static {v3, p2}, Lcom/google/common/math/IntMath;->checkedAdd(II)I

    move-result v2

    .line 225
    .local v2, "newValue":I
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 229
    .end local v2    # "newValue":I
    :catch_0
    move-exception v4

    .line 230
    .local v4, "overflow":Ljava/lang/ArithmeticException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const/16 v6, 0x41

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Overflow adding "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " occurrences to a count of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 237
    .end local v4    # "overflow":Ljava/lang/ArithmeticException;
    :cond_3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 238
    .local v1, "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v6, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 239
    invoke-interface {v6, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_4
    move v3, v5

    .line 240
    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 543
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 544
    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 141
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 142
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    goto :goto_0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 451
    .local v0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$1;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V

    return-object v1
.end method

.method public createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset$EntrySet;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V

    return-object v0
.end method

.method distinctElements()I
    .locals 1

    .prologue
    .line 486
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ConcurrentHashMultiset$2;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    .line 518
    .local v0, "readOnlyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    new-instance v1, Lcom/google/common/collect/ConcurrentHashMultiset$3;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConcurrentHashMultiset$3;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 491
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const/4 v3, 0x0

    .line 271
    if-nez p2, :cond_1

    .line 272
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 293
    :cond_0
    :goto_0
    return v2

    .line 274
    :cond_1
    const-string v4, "occurences"

    invoke-static {p2, v4}, Lcom/google/common/collect/CollectPreconditions;->checkPositive(ILjava/lang/String;)V

    .line 276
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 277
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_2

    move v2, v3

    .line 278
    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 282
    .local v2, "oldValue":I
    if-eqz v2, :cond_3

    .line 283
    sub-int v4, v2, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 284
    .local v1, "newValue":I
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    if-nez v1, :cond_0

    .line 288
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "newValue":I
    :cond_3
    move v2, v3

    .line 293
    goto :goto_0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeExactly(Ljava/lang/Object;I)Z
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    if-nez p2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v3

    .line 315
    :cond_1
    const-string v5, "occurences"

    invoke-static {p2, v5}, Lcom/google/common/collect/CollectPreconditions;->checkPositive(ILjava/lang/String;)V

    .line 317
    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v5, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 318
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_2

    move v3, v4

    .line 319
    goto :goto_0

    .line 322
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 323
    .local v2, "oldValue":I
    if-ge v2, p2, :cond_3

    move v3, v4

    .line 324
    goto :goto_0

    .line 326
    :cond_3
    sub-int v1, v2, p2

    .line 327
    .local v1, "newValue":I
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 328
    if-nez v1, :cond_0

    .line 331
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 6
    .param p2, "count"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    .line 348
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v4, "count"

    invoke-static {p2, v4}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 351
    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v4, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 352
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_3

    .line 353
    if-nez p2, :cond_2

    move v2, v3

    .line 384
    :cond_1
    :goto_0
    return v2

    .line 356
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v4, p1, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 357
    .restart local v0    # "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_3

    move v2, v3

    .line 358
    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 366
    .local v2, "oldValue":I
    if-nez v2, :cond_6

    .line 367
    if-nez p2, :cond_4

    move v2, v3

    .line 368
    goto :goto_0

    .line 370
    :cond_4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 371
    .local v1, "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 372
    invoke-interface {v4, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    move v2, v3

    .line 373
    goto :goto_0

    .line 378
    .end local v1    # "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_6
    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 379
    if-nez p2, :cond_1

    .line 382
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 7
    .param p2, "expectedOldCount"    # I
    .param p3, "newCount"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 405
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v5, "oldCount"

    invoke-static {p2, v5}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 407
    const-string v5, "newCount"

    invoke-static {p3, v5}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 409
    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v5, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 410
    .local v0, "existingCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_2

    .line 411
    if-eqz p2, :cond_1

    move v3, v4

    .line 443
    :cond_0
    :goto_0
    return v3

    .line 413
    :cond_1
    if-eqz p3, :cond_0

    .line 417
    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v5, p1, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 421
    .local v2, "oldValue":I
    if-ne v2, p2, :cond_7

    .line 422
    if-nez v2, :cond_6

    .line 423
    if-nez p3, :cond_3

    .line 425
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 429
    .local v1, "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 430
    invoke-interface {v5, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v4, v3

    :cond_5
    move v3, v4

    .line 429
    goto :goto_0

    .line 433
    .end local v1    # "newCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_6
    invoke-virtual {v0, v2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 434
    if-nez p3, :cond_0

    .line 437
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    move v3, v4

    .line 443
    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 153
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    const-wide/16 v0, 0x0

    .line 154
    .local v0, "sum":J
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 155
    .local v2, "value":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 156
    goto :goto_0

    .line 157
    .end local v2    # "value":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    return v3
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/ConcurrentHashMultiset;, "Lcom/google/common/collect/ConcurrentHashMultiset<TE;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
