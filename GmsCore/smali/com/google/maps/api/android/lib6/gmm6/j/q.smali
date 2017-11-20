.class public final Lcom/google/maps/api/android/lib6/gmm6/j/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/a/b;


# static fields
.field private static c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

.field private static final q:Lcom/google/maps/api/android/lib6/a/a/g;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field private f:Lcom/google/maps/api/android/lib6/a/a/d;

.field private g:Lcom/google/maps/api/android/lib6/a/a/g;

.field private h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;

.field private final i:Ljava/util/Set;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/Set;

.field private final l:Ljava/lang/Object;

.field private final m:Lcom/google/maps/api/android/lib6/gmm6/m/n;

.field private final n:Ljava/util/Map;

.field private final o:Ljava/util/Map;

.field private final p:Lcom/google/maps/api/android/lib6/gmm6/j/e;

.field private volatile r:Lcom/google/maps/api/android/lib6/a/a/g;

.field private volatile s:Lcom/google/maps/api/android/lib6/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/a/a/g;

    new-instance v1, Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/google/maps/api/android/lib6/a/a/d;-><init>(JJ)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/a/a/g;-><init>(Lcom/google/maps/api/android/lib6/a/a/d;I)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->q:Lcom/google/maps/api/android/lib6/a/a/g;

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/n;)V
    .locals 2

    const/16 v1, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->i:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->j:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->k:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->o:Ljava/util/Map;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/g;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/g;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->p:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/cv;)Lcom/google/maps/api/android/lib6/a/a/g;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/g;

    if-nez v0, :cond_1

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->c:I

    if-ltz v0, :cond_0

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->q:Lcom/google/maps/api/android/lib6/a/a/g;

    :goto_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iget-object v4, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v3, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/j/q;->q:Lcom/google/maps/api/android/lib6/a/a/g;

    if-eq v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f(Lcom/google/maps/api/android/lib6/c/ei;)V

    :cond_2
    return-object v0

    :cond_3
    :try_start_1
    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->c:Lcom/google/maps/api/android/lib6/a/a/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a()Lcom/google/maps/api/android/lib6/gmm6/j/q;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    return-object v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/m/n;)Lcom/google/maps/api/android/lib6/gmm6/j/q;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/n;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    :cond_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->c:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    return-object v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->b(Lcom/google/maps/api/android/lib6/a/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/j/q;Lcom/google/maps/api/android/lib6/c/ei;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f(Lcom/google/maps/api/android/lib6/c/ei;)V

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/a/a/g;)Z
    .locals 7

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {p2, v0}, Lcom/google/maps/api/android/lib6/a/a/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v1, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v1, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    move-result-object v4

    if-nez v4, :cond_2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_3
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->q:Lcom/google/maps/api/android/lib6/a/a/g;

    if-ne p2, v0, :cond_4

    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v0

    move-object v1, v0

    :goto_2
    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v6, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    sget-object v6, Lcom/google/maps/api/android/lib6/gmm6/j/q;->q:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {v5, v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    iget-object v1, p2, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    move-result-object v0

    if-nez v0, :cond_5

    monitor-exit v3

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->a:Ljava/util/List;

    move-object v1, v0

    goto :goto_2

    :cond_6
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static d(Lcom/google/maps/api/android/lib6/c/ei;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/maps/api/android/lib6/c/ei;->c()I

    move-result v0

    return v0
.end method

.method public static e(Lcom/google/maps/api/android/lib6/c/ei;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/maps/api/android/lib6/c/ei;->d()Z

    move-result v0

    return v0
.end method

.method private f(Lcom/google/maps/api/android/lib6/c/ei;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/s;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/s;->a(Lcom/google/maps/api/android/lib6/c/ei;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/em;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/em;->a(Lcom/google/maps/api/android/lib6/c/ei;)V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/s;

    invoke-interface {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/s;->a(Lcom/google/maps/api/android/lib6/gmm6/j/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/em;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/em;->a()V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private l()V
    .locals 3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/s;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/s;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private m()V
    .locals 6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->o:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ek;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->a()Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->r:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {v1, v4}, Lcom/google/maps/api/android/lib6/a/a/g;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->s:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {v1, v4}, Lcom/google/maps/api/android/lib6/a/a/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->n:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/j/k;

    if-nez v1, :cond_3

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/j/k;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;-><init>(Lcom/google/maps/api/android/lib6/c/ek;)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->n:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->o:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->b()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(Lcom/google/maps/api/android/lib6/c/ek;)Z

    goto :goto_2

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/g;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cv;)Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/j/q;->q:Lcom/google/maps/api/android/lib6/a/a/g;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    invoke-direct {p0, p1, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/d;ZZ)Lcom/google/maps/api/android/lib6/gmm6/j/k;
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->o:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/k;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    move-object v2, v0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    monitor-exit v3

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V

    monitor-exit v3

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    move-result-object v0

    if-nez v0, :cond_2

    monitor-exit v3

    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/j/k;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;-><init>(Lcom/google/maps/api/android/lib6/c/ek;)V

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->o:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/j/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/d;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->o:Ljava/util/Map;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/d;ILcom/google/maps/api/android/lib6/gmm6/l/cv;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    if-nez p2, :cond_5

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->g:Lcom/google/maps/api/android/lib6/a/a/g;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->g:Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v4, p1}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->g:Lcom/google/maps/api/android/lib6/a/a/g;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->g:Lcom/google/maps/api/android/lib6/a/a/g;

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a(Lcom/google/maps/api/android/lib6/a/a/g;)Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/d;

    iget-object v5, v3, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->c:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-direct {p0, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/a/a/g;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/j/r;

    invoke-direct {v5, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/r;-><init>(Lcom/google/maps/api/android/lib6/gmm6/j/q;)V

    invoke-direct {p0, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    invoke-direct {p0, p3}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cv;)Lcom/google/maps/api/android/lib6/a/a/g;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_3
    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move v0, v1

    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f:Lcom/google/maps/api/android/lib6/a/a/d;

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->k()V

    :cond_4
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->j:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l()V

    :cond_5
    return-void

    :cond_6
    :try_start_3
    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/g;)V
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->g:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/a/a/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->d:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/i;->b:Lcom/google/maps/api/android/lib6/gmm6/n/i;

    goto :goto_0

    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit v1

    :goto_1
    return-void

    :cond_2
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->g:Lcom/google/maps/api/android/lib6/a/a/g;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-direct {p0, v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/a/a/g;Lcom/google/maps/api/android/lib6/a/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->r:Lcom/google/maps/api/android/lib6/a/a/g;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->s:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m()V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/ei;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/j/q;->q:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/a/a/g;)Z

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f(Lcom/google/maps/api/android/lib6/c/ei;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/em;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/j/s;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->k:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/d;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m:Lcom/google/maps/api/android/lib6/gmm6/m/n;

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->i:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    invoke-direct {p0, v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V

    goto :goto_1

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l()V

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/c/ei;)Lcom/google/maps/api/android/lib6/c/ek;
    .locals 1

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/google/maps/api/android/lib6/c/ei;->c(Lcom/google/maps/api/android/lib6/a/a/g;)Lcom/google/maps/api/android/lib6/c/ek;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cz;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/da;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/da;-><init>()V

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/da;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/da;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->r:Lcom/google/maps/api/android/lib6/a/a/g;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->s:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->m()V

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/j/s;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/a/a/g;Lcom/google/maps/api/android/lib6/a/a/g;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->r:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/a/a/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->s:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {p2, v0}, Lcom/google/maps/api/android/lib6/a/a/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/c/ei;)I
    .locals 1

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/google/maps/api/android/lib6/c/ei;->b(Lcom/google/maps/api/android/lib6/a/a/g;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ei;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;
    .locals 3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/a/a/g;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/j/q;->q:Lcom/google/maps/api/android/lib6/a/a/g;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/cv;
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d(Lcom/google/maps/api/android/lib6/a/a/d;)V
    .locals 3

    if-nez p1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f:Lcom/google/maps/api/android/lib6/a/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->k()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_2
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f:Lcom/google/maps/api/android/lib6/a/a/d;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, p1, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/b;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/j/k;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;ZZ)Lcom/google/maps/api/android/lib6/gmm6/j/k;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->j:Ljava/util/List;

    invoke-static {v0}, Lcom/google/c/c/eo;->a(Ljava/util/Collection;)Lcom/google/c/c/eo;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final f()Ljava/util/Set;
    .locals 3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ei;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b(Lcom/google/maps/api/android/lib6/c/ei;)Lcom/google/maps/api/android/lib6/c/ek;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final g()Ljava/util/Set;
    .locals 3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ei;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b(Lcom/google/maps/api/android/lib6/c/ei;)Lcom/google/maps/api/android/lib6/c/ek;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->a()Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final h()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ek;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->e()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/util/Set;
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->o:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/util/Collection;)Lcom/google/c/c/fc;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final j()Lcom/google/maps/api/android/lib6/gmm6/j/e;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/q;->p:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    return-object v0
.end method
