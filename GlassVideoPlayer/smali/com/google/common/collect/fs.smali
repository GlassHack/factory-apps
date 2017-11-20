.class final Lcom/google/common/collect/fs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field c:Lcom/google/common/collect/fq;

.field d:Lcom/google/common/collect/fq;

.field e:Lcom/google/common/collect/fq;

.field final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/common/collect/fs;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p2, p0, Lcom/google/common/collect/fs;->a:Ljava/lang/Object;

    .line 456
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fl;

    .line 457
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    .line 458
    return-void

    .line 457
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/fl;->a:Lcom/google/common/collect/fq;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 469
    iput-object p1, p0, Lcom/google/common/collect/fs;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fl;

    .line 471
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 472
    :goto_0
    invoke-static {p3, v1}, Lcom/google/common/base/ah;->b(II)I

    .line 473
    div-int/lit8 v3, v1, 0x2

    if-lt p3, v3, :cond_2

    .line 474
    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/fs;->e:Lcom/google/common/collect/fq;

    .line 475
    iput v1, p0, Lcom/google/common/collect/fs;->b:I

    .line 476
    :goto_2
    add-int/lit8 v0, p3, 0x1

    if-ge p3, v1, :cond_4

    .line 477
    invoke-virtual {p0}, Lcom/google/common/collect/fs;->previous()Ljava/lang/Object;

    move p3, v0

    goto :goto_2

    .line 471
    :cond_0
    iget v1, v0, Lcom/google/common/collect/fl;->c:I

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/fl;->b:Lcom/google/common/collect/fq;

    goto :goto_1

    .line 480
    :cond_2
    if-nez v0, :cond_3

    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    .line 481
    :goto_4
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_4

    .line 482
    invoke-virtual {p0}, Lcom/google/common/collect/fs;->next()Ljava/lang/Object;

    move p3, v0

    goto :goto_4

    .line 480
    :cond_3
    iget-object v0, v0, Lcom/google/common/collect/fl;->a:Lcom/google/common/collect/fq;

    goto :goto_3

    .line 485
    :cond_4
    iput-object p2, p0, Lcom/google/common/collect/fs;->a:Ljava/lang/Object;

    .line 486
    iput-object v2, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    .line 487
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/collect/fs;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fs;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->access$700(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/fq;)Lcom/google/common/collect/fq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fs;->e:Lcom/google/common/collect/fq;

    .line 541
    iget v0, p0, Lcom/google/common/collect/fs;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fs;->b:I

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    .line 543
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/common/collect/fs;->e:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fs;->e:Lcom/google/common/collect/fq;

    .line 496
    iget-object v0, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    .line 497
    iget v0, p0, Lcom/google/common/collect/fs;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/fs;->b:I

    .line 498
    iget-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/google/common/collect/fs;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/common/collect/fs;->e:Lcom/google/common/collect/fq;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$300(Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/google/common/collect/fs;->e:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    .line 508
    iget-object v0, p0, Lcom/google/common/collect/fs;->e:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fs;->e:Lcom/google/common/collect/fq;

    .line 509
    iget v0, p0, Lcom/google/common/collect/fs;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fs;->b:I

    .line 510
    iget-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/google/common/collect/fs;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->b(Z)V

    .line 523
    iget-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    iget-object v1, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    if-eq v0, v1, :cond_1

    .line 524
    iget-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->f:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fs;->e:Lcom/google/common/collect/fq;

    .line 525
    iget v0, p0, Lcom/google/common/collect/fs;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/fs;->b:I

    .line 529
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/fs;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/fq;)V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    .line 531
    return-void

    .line 522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    iget-object v0, v0, Lcom/google/common/collect/fq;->e:Lcom/google/common/collect/fq;

    iput-object v0, p0, Lcom/google/common/collect/fs;->c:Lcom/google/common/collect/fq;

    goto :goto_1
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->b(Z)V

    .line 535
    iget-object v0, p0, Lcom/google/common/collect/fs;->d:Lcom/google/common/collect/fq;

    iput-object p1, v0, Lcom/google/common/collect/fq;->b:Ljava/lang/Object;

    .line 536
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
