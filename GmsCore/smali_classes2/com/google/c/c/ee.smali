.class Lcom/google/c/c/ee;
.super Lcom/google/c/c/ef;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/c/ci;


# instance fields
.field transient a:Ljava/util/Set;

.field transient b:Ljava/util/Collection;

.field transient c:Ljava/util/Collection;

.field transient d:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/c/c/ci;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0, p1, p2}, Lcom/google/c/c/ef;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 524
    return-void
.end method


# virtual methods
.method a()Lcom/google/c/c/ci;
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ci;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 542
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/c/c/ci;->a(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 556
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/c/c/ci;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 549
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 550
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 570
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/c/c/ci;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 535
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->c()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 598
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/c/c/ci;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    .prologue
    .line 563
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/c/c/ci;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/c/c/du;->b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 612
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->d()V

    .line 614
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()Ljava/util/Set;
    .locals 4

    .prologue
    .line 619
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/ee;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->e()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    instance-of v3, v0, Ljava/util/SortedSet;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/util/SortedSet;

    invoke-static {v0, v2}, Lcom/google/c/c/du;->a(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/c/c/ee;->a:Ljava/util/Set;

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/ee;->a:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 621
    :cond_1
    invoke-static {v0, v2}, Lcom/google/c/c/du;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 668
    if-ne p1, p0, :cond_0

    .line 669
    const/4 v0, 0x1

    .line 672
    :goto_0
    return v0

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/c/c/ci;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 629
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/ee;->b:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->f()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/c/c/du;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/ee;->b:Ljava/util/Collection;

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/ee;->b:Ljava/util/Collection;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public g()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 639
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/ee;->c:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->g()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/c/c/du;->b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/ee;->c:Ljava/util/Collection;

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/ee;->c:Ljava/util/Collection;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 677
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final i()Ljava/util/Map;
    .locals 4

    .prologue
    .line 649
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/ee;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Lcom/google/c/c/dv;

    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/c/c/ci;->i()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/c/c/dv;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/c/c/ee;->d:Ljava/util/Map;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/ee;->d:Ljava/util/Map;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final u_()I
    .locals 2

    .prologue
    .line 528
    iget-object v1, p0, Lcom/google/c/c/ee;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/c/c/ci;->u_()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
