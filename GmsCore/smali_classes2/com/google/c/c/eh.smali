.class Lcom/google/c/c/eh;
.super Lcom/google/c/c/eb;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/c/c/eb;-><init>(Ljava/util/Collection;Ljava/lang/Object;B)V

    .line 213
    return-void
.end method


# virtual methods
.method synthetic a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/c/c/eh;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/c/c/eh;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/c/c/eb;->a()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 220
    if-ne p1, p0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/google/c/c/eh;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eh;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 229
    iget-object v1, p0, Lcom/google/c/c/eh;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/google/c/c/eh;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
