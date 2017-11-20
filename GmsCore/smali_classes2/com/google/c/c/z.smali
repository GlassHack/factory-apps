.class Lcom/google/c/c/z;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final b:Ljava/lang/Object;

.field c:Ljava/util/Collection;

.field final d:Lcom/google/c/c/z;

.field final e:Ljava/util/Collection;

.field final synthetic f:Lcom/google/c/c/m;


# direct methods
.method constructor <init>(Lcom/google/c/c/m;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/c/c/z;)V
    .locals 1

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 407
    iput-object p2, p0, Lcom/google/c/c/z;->b:Ljava/lang/Object;

    .line 408
    iput-object p3, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    .line 409
    iput-object p4, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    .line 410
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/c/c/z;->e:Ljava/util/Collection;

    .line 412
    return-void

    .line 410
    :cond_0
    iget-object v0, p4, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    invoke-virtual {v0}, Lcom/google/c/c/z;->a()V

    .line 424
    iget-object v0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    iget-object v0, v0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/c/c/z;->e:Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    .line 425
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    invoke-static {v0}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/z;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 429
    if-eqz v0, :cond_1

    .line 430
    iput-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    .line 433
    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/google/c/c/z;->a()V

    .line 549
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 550
    iget-object v1, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 551
    if-eqz v1, :cond_0

    .line 552
    iget-object v2, p0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    invoke-static {v2}, Lcom/google/c/c/m;->c(Lcom/google/c/c/m;)I

    .line 553
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/google/c/c/z;->c()V

    .line 557
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 567
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    const/4 v0, 0x0

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/google/c/c/z;->size()I

    move-result v1

    .line 571
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    iget-object v2, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 574
    iget-object v3, p0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;I)I

    .line 575
    if-nez v1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/google/c/c/z;->c()V

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 440
    :goto_0
    iget-object v0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    if-eqz v0, :cond_0

    .line 441
    iget-object p0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    invoke-static {v0}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/z;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_1
    return-void
.end method

.method final c()V
    .locals 3

    .prologue
    .line 459
    :goto_0
    iget-object v0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    if-eqz v0, :cond_0

    .line 460
    iget-object p0, p0, Lcom/google/c/c/z;->d:Lcom/google/c/c/z;

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    invoke-static {v0}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/z;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/google/c/c/z;->size()I

    move-result v0

    .line 594
    if-nez v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 598
    iget-object v1, p0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    invoke-static {v1, v0}, Lcom/google/c/c/m;->b(Lcom/google/c/c/m;I)I

    .line 599
    invoke-virtual {p0}, Lcom/google/c/c/z;->b()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/c/c/z;->a()V

    .line 584
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/google/c/c/z;->a()V

    .line 589
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 472
    if-ne p1, p0, :cond_0

    .line 473
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/google/c/c/z;->a()V

    .line 476
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/google/c/c/z;->a()V

    .line 481
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/google/c/c/z;->a()V

    .line 495
    new-instance v0, Lcom/google/c/c/aa;

    invoke-direct {v0, p0}, Lcom/google/c/c/aa;-><init>(Lcom/google/c/c/z;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/google/c/c/z;->a()V

    .line 604
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 605
    if-eqz v0, :cond_0

    .line 606
    iget-object v1, p0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    invoke-static {v1}, Lcom/google/c/c/m;->b(Lcom/google/c/c/m;)I

    .line 607
    invoke-virtual {p0}, Lcom/google/c/c/z;->b()V

    .line 609
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 613
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    const/4 v0, 0x0

    .line 623
    :cond_0
    :goto_0
    return v0

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/google/c/c/z;->size()I

    move-result v1

    .line 617
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 618
    if-eqz v0, :cond_0

    .line 619
    iget-object v2, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 620
    iget-object v3, p0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;I)I

    .line 621
    invoke-virtual {p0}, Lcom/google/c/c/z;->b()V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 627
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {p0}, Lcom/google/c/c/z;->size()I

    move-result v0

    .line 629
    iget-object v1, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 630
    if-eqz v1, :cond_0

    .line 631
    iget-object v2, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 632
    iget-object v3, p0, Lcom/google/c/c/z;->f:Lcom/google/c/c/m;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, Lcom/google/c/c/m;->a(Lcom/google/c/c/m;I)I

    .line 633
    invoke-virtual {p0}, Lcom/google/c/c/z;->b()V

    .line 635
    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/c/c/z;->a()V

    .line 468
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/c/c/z;->a()V

    .line 486
    iget-object v0, p0, Lcom/google/c/c/z;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
