.class public final Lcom/google/maps/api/android/lib6/gmm6/c/s;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;

# interfaces
.implements Lcom/google/maps/api/android/lib6/c/am;
.implements Lcom/google/maps/api/android/lib6/gmm6/c/ap;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

.field private static final b:Ljava/util/Comparator;


# instance fields
.field private final c:Lcom/google/maps/api/android/lib6/c/y;

.field private final d:Ljava/util/Set;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

.field private h:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/t;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/t;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/c/y;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->c:Lcom/google/maps/api/android/lib6/c/y;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->f:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->c:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0, p0}, Lcom/google/maps/api/android/lib6/c/y;->a(Lcom/google/maps/api/android/lib6/gmm6/c/ap;)V

    return-void
.end method

.method private b(Lcom/google/maps/api/android/lib6/gmm6/c/r;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    invoke-interface {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V

    :cond_0
    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->i:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized F_()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/c/r;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/an;Z)Lcom/google/maps/api/android/lib6/c/ao;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/u;

    invoke-direct {v0, p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/u;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/s;Lcom/google/maps/api/android/lib6/c/an;)V

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b(Lcom/google/maps/api/android/lib6/gmm6/c/r;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/v;

    invoke-direct {v0, p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/v;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/s;Lcom/google/maps/api/android/lib6/c/an;)V

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b(Lcom/google/maps/api/android/lib6/gmm6/c/r;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/bs;)Lcom/google/maps/api/android/lib6/c/bt;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->c:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0, p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/am;->a(Lcom/google/maps/api/android/lib6/c/bs;Landroid/content/res/Resources;Lcom/google/maps/api/android/lib6/gmm6/c/s;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/maps/api/android/lib6/gmm6/c/am;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b(Lcom/google/maps/api/android/lib6/gmm6/c/r;)V

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/ed;)Lcom/google/maps/api/android/lib6/c/ee;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/c/l;

    invoke-direct {v0, p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/l;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/s;Lcom/google/maps/api/android/lib6/c/ed;)V

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b(Lcom/google/maps/api/android/lib6/gmm6/c/r;)V

    return-object v0
.end method

.method public final declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/c/r;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/c/r;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/c/r;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/c/r;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    invoke-interface {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/c/r;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->g:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    invoke-interface {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/c/r;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/c/r;

    invoke-interface {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->c:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->d()V

    return-void
.end method

.method final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/c/s;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final d()Lcom/google/maps/api/android/lib6/gmm6/o/bt;
    .locals 0

    return-object p0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method

.method public final declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/c/r;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/r;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
