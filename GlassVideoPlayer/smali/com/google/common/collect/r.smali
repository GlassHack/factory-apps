.class Lcom/google/common/collect/r;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final b:Ljava/lang/Object;

.field c:Ljava/util/Collection;

.field final d:Lcom/google/common/collect/r;

.field final e:Ljava/util/Collection;

.field final synthetic f:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/r;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/common/collect/r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/google/common/collect/r;->b:Ljava/lang/Object;

    .line 353
    iput-object p3, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    .line 354
    iput-object p4, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/r;

    .line 355
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/r;->e:Ljava/util/Collection;

    .line 356
    return-void

    .line 355
    :cond_0
    invoke-virtual {p4}, Lcom/google/common/collect/r;->e()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/r;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/r;

    invoke-virtual {v0}, Lcom/google/common/collect/r;->a()V

    .line 368
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/r;

    invoke-virtual {v0}, Lcom/google/common/collect/r;->e()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/r;->e:Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    .line 369
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/r;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 373
    if-eqz v0, :cond_1

    .line 374
    iput-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    .line 377
    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/common/collect/r;->a()V

    .line 496
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 497
    iget-object v1, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 498
    if-eqz v1, :cond_0

    .line 499
    iget-object v2, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$208(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 500
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/google/common/collect/r;->d()V

    .line 504
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 515
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    const/4 v0, 0x0

    .line 527
    :cond_0
    :goto_0
    return v0

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/r;->size()I

    move-result v1

    .line 519
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    iget-object v2, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 522
    iget-object v3, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 523
    if-nez v1, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/google/common/collect/r;->d()V

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/r;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/r;

    invoke-virtual {v0}, Lcom/google/common/collect/r;->b()V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/r;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/common/collect/r;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/google/common/collect/r;->size()I

    move-result v0

    .line 545
    if-nez v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 549
    iget-object v1, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 550
    invoke-virtual {p0}, Lcom/google/common/collect/r;->b()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/common/collect/r;->a()V

    .line 533
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/google/common/collect/r;->a()V

    .line 539
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method final d()V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/r;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/r;

    invoke-virtual {v0}, Lcom/google/common/collect/r;->d()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/r;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final e()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 418
    if-ne p1, p0, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/r;->a()V

    .line 422
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method final f()Lcom/google/common/collect/r;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/r;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/google/common/collect/r;->a()V

    .line 428
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/google/common/collect/r;->a()V

    .line 444
    new-instance v0, Lcom/google/common/collect/s;

    invoke-direct {v0, p0}, Lcom/google/common/collect/s;-><init>(Lcom/google/common/collect/r;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/common/collect/r;->a()V

    .line 556
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 557
    if-eqz v0, :cond_0

    .line 558
    iget-object v1, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 559
    invoke-virtual {p0}, Lcom/google/common/collect/r;->b()V

    .line 561
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 566
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    const/4 v0, 0x0

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/r;->size()I

    move-result v1

    .line 570
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 571
    if-eqz v0, :cond_0

    .line 572
    iget-object v2, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 573
    iget-object v3, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 574
    invoke-virtual {p0}, Lcom/google/common/collect/r;->b()V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 581
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {p0}, Lcom/google/common/collect/r;->size()I

    move-result v0

    .line 583
    iget-object v1, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 584
    if-eqz v1, :cond_0

    .line 585
    iget-object v2, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 586
    iget-object v3, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/AbstractMapBasedMultimap;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 587
    invoke-virtual {p0}, Lcom/google/common/collect/r;->b()V

    .line 589
    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/google/common/collect/r;->a()V

    .line 413
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/common/collect/r;->a()V

    .line 434
    iget-object v0, p0, Lcom/google/common/collect/r;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
