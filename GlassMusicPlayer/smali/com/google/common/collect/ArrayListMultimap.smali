.class public final Lcom/google/common/collect/ArrayListMultimap;
.super Lcom/google/common/collect/AbstractListMultimap;
.source "SourceFile"


# static fields
.field private static final DEFAULT_VALUES_PER_KEY:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field transient expectedValuesPerKey:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractListMultimap;-><init>(Ljava/util/Map;)V

    .line 107
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    .line 108
    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .prologue
    .line 111
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractListMultimap;-><init>(Ljava/util/Map;)V

    .line 112
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    .line 113
    iput p2, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    .line 114
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/common/collect/jt;)V
    .locals 2

    .prologue
    .line 117
    invoke-interface {p1}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    instance-of v0, p1, Lcom/google/common/collect/ArrayListMultimap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ArrayListMultimap;

    iget v0, v0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/ArrayListMultimap;-><init>(II)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayListMultimap;->putAll(Lcom/google/common/collect/jt;)Z

    .line 122
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static create()Lcom/google/common/collect/ArrayListMultimap;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ArrayListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/ArrayListMultimap;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayListMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/jt;)Lcom/google/common/collect/ArrayListMultimap;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ArrayListMultimap;-><init>(Lcom/google/common/collect/jt;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 158
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    .line 159
    invoke-static {p1}, Lcom/google/common/collect/lt;->a(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 160
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 161
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ArrayListMultimap;->setMap(Ljava/util/Map;)V

    .line 162
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/jt;Ljava/io/ObjectInputStream;I)V

    .line 163
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 151
    iget v0, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 152
    invoke-static {p0, p1}, Lcom/google/common/collect/lt;->a(Lcom/google/common/collect/jt;Ljava/io/ObjectOutputStream;)V

    .line 153
    return-void
.end method


# virtual methods
.method public final bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->clear()V

    return-void
.end method

.method public final bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractListMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayListMultimap;->createCollection()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final createCollection()Ljava/util/List;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public final bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keys()Lcom/google/common/collect/kp;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->keys()Lcom/google/common/collect/kp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic putAll(Lcom/google/common/collect/jt;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->putAll(Lcom/google/common/collect/jt;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractListMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractListMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic size()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimToSize()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayListMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 138
    check-cast v0, Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/common/collect/AbstractListMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
