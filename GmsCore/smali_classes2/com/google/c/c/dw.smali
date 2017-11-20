.class final Lcom/google/c/c/dw;
.super Lcom/google/c/c/eh;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 838
    invoke-direct {p0, p1, p2}, Lcom/google/c/c/eh;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 839
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 876
    iget-object v1, p0, Lcom/google/c/c/dw;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 877
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/dw;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/cd;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 881
    iget-object v1, p0, Lcom/google/c/c/dw;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/dw;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/al;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 886
    if-ne p1, p0, :cond_0

    .line 887
    const/4 v0, 0x1

    .line 890
    :goto_0
    return v0

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/google/c/c/dw;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 890
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/dw;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/dn;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 843
    invoke-super {p0}, Lcom/google/c/c/eh;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 844
    new-instance v1, Lcom/google/c/c/dx;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/dx;-><init>(Lcom/google/c/c/dw;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 894
    iget-object v1, p0, Lcom/google/c/c/dw;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 895
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/dw;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/cd;->b(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 899
    iget-object v1, p0, Lcom/google/c/c/dw;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 900
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/dw;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/bv;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 904
    iget-object v1, p0, Lcom/google/c/c/dw;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 905
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/dw;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/bv;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 906
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 866
    iget-object v1, p0, Lcom/google/c/c/dw;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 867
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/dw;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/cy;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 871
    iget-object v1, p0, Lcom/google/c/c/dw;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 872
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/dw;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/c/cy;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
