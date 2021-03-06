.class final Lcom/google/common/collect/Synchronized$SynchronizedTable;
.super Lcom/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedObject;",
        "Lcom/google/common/collect/Table",
        "<TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/Table;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1843
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    .local p1, "delegate":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1844
    return-void
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1945
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1946
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1947
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1903
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1904
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->clear()V

    .line 1905
    monitor-exit v1

    .line 1906
    return-void

    .line 1905
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 1938
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1939
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1940
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 1959
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1960
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1961
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1989
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1992
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Lcom/google/common/collect/Synchronized$SynchronizedTable$2;

    invoke-direct {v2, p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable$2;-><init>(Lcom/google/common/collect/Synchronized$SynchronizedTable;)V

    .line 1991
    invoke-static {v0, v2}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    .line 1990
    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2000
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1854
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1855
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1856
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1868
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1869
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1870
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1861
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1862
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1863
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1875
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1876
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1877
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method delegate()Lcom/google/common/collect/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Table",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 1849
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1839
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2012
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    if-ne p0, p1, :cond_0

    .line 2013
    const/4 v0, 0x1

    .line 2016
    :goto_0
    return v0

    .line 2015
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2016
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 2017
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1882
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1883
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2005
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2006
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 2007
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1889
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1890
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1891
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1910
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1911
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1912
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/Table;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table",
            "<+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1917
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    .local p1, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<+TR;+TC;+TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1918
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->putAll(Lcom/google/common/collect/Table;)V

    .line 1919
    monitor-exit v1

    .line 1920
    return-void

    .line 1919
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1924
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1925
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1926
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 1931
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1932
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1933
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1952
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1953
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1954
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1973
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1976
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->rowMap()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Lcom/google/common/collect/Synchronized$SynchronizedTable$1;

    invoke-direct {v2, p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable$1;-><init>(Lcom/google/common/collect/Synchronized$SynchronizedTable;)V

    .line 1975
    invoke-static {v0, v2}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    .line 1974
    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1984
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1896
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1897
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1898
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1966
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedTable;, "Lcom/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1967
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Table;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1968
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
