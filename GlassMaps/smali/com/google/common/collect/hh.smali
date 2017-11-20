.class abstract Lcom/google/common/collect/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field f:Lcom/google/common/collect/hk;

.field g:Lcom/google/common/collect/hz;

.field h:Lcom/google/common/collect/hz;

.field final synthetic i:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 1

    .prologue
    .line 3494
    iput-object p1, p0, Lcom/google/common/collect/hh;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3495
    iget-object v0, p1, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/hh;->b:I

    .line 3496
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/hh;->c:I

    .line 3497
    invoke-direct {p0}, Lcom/google/common/collect/hh;->b()V

    .line 3498
    return-void
.end method

.method private a(Lcom/google/common/collect/hk;)Z
    .locals 4

    .prologue
    .line 3559
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/hk;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3560
    iget-object v1, p0, Lcom/google/common/collect/hh;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->getLiveValue(Lcom/google/common/collect/hk;)Ljava/lang/Object;

    move-result-object v1

    .line 3561
    if-eqz v1, :cond_0

    .line 3562
    new-instance v2, Lcom/google/common/collect/hz;

    iget-object v3, p0, Lcom/google/common/collect/hh;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/common/collect/hz;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/hh;->g:Lcom/google/common/collect/hz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3563
    const/4 v0, 0x1

    .line 3569
    iget-object v1, p0, Lcom/google/common/collect/hh;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    :goto_0
    return v0

    .line 3566
    :cond_0
    const/4 v0, 0x0

    .line 3569
    iget-object v1, p0, Lcom/google/common/collect/hh;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/hh;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 3503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/hh;->g:Lcom/google/common/collect/hz;

    .line 3505
    invoke-direct {p0}, Lcom/google/common/collect/hh;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3523
    :cond_0
    :goto_0
    return-void

    .line 3509
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/hh;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3513
    :cond_2
    iget v0, p0, Lcom/google/common/collect/hh;->b:I

    if-ltz v0, :cond_0

    .line 3514
    iget-object v0, p0, Lcom/google/common/collect/hh;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/hh;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/hh;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/hh;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 3515
    iget-object v0, p0, Lcom/google/common/collect/hh;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2

    .line 3516
    iget-object v0, p0, Lcom/google/common/collect/hh;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/hh;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3517
    iget-object v0, p0, Lcom/google/common/collect/hh;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/hh;->c:I

    .line 3518
    invoke-direct {p0}, Lcom/google/common/collect/hh;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/google/common/collect/hh;->f:Lcom/google/common/collect/hk;

    if-eqz v0, :cond_1

    .line 3530
    iget-object v0, p0, Lcom/google/common/collect/hh;->f:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNext()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hh;->f:Lcom/google/common/collect/hk;

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/hh;->f:Lcom/google/common/collect/hk;

    if-eqz v0, :cond_1

    .line 3531
    iget-object v0, p0, Lcom/google/common/collect/hh;->f:Lcom/google/common/collect/hk;

    invoke-direct {p0, v0}, Lcom/google/common/collect/hh;->a(Lcom/google/common/collect/hk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3532
    const/4 v0, 0x1

    .line 3536
    :goto_1
    return v0

    .line 3530
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/hh;->f:Lcom/google/common/collect/hk;

    invoke-interface {v0}, Lcom/google/common/collect/hk;->getNext()Lcom/google/common/collect/hk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/hh;->f:Lcom/google/common/collect/hk;

    goto :goto_0

    .line 3536
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 3543
    :cond_0
    iget v0, p0, Lcom/google/common/collect/hh;->c:I

    if-ltz v0, :cond_2

    .line 3544
    iget-object v0, p0, Lcom/google/common/collect/hh;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/hh;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/hh;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/hk;

    iput-object v0, p0, Lcom/google/common/collect/hh;->f:Lcom/google/common/collect/hk;

    if-eqz v0, :cond_0

    .line 3545
    iget-object v0, p0, Lcom/google/common/collect/hh;->f:Lcom/google/common/collect/hk;

    invoke-direct {p0, v0}, Lcom/google/common/collect/hh;->a(Lcom/google/common/collect/hk;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/common/collect/hh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3546
    :cond_1
    const/4 v0, 0x1

    .line 3550
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/common/collect/hz;
    .locals 1

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/google/common/collect/hh;->g:Lcom/google/common/collect/hz;

    if-nez v0, :cond_0

    .line 3579
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3581
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/hh;->g:Lcom/google/common/collect/hz;

    iput-object v0, p0, Lcom/google/common/collect/hh;->h:Lcom/google/common/collect/hz;

    .line 3582
    invoke-direct {p0}, Lcom/google/common/collect/hh;->b()V

    .line 3583
    iget-object v0, p0, Lcom/google/common/collect/hh;->h:Lcom/google/common/collect/hz;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/google/common/collect/hh;->g:Lcom/google/common/collect/hz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3587
    iget-object v0, p0, Lcom/google/common/collect/hh;->h:Lcom/google/common/collect/hz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ai;->b(Z)V

    .line 3588
    iget-object v0, p0, Lcom/google/common/collect/hh;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/hh;->h:Lcom/google/common/collect/hz;

    invoke-virtual {v1}, Lcom/google/common/collect/hz;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/hh;->h:Lcom/google/common/collect/hz;

    .line 3590
    return-void

    .line 3587
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
