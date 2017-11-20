.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "SourceFile"


# static fields
.field private static final DEFAULT_KEY_CAPACITY:I = 0x10

.field private static final DEFAULT_VALUE_SET_CAPACITY:I = 0x2

.field static final VALUE_SET_LOAD_FACTOR:D = 1.0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient multimapHeaderEntry:Lcom/google/common/collect/ew;

.field transient valueSetCapacity:I


# direct methods
.method private constructor <init>(II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 230
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 225
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    .line 232
    if-ltz p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expectedValuesPerKey must be >= 0 but was %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iput p2, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    .line 236
    new-instance v0, Lcom/google/common/collect/ew;

    invoke-direct {v0, v5, v5, v2, v5}, Lcom/google/common/collect/ew;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/ew;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/ew;

    .line 237
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/ew;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/ew;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/ew;Lcom/google/common/collect/ew;)V

    .line 238
    return-void

    :cond_0
    move v0, v2

    .line 232
    goto :goto_0
.end method

.method static synthetic access$200(Lcom/google/common/collect/ez;)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->deleteFromValueSet(Lcom/google/common/collect/ez;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/collect/ew;)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->deleteFromMultimap(Lcom/google/common/collect/ew;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/collect/ez;Lcom/google/common/collect/ez;)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/ez;Lcom/google/common/collect/ez;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/ew;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/ew;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/ew;Lcom/google/common/collect/ew;)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/ew;Lcom/google/common/collect/ew;)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultimap;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/LinkedHashMultimap;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/jt;)Lcom/google/common/collect/LinkedHashMultimap;
    .locals 2

    .prologue
    .line 115
    invoke-interface {p0}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->create(II)Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->putAll(Lcom/google/common/collect/jt;)Z

    .line 117
    return-object v0
.end method

.method private static deleteFromMultimap(Lcom/google/common/collect/ew;)V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/common/collect/ew;->c()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/ew;->d()Lcom/google/common/collect/ew;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/ew;Lcom/google/common/collect/ew;)V

    .line 146
    return-void
.end method

.method private static deleteFromValueSet(Lcom/google/common/collect/ez;)V
    .locals 2

    .prologue
    .line 141
    invoke-interface {p0}, Lcom/google/common/collect/ez;->a()Lcom/google/common/collect/ez;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/ez;->b()Lcom/google/common/collect/ez;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInValueSet(Lcom/google/common/collect/ez;Lcom/google/common/collect/ez;)V

    .line 142
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 566
    new-instance v1, Lcom/google/common/collect/ew;

    invoke-direct {v1, v2, v2, v0, v2}, Lcom/google/common/collect/ew;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/ew;)V

    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/ew;

    .line 567
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/ew;

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/ew;

    invoke-static {v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/ew;Lcom/google/common/collect/ew;)V

    .line 568
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    .line 569
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 570
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v1, v0

    .line 571
    :goto_0
    if-ge v1, v2, :cond_0

    .line 573
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 574
    invoke-virtual {p0, v4}, Lcom/google/common/collect/LinkedHashMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    move v1, v0

    .line 577
    :goto_1
    if-ge v1, v2, :cond_1

    .line 579
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 581
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 582
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 584
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/common/collect/LinkedHashMultimap;->setMap(Ljava/util/Map;)V

    .line 585
    return-void
.end method

.method private static succeedsInMultimap(Lcom/google/common/collect/ew;Lcom/google/common/collect/ew;)V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ew;->a(Lcom/google/common/collect/ew;)V

    .line 137
    invoke-virtual {p1, p0}, Lcom/google/common/collect/ew;->b(Lcom/google/common/collect/ew;)V

    .line 138
    return-void
.end method

.method private static succeedsInValueSet(Lcom/google/common/collect/ez;Lcom/google/common/collect/ez;)V
    .locals 0

    .prologue
    .line 131
    invoke-interface {p0, p1}, Lcom/google/common/collect/ez;->b(Lcom/google/common/collect/ez;)V

    .line 132
    invoke-interface {p1, p0}, Lcom/google/common/collect/ez;->a(Lcom/google/common/collect/ez;)V

    .line 133
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    .line 550
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 551
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 552
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 553
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 554
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 557
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 558
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 559
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 561
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 540
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->clear()V

    .line 541
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/ew;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/ew;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->succeedsInMultimap(Lcom/google/common/collect/ew;Lcom/google/common/collect/ew;)V

    .line 542
    return-void
.end method

.method public final bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Lcom/google/common/collect/ex;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/ex;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method final createCollection()Ljava/util/Set;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/util/LinkedHashSet;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->valueSetCapacity:I

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public final bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 512
    new-instance v0, Lcom/google/common/collect/ev;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ev;-><init>(Lcom/google/common/collect/LinkedHashMultimap;)V

    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keys()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keys()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic putAll(Lcom/google/common/collect/jt;)Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->putAll(Lcom/google/common/collect/jt;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedHashMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic size()I
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
