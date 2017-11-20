.class Lcom/google/c/c/ed;
.super Lcom/google/c/c/ef;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field transient c:Ljava/util/Set;

.field transient d:Ljava/util/Collection;

.field transient e:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0, p1, p2}, Lcom/google/c/c/ef;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 925
    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 929
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 917
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 934
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 935
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 936
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 941
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 942
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 948
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 949
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 955
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/ed;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 957
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/c/c/du;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/ed;->e:Ljava/util/Set;

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/ed;->e:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1026
    if-ne p1, p0, :cond_0

    .line 1027
    const/4 v0, 0x1

    .line 1030
    :goto_0
    return v0

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1030
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 965
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 966
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1036
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1037
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 972
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 973
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 974
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 979
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/ed;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 981
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/c/c/du;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/ed;->c:Ljava/util/Set;

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/ed;->c:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 984
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 989
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 990
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 991
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 996
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 997
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 998
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1003
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1004
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1011
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1012
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 1017
    iget-object v1, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1018
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/ed;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1019
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/c/c/ed;->g:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/c/c/du;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/ed;->d:Ljava/util/Collection;

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/ed;->d:Ljava/util/Collection;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
