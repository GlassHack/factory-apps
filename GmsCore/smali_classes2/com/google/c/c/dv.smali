.class final Lcom/google/c/c/dv;
.super Lcom/google/c/c/ed;
.source "SourceFile"


# instance fields
.field transient a:Ljava/util/Set;

.field transient b:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1157
    invoke-direct {p0, p1, p2}, Lcom/google/c/c/ed;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1158
    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3

    .prologue
    .line 1161
    iget-object v1, p0, Lcom/google/c/c/dv;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1162
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/c/c/ed;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1163
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/c/c/dv;->g:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/c/c/du;->b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/c/c/dv;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 4

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/google/c/c/dv;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1170
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/dv;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1171
    new-instance v0, Lcom/google/c/c/dw;

    invoke-virtual {p0}, Lcom/google/c/c/dv;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/c/c/dv;->g:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/c/c/dw;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/c/c/dv;->a:Ljava/util/Set;

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/dv;->a:Ljava/util/Set;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1151
    invoke-direct {p0, p1}, Lcom/google/c/c/dv;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 4

    .prologue
    .line 1179
    iget-object v1, p0, Lcom/google/c/c/dv;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 1180
    :try_start_0
    iget-object v0, p0, Lcom/google/c/c/dv;->b:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1181
    new-instance v0, Lcom/google/c/c/dz;

    invoke-virtual {p0}, Lcom/google/c/c/dv;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/c/c/dv;->g:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/c/c/dz;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/c/c/dv;->b:Ljava/util/Collection;

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/google/c/c/dv;->b:Ljava/util/Collection;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
