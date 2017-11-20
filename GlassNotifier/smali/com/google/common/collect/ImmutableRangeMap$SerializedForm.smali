.class Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableRangeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable",
        "<*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mapOfRanges:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;, "Lcom/google/common/collect/ImmutableRangeMap$SerializedForm<TK;TV;>;"
    .local p1, "mapOfRanges":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Lcom/google/common/collect/Range<TK;>;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;->mapOfRanges:Lcom/google/common/collect/ImmutableMap;

    .line 374
    return-void
.end method


# virtual methods
.method createRangeMap()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 385
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;, "Lcom/google/common/collect/ImmutableRangeMap$SerializedForm<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeMap$Builder;-><init>()V

    .line 386
    .local v0, "builder":Lcom/google/common/collect/ImmutableRangeMap$Builder;, "Lcom/google/common/collect/ImmutableRangeMap$Builder<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;->mapOfRanges:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 387
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$Builder;

    goto :goto_0

    .line 389
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;TV;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->build()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v2

    return-object v2
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 377
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;, "Lcom/google/common/collect/ImmutableRangeMap$SerializedForm<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;->mapOfRanges:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->of()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;->createRangeMap()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
