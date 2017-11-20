.class public Lcom/google/glass/async/ComparableDelayedFuture;
.super Lcom/google/glass/async/DelayedFuture;
.source "ComparableDelayedFuture.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/glass/async/DelayedFuture",
        "<TT;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/glass/async/ComparableDelayedFuture",
        "<TT;TV;>;>;"
    }
.end annotation


# instance fields
.field private final comparableObject:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            ">;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/google/glass/async/ComparableDelayedFuture;, "Lcom/google/glass/async/ComparableDelayedFuture<TT;TV;>;"
    .local p1, "serviceSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/util/concurrent/ListeningExecutorService;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .local p3, "comparableObject":Ljava/lang/Comparable;, "TV;"
    invoke-direct {p0, p1, p2}, Lcom/google/glass/async/DelayedFuture;-><init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)V

    .line 30
    iput-object p3, p0, Lcom/google/glass/async/ComparableDelayedFuture;->comparableObject:Ljava/lang/Comparable;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TT;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/google/glass/async/ComparableDelayedFuture;, "Lcom/google/glass/async/ComparableDelayedFuture<TT;TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TT;>;"
    .local p2, "comparableObject":Ljava/lang/Comparable;, "TV;"
    invoke-direct {p0, p1}, Lcom/google/glass/async/DelayedFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 35
    iput-object p2, p0, Lcom/google/glass/async/ComparableDelayedFuture;->comparableObject:Ljava/lang/Comparable;

    .line 36
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/glass/async/ComparableDelayedFuture;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/async/ComparableDelayedFuture",
            "<TT;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/google/glass/async/ComparableDelayedFuture;, "Lcom/google/glass/async/ComparableDelayedFuture<TT;TV;>;"
    .local p1, "another":Lcom/google/glass/async/ComparableDelayedFuture;, "Lcom/google/glass/async/ComparableDelayedFuture<TT;TV;>;"
    iget-object v0, p0, Lcom/google/glass/async/ComparableDelayedFuture;->comparableObject:Ljava/lang/Comparable;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, -0x1

    .line 52
    :goto_0
    return v0

    .line 49
    :cond_0
    iget-object v0, p1, Lcom/google/glass/async/ComparableDelayedFuture;->comparableObject:Ljava/lang/Comparable;

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/google/glass/async/ComparableDelayedFuture;->comparableObject:Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/google/glass/async/ComparableDelayedFuture;->comparableObject:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/google/glass/async/ComparableDelayedFuture;, "Lcom/google/glass/async/ComparableDelayedFuture<TT;TV;>;"
    check-cast p1, Lcom/google/glass/async/ComparableDelayedFuture;

    invoke-virtual {p0, p1}, Lcom/google/glass/async/ComparableDelayedFuture;->compareTo(Lcom/google/glass/async/ComparableDelayedFuture;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    .local p0, "this":Lcom/google/glass/async/ComparableDelayedFuture;, "Lcom/google/glass/async/ComparableDelayedFuture<TT;TV;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "comparableObject"

    iget-object v2, p0, Lcom/google/glass/async/ComparableDelayedFuture;->comparableObject:Ljava/lang/Comparable;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
