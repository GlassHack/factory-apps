.class Lcom/google/common/collect/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final b:Ljava/util/Collection;

.field final synthetic c:Lcom/google/common/collect/r;


# direct methods
.method constructor <init>(Lcom/google/common/collect/r;)V
    .locals 2

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/common/collect/s;->c:Lcom/google/common/collect/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iget-object v0, p0, Lcom/google/common/collect/s;->c:Lcom/google/common/collect/r;

    iget-object v0, v0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/s;->b:Ljava/util/Collection;

    .line 453
    iget-object v0, p1, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    iget-object v1, p1, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$100(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/s;->a:Ljava/util/Iterator;

    .line 454
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/r;Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/common/collect/s;->c:Lcom/google/common/collect/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iget-object v0, p0, Lcom/google/common/collect/s;->c:Lcom/google/common/collect/r;

    iget-object v0, v0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/common/collect/s;->b:Ljava/util/Collection;

    .line 457
    iput-object p2, p0, Lcom/google/common/collect/s;->a:Ljava/util/Iterator;

    .line 458
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/common/collect/s;->c:Lcom/google/common/collect/r;

    invoke-virtual {v0}, Lcom/google/common/collect/r;->a()V

    .line 466
    iget-object v0, p0, Lcom/google/common/collect/s;->c:Lcom/google/common/collect/r;

    iget-object v0, v0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/common/collect/s;->b:Ljava/util/Collection;

    if-eq v0, v1, :cond_0

    .line 467
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 469
    :cond_0
    return-void
.end method


# virtual methods
.method final a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/google/common/collect/s;->b()V

    .line 489
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/google/common/collect/s;->b()V

    .line 473
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/google/common/collect/s;->b()V

    .line 478
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/common/collect/s;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 483
    iget-object v0, p0, Lcom/google/common/collect/s;->c:Lcom/google/common/collect/r;

    iget-object v0, v0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 484
    iget-object v0, p0, Lcom/google/common/collect/s;->c:Lcom/google/common/collect/r;

    invoke-virtual {v0}, Lcom/google/common/collect/r;->b()V

    .line 485
    return-void
.end method
