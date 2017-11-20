.class final Lcom/google/c/c/ei;
.super Lcom/google/c/c/ee;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/c/dm;


# instance fields
.field transient e:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/c/c/dm;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/c/c/ee;-><init>(Lcom/google/c/c/ci;Ljava/lang/Object;)V

    .line 738
    return-void
.end method


# virtual methods
.method final bridge synthetic a()Lcom/google/c/c/ci;
    .locals 1

    .prologue
    .line 731
    invoke-super {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/dm;

    return-object v0
.end method

.method final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 731
    invoke-super {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/dm;

    return-object v0
.end method

.method public final synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Lcom/google/c/c/ei;->e(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 743
    iget-object v1, p0, Lcom/google/c/c/ei;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 744
    :try_start_0
    invoke-super {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/dm;

    invoke-interface {v0, p1}, Lcom/google/c/c/dm;->e(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/c/c/ei;->g:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/c/c/du;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final synthetic g()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/google/c/c/ei;->k()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/Set;
    .locals 3

    .prologue
    .line 759
    iget-object v1, p0, Lcom/google/c/c/ei;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/ei;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 761
    invoke-super {p0}, Lcom/google/c/c/ee;->a()Lcom/google/c/c/ci;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/dm;

    invoke-interface {v0}, Lcom/google/c/c/dm;->k()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/c/c/ei;->g:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/c/c/du;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/ei;->e:Ljava/util/Set;

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/ei;->e:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
