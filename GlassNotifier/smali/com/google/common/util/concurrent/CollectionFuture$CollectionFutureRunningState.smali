.class abstract Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;
.super Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CollectionFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CollectionFutureRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AggregateFuture",
        "<TV;TC;>.RunningState;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/CollectionFuture;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Optional",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/CollectionFuture;Lcom/google/common/collect/ImmutableCollection;Z)V
    .locals 3
    .param p1, "this$0"    # Lcom/google/common/util/concurrent/CollectionFuture;
    .param p3, "allMustSucceed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;, "Lcom/google/common/util/concurrent/CollectionFuture<TV;TC;>.CollectionFutureRunningState;"
    .local p2, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CollectionFuture;

    .line 41
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 44
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 46
    :goto_0
    iput-object v1, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 52
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method final collectOneValue(ZILjava/lang/Object;)V
    .locals 3
    .param p1, "allMustSucceed"    # Z
    .param p2, "index"    # I
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITV;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;, "Lcom/google/common/util/concurrent/CollectionFuture<TV;TC;>.CollectionFutureRunningState;"
    .local p3, "returnValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    .line 58
    .local v0, "localValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/base/Optional<TV;>;>;"
    if-eqz v0, :cond_0

    .line 59
    invoke-static {p3}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CollectionFuture;

    .line 65
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/CollectionFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Future was done before all dependencies completed"

    .line 64
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method abstract combine(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Optional",
            "<TV;>;>;)TC;"
        }
    .end annotation
.end method

.method final handleAllCompleted()V
    .locals 3

    .prologue
    .line 71
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;, "Lcom/google/common/util/concurrent/CollectionFuture<TV;TC;>.CollectionFutureRunningState;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    .line 72
    .local v0, "localValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/base/Optional<TV;>;>;"
    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CollectionFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/CollectionFuture;->set(Ljava/lang/Object;)Z

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CollectionFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/CollectionFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0
.end method

.method releaseResourcesAfterFailure()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;, "Lcom/google/common/util/concurrent/CollectionFuture<TV;TC;>.CollectionFutureRunningState;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->releaseResourcesAfterFailure()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    .line 83
    return-void
.end method
