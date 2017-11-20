.class public Lcom/google/common/collect/ImmutableMultimap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field builderMultimap:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->linkedHashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMultimap$Builder;-><init>(Lcom/google/common/collect/Multimap;)V

    .line 156
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Multimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "builderMultimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    .line 160
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMultimap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    iget-object v5, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    if-eqz v5, :cond_0

    .line 272
    iget-object v5, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v5}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    move-object v2, v4

    .line 273
    check-cast v2, Ljava/util/List;

    .line 274
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    iget-object v6, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 277
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .end local v4    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    iget-object v5, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    if-eqz v5, :cond_2

    .line 279
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->linkedHashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v3

    .line 280
    .local v3, "sortedCopy":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    iget-object v5, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    .line 281
    invoke-static {v5}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v5

    .line 282
    invoke-virtual {v5}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    move-result-object v5

    iget-object v6, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    .line 283
    invoke-interface {v6}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 284
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 285
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v3, v7, v5}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 287
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    :cond_1
    iput-object v3, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    .line 289
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    .end local v3    # "sortedCopy":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<TK;TV;>;"
    :cond_2
    iget-object v5, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    invoke-static {v5}, Lcom/google/common/collect/ImmutableMultimap;->copyOf(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v5

    return-object v5
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    .line 253
    return-object p0
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 264
    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    goto :goto_0

    .line 242
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    goto :goto_0

    .line 193
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    if-nez p1, :cond_1

    .line 206
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null key in entry: null="

    invoke-static {p2}, Lcom/google/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v3, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v2, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 209
    .local v1, "valueList":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    return-object v0
.end method
