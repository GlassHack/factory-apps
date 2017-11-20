.class public final Lcom/google/maps/api/android/lib6/gmm6/m/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;


# instance fields
.field private b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

.field private volatile d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/n/a;

.field private final f:Ljava/util/List;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/l/au;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field private i:I

.field private j:I

.field private final k:Lcom/google/maps/api/android/lib6/gmm6/m/z;

.field private l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Ljava/util/Set;

.field private final n:Ljava/util/LinkedList;

.field private o:Ljava/util/Map;

.field private p:Ljava/util/Map;

.field private volatile q:I

.field private final r:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

.field private s:Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

.field private final t:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

.field private final u:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

.field private final v:Lcom/google/maps/api/android/lib6/gmm6/m/c/h;

.field private w:Lcom/google/g/a/d;

.field private volatile x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/av;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/av;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/a;)V
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;)V

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/n/a;->a:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/m/c/a;Lcom/google/maps/api/android/lib6/gmm6/n/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/m/c/a;Lcom/google/maps/api/android/lib6/gmm6/n/a;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->h:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->i:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->j:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->m:Ljava/util/Set;

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->o:Ljava/util/Map;

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->p:Ljava/util/Map;

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->q:I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/f;

    invoke-direct {v0, p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/c/f;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;B)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->t:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;

    invoke-direct {v0, p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/c/g;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;B)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->u:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/h;

    invoke-direct {v0, p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/c/h;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;B)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->v:Lcom/google/maps/api/android/lib6/gmm6/m/c/h;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->w:Lcom/google/g/a/d;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->e:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->n:Ljava/util/LinkedList;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->b(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/m/y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/e;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->k:Lcom/google/maps/api/android/lib6/gmm6/m/z;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->k:Lcom/google/maps/api/android/lib6/gmm6/m/z;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->a(Lcom/google/maps/api/android/lib6/gmm6/m/z;)V

    :goto_0
    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    return-void

    :cond_0
    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->k:Lcom/google/maps/api/android/lib6/gmm6/m/z;

    goto :goto_0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->h:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->h:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v1, p1, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->g:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v1

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;-><init>()V

    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/al;

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/at;Lcom/google/maps/api/android/lib6/gmm6/l/al;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    move-result-object v8

    iget-object v9, v6, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a:Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-static {v9, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/at;Lcom/google/maps/api/android/lib6/gmm6/l/al;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz v8, :cond_1

    invoke-interface {v8, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ak;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move v1, v5

    :goto_1
    if-nez v1, :cond_0

    move v1, v3

    :goto_2
    if-nez v1, :cond_6

    move-object v1, v4

    :cond_2
    :goto_3
    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    invoke-interface {v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ak;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)Z

    move-result v1

    goto :goto_1

    :cond_5
    move v1, v5

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v1

    if-eqz v1, :cond_9

    instance-of v1, p3, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    if-eqz v1, :cond_9

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    monitor-enter v5

    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, p3

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/m/ac;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object v0, v2

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-object v1, v0

    move-object v0, v3

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/by;Lcom/google/maps/api/android/lib6/gmm6/l/by;)Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-result-object v2

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->j()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v5

    throw v1

    :cond_8
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p3, v2

    :cond_9
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    if-eqz v2, :cond_d

    if-nez p2, :cond_d

    instance-of v1, p3, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->e:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-static {p3, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;Lcom/google/maps/api/android/lib6/gmm6/n/a;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/at;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_a

    const/4 v1, 0x2

    if-ne p2, v1, :cond_c

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    :cond_a
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v3, v2, v4, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)V

    goto :goto_3

    :cond_b
    instance-of v1, p3, Lcom/google/maps/api/android/lib6/gmm6/l/cu;

    if-eqz v1, :cond_d

    invoke-static {p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/k;

    move-result-object v1

    goto :goto_5

    :cond_c
    move-object v1, v4

    goto/16 :goto_3

    :cond_d
    move-object v1, v4

    goto :goto_5

    :cond_e
    move-object v2, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->w:Lcom/google/g/a/d;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->m:Ljava/util/Set;

    return-object v0
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ZLcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->h:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->h:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->d(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    invoke-interface {v0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/ae;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    if-eq p1, v0, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/ac;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->v:Lcom/google/maps/api/android/lib6/gmm6/m/c/h;

    invoke-virtual {v0, p1, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    invoke-interface {v0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    goto :goto_0

    :cond_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eq p2, v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->q:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->c()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->n:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->n:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->n:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/i;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;Z)V

    :cond_1
    monitor-exit v3

    :cond_2
    return-void

    :cond_3
    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->n:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v2, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/i;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;ZLcom/google/maps/api/android/lib6/gmm6/m/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ZLcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->w:Lcom/google/g/a/d;

    invoke-interface {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->o:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->t:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ZLcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/o/a/e;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    return-object v0
.end method

.method private b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 6

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->n()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p3

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->m()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eq v0, v2, :cond_2

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/at;

    check-cast p3, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/at;->a(J)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->h:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->h:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->j:I

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->i:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->o:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/g/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->w:Lcom/google/g/a/d;

    return-object v0
.end method

.method static synthetic e(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->p:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->q:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->q:I

    return v0
.end method

.method static synthetic g(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/c/a;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    return-object v0
.end method

.method static synthetic h(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->q:I

    return v0
.end method

.method static synthetic i(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->u:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    return-object v0
.end method

.method static synthetic j(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/c/c;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->s:Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    return-object v0
.end method

.method static synthetic j()Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    return-object v0
.end method

.method static synthetic k(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;)Lcom/google/maps/api/android/lib6/gmm6/m/c/c;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->s:Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/av;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->i()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v1, v2, v3, p1, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v1

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->w:Lcom/google/g/a/d;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Lcom/google/maps/api/android/lib6/gmm6/l/ah;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    move-result-object v1

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->w:Lcom/google/g/a/d;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/f/g;Lcom/google/maps/api/android/lib6/gmm6/l/h;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->a(Lcom/google/maps/api/android/lib6/gmm6/f/g;Lcom/google/maps/api/android/lib6/gmm6/l/h;Ljava/util/List;Ljava/util/Set;Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->b()Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->s:Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->b:Z

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->u:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ZLcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    :cond_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->s:Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/au;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->g:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    instance-of v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/ae;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Modifiers not supported on store \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->i()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/av;->A:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only modifiers may be added, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/m/ab;->b(Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/m/y;

    move-result-object v0

    instance-of v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/ac;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Modifier store \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->i()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' must be a vector modifier store"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    monitor-exit v1

    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->k:Lcom/google/maps/api/android/lib6/gmm6/m/z;

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->a(Lcom/google/maps/api/android/lib6/gmm6/m/z;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/ac;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/ac;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/ac;->i()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown tile store "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->m:Ljava/util/Set;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->m:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->c:Lcom/google/maps/api/android/lib6/gmm6/m/y;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/y;->i()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->e:Lcom/google/maps/api/android/lib6/gmm6/n/a;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Ljava/util/Set;Lcom/google/maps/api/android/lib6/gmm6/n/a;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/m/c/i;)V
    .locals 2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->n:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    const-string v0, "GLState should not be null"

    invoke-static {p1, v0}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    new-instance v0, Lcom/google/g/a/d;

    invoke-direct {v0}, Lcom/google/g/a/d;-><init>()V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/g/a/d;)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a()Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/c/c/fx;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eq v0, v3, :cond_0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Ljava/util/List;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/c/c/fx;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eq v0, v3, :cond_0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;Ljava/util/List;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V

    return-void
.end method

.method public final d()V
    .locals 3

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->r:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->a()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b()V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->m:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    invoke-virtual {v3, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->x:Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->d:Lcom/google/maps/api/android/lib6/gmm6/o/a/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/a/e;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->g()Z

    :cond_0
    return-void
.end method

.method public final i()Lcom/google/g/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->w:Lcom/google/g/a/d;

    return-object v0
.end method
