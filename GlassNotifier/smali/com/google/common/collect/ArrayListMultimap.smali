.class public final Lcom/google/common/collect/ArrayListMultimap;
.super Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;
.source "ArrayListMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUES_PER_KEY:I = 0x3

.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field transient expectedValuesPerKey:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;-><init>(Ljava/util/Map;)V

    .line 113
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    .line 114
    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .param p1, "expectedKeys"    # I
    .param p2, "expectedValuesPerKey"    # I

    .prologue
    .line 117
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;-><init>(Ljava/util/Map;)V

    .line 118
    const-string v0, "expectedValuesPerKey"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 119
    iput p2, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    .line 120
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/Multimap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .line 124
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    instance-of v0, p1, Lcom/google/common/collect/ArrayListMultimap;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 126
    check-cast v0, Lcom/google/common/collect/ArrayListMultimap;

    iget v0, v0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    .line 123
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/ArrayListMultimap;-><init>(II)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayListMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 129
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static create()Lcom/google/common/collect/ArrayListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ArrayListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ArrayListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/ArrayListMultimap;
    .locals 1
    .param p0, "expectedKeys"    # I
    .param p1, "expectedValuesPerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/ArrayListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayListMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ArrayListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ArrayListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ArrayListMultimap;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 170
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    .line 171
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 172
    .local v0, "distinctKeys":I
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 173
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ArrayListMultimap;->setMap(Ljava/util/Map;)V

    .line 174
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;I)V

    .line 175
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 164
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 165
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayListMultimap;->createCollection()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method createCollection()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/common/collect/ArrayListMultimap;->expectedValuesPerKey:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->entries()Ljava/util/Collection;

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
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayListMultimap;->backingMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    move-object v0, v1

    .line 151
    check-cast v0, Ljava/util/ArrayList;

    .line 152
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    goto :goto_0

    .line 154
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TV;>;"
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    return-void
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/ArrayListMultimap;, "Lcom/google/common/collect/ArrayListMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/ArrayListMultimapGwtSerializationDependencies;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
