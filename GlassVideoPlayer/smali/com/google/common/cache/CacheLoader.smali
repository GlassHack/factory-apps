.class public abstract Lcom/google/common/cache/CacheLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/google/common/base/av;)Lcom/google/common/cache/CacheLoader;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/google/common/cache/CacheLoader$SupplierToCacheLoader;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CacheLoader$SupplierToCacheLoader;-><init>(Lcom/google/common/base/av;)V

    return-object v0
.end method

.method public static from(Lcom/google/common/base/v;)Lcom/google/common/cache/CacheLoader;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/google/common/cache/CacheLoader$FunctionToCacheLoader;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CacheLoader$FunctionToCacheLoader;-><init>(Lcom/google/common/base/v;)V

    return-object v0
.end method


# virtual methods
.method public abstract load(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;

    invoke-direct {v0}, Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;-><init>()V

    throw v0
.end method

.method public reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;
    .locals 1

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p2}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/f;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/m;

    move-result-object v0

    return-object v0
.end method
