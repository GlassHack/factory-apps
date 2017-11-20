.class public final Lcom/google/maps/api/android/lib6/gmm6/j/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/j/d;
.implements Lcom/google/maps/api/android/lib6/gmm6/j/e;


# instance fields
.field private final b:Lcom/google/maps/api/android/lib6/gmm6/m/y;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/m/n;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/m/z;

.field private final e:Ljava/util/Map;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field private final g:Ljava/util/Set;

.field private volatile h:I

.field private volatile i:I

.field private volatile j:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->e:Ljava/util/Map;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->g:Ljava/util/Set;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->b:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->c:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->d:Lcom/google/maps/api/android/lib6/gmm6/m/z;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->b(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/m/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->b:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c()Lcom/google/maps/api/android/lib6/gmm6/m/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->c:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/x;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/x;-><init>(Lcom/google/maps/api/android/lib6/gmm6/j/w;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->d:Lcom/google/maps/api/android/lib6/gmm6/m/z;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->b:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->d:Lcom/google/maps/api/android/lib6/gmm6/m/z;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->a(Lcom/google/maps/api/android/lib6/gmm6/m/z;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/j/w;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/j/w;)Lcom/google/maps/api/android/lib6/gmm6/n/f;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/f;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/f;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/j/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/w;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Ljava/util/Collection;
    .locals 5

    const/16 v1, 0xe

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->h:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    if-le v0, v1, :cond_3

    invoke-virtual {p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->i:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a(Ljava/util/Collection;Lcom/google/maps/api/android/lib6/gmm6/l/q;)Ljava/util/Collection;

    move-result-object v0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->e:Ljava/util/Map;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/b;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/b;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->b:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->c:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/y;Lcom/google/maps/api/android/lib6/gmm6/m/n;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->e:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    iput-object p0, v0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->c:Lcom/google/maps/api/android/lib6/gmm6/j/d;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->a:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/j/b;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->j:I

    :cond_1
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a:Ljava/util/Collection;

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    move-object v0, v2

    move v1, v3

    goto :goto_2

    :cond_3
    move-object v1, p1

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/w;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/j/b;Ljava/util/Collection;)V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->e:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/j/b;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/b;

    if-eq v0, p1, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->e:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/j/b;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->f:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/j/b;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0, v2, p2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/w;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/w;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
