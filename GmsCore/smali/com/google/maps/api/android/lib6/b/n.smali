.class public final Lcom/google/maps/api/android/lib6/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/b/o;


# instance fields
.field a:Z

.field final b:Lcom/google/g/a/b/b/f;

.field private c:Ljava/util/Vector;

.field private synthetic d:Lcom/google/maps/api/android/lib6/b/h;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/b/h;)V
    .locals 2

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/n;->d:Lcom/google/maps/api/android/lib6/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/n;->c:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/n;->a:Z

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/n;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/n;->b:Lcom/google/g/a/b/b/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/b/h;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/b/n;-><init>(Lcom/google/maps/api/android/lib6/b/h;)V

    return-void
.end method

.method private declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->q()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a()Lcom/google/maps/api/android/lib6/b/l;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/b/n;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/b/n;->a:Z

    if-nez v2, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/maps/api/android/lib6/b/l;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/n;->d:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/b/n;->c:Ljava/util/Vector;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/b/n;->b:Lcom/google/g/a/b/b/f;

    invoke-direct {v2, v0, v3, v4}, Lcom/google/maps/api/android/lib6/b/l;-><init>(Lcom/google/maps/api/android/lib6/b/h;Ljava/util/Vector;Lcom/google/g/a/b/b/f;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/n;->c:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/n;->a:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public final a(I[BZZZ)V
    .locals 6

    new-instance v0, Lcom/google/maps/api/android/lib6/b/v;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/b/v;-><init>(I[BZZZ)V

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/b/n;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/b/p;)V
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->q()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/p;)V

    return-void
.end method

.method public final c(Lcom/google/maps/api/android/lib6/b/g;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/n;->d:Lcom/google/maps/api/android/lib6/b/h;

    const-string v0, "REQUEST"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add Data Request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/b/g;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/n;->d:Lcom/google/maps/api/android/lib6/b/h;

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/b/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/n;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/n;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/b/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/n;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/n;->d:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/h;->d:Lcom/google/maps/api/android/lib6/b/k;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/k;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j()V
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->q()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->j()V

    return-void
.end method

.method public final l()J
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->q()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/h;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/n;->b:Lcom/google/g/a/b/b/f;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
