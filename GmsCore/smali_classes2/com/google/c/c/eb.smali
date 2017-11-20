.class Lcom/google/c/c/eb;
.super Lcom/google/c/c/ef;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# direct methods
.method private constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/c/c/ef;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Ljava/lang/Object;B)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/google/c/c/eb;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/google/c/c/ef;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 182
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/google/c/c/eb;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
