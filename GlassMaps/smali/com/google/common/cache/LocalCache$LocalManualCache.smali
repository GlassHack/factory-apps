.class Lcom/google/common/cache/LocalCache$LocalManualCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/d;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final localCache:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CacheBuilder;)V
    .locals 2

    .prologue
    .line 4619
    new-instance v0, Lcom/google/common/cache/LocalCache;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/cache/LocalCache;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/LocalCache;)V

    .line 4620
    return-void
.end method

.method private constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0

    .prologue
    .line 4622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4623
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    .line 4624
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/cache/LocalCache;Lcom/google/common/cache/k;)V
    .locals 0

    .prologue
    .line 4615
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 4674
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    return-object v0
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 4687
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->n()V

    .line 4688
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4634
    invoke-static {p2}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4635
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    new-instance v1, Lcom/google/common/cache/x;

    invoke-direct {v1, p0, p2}, Lcom/google/common/cache/x;-><init>(Lcom/google/common/cache/LocalCache$LocalManualCache;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 4645
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 4657
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4658
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4659
    return-void
.end method

.method public invalidateAll()V
    .locals 1

    .prologue
    .line 4666
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->clear()V

    .line 4667
    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .locals 1

    .prologue
    .line 4662
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->c(Ljava/lang/Iterable;)V

    .line 4663
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4650
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 4653
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->putAll(Ljava/util/Map;)V

    .line 4654
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 4670
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lcom/google/common/cache/h;
    .locals 5

    .prologue
    .line 4678
    new-instance v1, Lcom/google/common/cache/b;

    invoke-direct {v1}, Lcom/google/common/cache/b;-><init>()V

    .line 4679
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-virtual {v1, v0}, Lcom/google/common/cache/b;->a(Lcom/google/common/cache/c;)V

    .line 4680
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    iget-object v2, v0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 4681
    iget-object v4, v4, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-virtual {v1, v4}, Lcom/google/common/cache/b;->a(Lcom/google/common/cache/c;)V

    .line 4680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4683
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/cache/b;->b()Lcom/google/common/cache/h;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4695
    new-instance v0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method
