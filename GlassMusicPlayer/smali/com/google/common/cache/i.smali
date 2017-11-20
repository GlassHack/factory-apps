.class public abstract Lcom/google/common/cache/i;
.super Lcom/google/common/collect/co;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/d;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/co;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/d;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/d;->cleanUp()V

    .line 119
    return-void
.end method

.method protected abstract delegate()Lcom/google/common/cache/d;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/d;->get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->invalidate(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public invalidateAll()V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/d;->invalidateAll()V

    .line 103
    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->invalidateAll(Ljava/lang/Iterable;)V

    .line 99
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/d;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->putAll(Ljava/util/Map;)V

    .line 87
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/d;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lcom/google/common/cache/h;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/d;->stats()Lcom/google/common/cache/h;

    move-result-object v0

    return-object v0
.end method
