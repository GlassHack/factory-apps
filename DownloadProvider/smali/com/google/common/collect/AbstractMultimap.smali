.class abstract Lcom/google/common/collect/AbstractMultimap;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMultimap$SortedAsMap;,
        Lcom/google/common/collect/AbstractMultimap$AsMap;,
        Lcom/google/common/collect/AbstractMultimap$SortedKeySet;,
        Lcom/google/common/collect/AbstractMultimap$KeySet;,
        Lcom/google/common/collect/AbstractMultimap$RandomAccessWrappedList;,
        Lcom/google/common/collect/AbstractMultimap$WrappedList;,
        Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;,
        Lcom/google/common/collect/AbstractMultimap$WrappedSet;,
        Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Multimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient totalSize:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 120
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMultimap;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMultimap;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$208(Lcom/google/common/collect/AbstractMultimap;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMultimap;

    .prologue
    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$210(Lcom/google/common/collect/AbstractMultimap;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMultimap;

    .prologue
    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$212(Lcom/google/common/collect/AbstractMultimap;I)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMultimap;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$220(Lcom/google/common/collect/AbstractMultimap;I)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMultimap;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMultimap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMultimap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/AbstractMultimap;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->removeValuesForKey(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1162
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 871
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$KeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$KeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private getOrCreateCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 213
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    return-object v0
.end method

.method private iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    .end local p1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method private removeValuesForKey(Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1012
    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1019
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    .line 1020
    .local v1, "count":I
    if-eqz v0, :cond_0

    .line 1021
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1022
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1023
    iget v3, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    .line 1025
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v1    # "count":I
    :cond_0
    :goto_0
    return v1

    .line 1013
    :catch_0
    move-exception v2

    .line 1014
    .local v2, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 1015
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1016
    .local v2, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method private wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    .line 364
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;

    check-cast p2, Ljava/util/SortedSet;

    .end local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    .line 371
    :goto_0
    return-object v0

    .line 366
    .restart local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 367
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedSet;

    check-cast p2, Ljava/util/Set;

    .end local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap$WrappedSet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    .line 368
    .restart local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 369
    check-cast p2, Ljava/util/List;

    .end local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 371
    .restart local p2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_2
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    goto :goto_0
.end method

.method private wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lcom/google/common/collect/AbstractMultimap",
            "<TK;TV;>.WrappedCollection;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .local p3, "ancestor":Lcom/google/common/collect/AbstractMultimap$WrappedCollection;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedCollection;"
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$RandomAccessWrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultimap$RandomAccessWrappedList;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$WrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultimap$WrappedList;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    goto :goto_0
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1157
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    .line 1158
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;->createAsMap()Ljava/util/Map;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 334
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 335
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 337
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 338
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    .line 339
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 177
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1352
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 1353
    const/4 v1, 0x1

    .line 1359
    :goto_0
    return v1

    .line 1355
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/Multimap;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 1356
    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 1357
    .local v0, "that":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<**>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1359
    .end local v0    # "that":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<**>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 351
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 354
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1371
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    .line 867
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->getOrCreateCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 203
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget v1, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    .line 205
    const/4 v1, 0x1

    .line 207
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final setMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    const/4 v3, 0x0

    .line 125
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    .line 126
    iput v3, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    .line 127
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 128
    .local v1, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 129
    iget v2, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    goto :goto_0

    :cond_0
    move v2, v3

    .line 128
    goto :goto_1

    .line 131
    .end local v1    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1382
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
