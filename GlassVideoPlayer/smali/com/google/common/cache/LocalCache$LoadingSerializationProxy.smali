.class final Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;
.super Lcom/google/common/cache/LocalCache$ManualSerializationProxy;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/j;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient autoDelegate:Lcom/google/common/cache/j;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0

    .prologue
    .line 4581
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lcom/google/common/cache/LocalCache;)V

    .line 4582
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 4585
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4586
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;->recreateCacheBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4587
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;->loader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lcom/google/common/cache/j;

    .line 4588
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4611
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lcom/google/common/cache/j;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4603
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lcom/google/common/cache/j;

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4591
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lcom/google/common/cache/j;

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 4599
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lcom/google/common/cache/j;

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->getAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4595
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lcom/google/common/cache/j;

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final refresh(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 4607
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lcom/google/common/cache/j;

    invoke-interface {v0, p1}, Lcom/google/common/cache/j;->refresh(Ljava/lang/Object;)V

    .line 4608
    return-void
.end method
