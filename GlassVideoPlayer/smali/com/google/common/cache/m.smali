.class abstract Lcom/google/common/cache/m;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentMap;

.field final synthetic b:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    .prologue
    .line 4371
    iput-object p1, p0, Lcom/google/common/cache/m;->b:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4372
    iput-object p2, p0, Lcom/google/common/cache/m;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 4373
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 4387
    iget-object v0, p0, Lcom/google/common/cache/m;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 4388
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4382
    iget-object v0, p0, Lcom/google/common/cache/m;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4377
    iget-object v0, p0, Lcom/google/common/cache/m;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method
