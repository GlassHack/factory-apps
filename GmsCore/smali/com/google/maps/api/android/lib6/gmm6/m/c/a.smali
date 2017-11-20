.class public final Lcom/google/maps/api/android/lib6/gmm6/m/c/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field final b:Ljava/util/LinkedHashSet;

.field c:Lcom/google/maps/api/android/lib6/gmm6/f/g;

.field d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private e:Z

.field private f:I

.field private final g:Ljava/util/LinkedHashSet;

.field private h:Ljava/util/Iterator;

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/m/c/b;

.field private final j:Ljava/util/LinkedList;

.field private k:J

.field private l:J

.field private m:B

.field private n:Z

.field private o:Ljava/util/Map;

.field private p:Ljava/util/Set;

.field private q:Lcom/google/maps/api/android/lib6/gmm6/m/c/c;


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->b:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->g:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->j:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->k:J

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->p:Ljava/util/Set;

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->a:I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;

    invoke-direct {v0, p0, p4}, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/a;Z)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->i:Lcom/google/maps/api/android/lib6/gmm6/m/c/b;

    iput-boolean p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->e:Z

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->f:I

    return-void
.end method

.method private declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;Z)Lcom/google/maps/api/android/lib6/gmm6/m/c/c;
    .locals 9

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->c:J

    iget-byte v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->q:Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    iget-wide v6, v5, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->c:J

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    const/4 v5, 0x1

    iput-byte v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->e()V

    move p2, v4

    :cond_2
    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->q:Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    if-eq p1, v5, :cond_3

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->b:Ljava/util/LinkedHashSet;

    iget-object v6, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->p:Ljava/util/Set;

    iget-object v6, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-byte v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B

    if-ne v5, v1, :cond_6

    iget-wide v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->k:J

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->p:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->f:I

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->h:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->h:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->d()J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;JZ)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->n:Z

    if-eqz v5, :cond_5

    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    const/4 v5, 0x2

    :try_start_2
    iput-byte v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->i:Lcom/google/maps/api/android/lib6/gmm6/m/c/b;

    const/4 v6, 0x0

    iput v6, v5, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->b:I

    iget-object v6, v5, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v6, v5, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->clear()V

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v6, v5, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->d:Ljava/util/LinkedHashSet;

    iget-object v7, v5, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->g:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    iget-object v7, v7, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v5, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    iput-object v6, v5, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->f:Ljava/util/Iterator;

    :cond_6
    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->p:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->f:I

    if-ge v5, v6, :cond_7

    move v5, v1

    :goto_1
    if-nez v5, :cond_8

    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B

    goto/16 :goto_0

    :cond_7
    move v5, v4

    goto :goto_1

    :cond_8
    iget-byte v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B

    if-ne v6, v8, :cond_d

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    iget-wide v2, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->c:J

    iget-wide v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->k:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->i:Lcom/google/maps/api/android/lib6/gmm6/m/c/b;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    if-eqz v3, :cond_a

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->b:I

    iget-object v5, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->g:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->a:I

    if-ge v3, v5, :cond_a

    if-nez p2, :cond_9

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->g:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->c:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    iget-object v5, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v6, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->g:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    iget-object v6, v6, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-interface {v3, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v5, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->f:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->b:I

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->d:Ljava/util/LinkedHashSet;

    iget-object v5, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->e:Ljava/util/LinkedHashSet;

    iput-object v5, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->d:Ljava/util/LinkedHashSet;

    iput-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->e:Ljava/util/LinkedHashSet;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->f:Ljava/util/Iterator;

    :cond_a
    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->f:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v5, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->g:Lcom/google/maps/api/android/lib6/gmm6/m/c/a;

    invoke-direct {v5}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->d()J

    move-result-wide v6

    iget-boolean v5, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->a:Z

    if-nez v5, :cond_b

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/b;->b:I

    if-eqz v2, :cond_b

    :goto_2
    invoke-direct {v0, v3, v6, v7, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;JZ)V

    goto/16 :goto_0

    :cond_b
    move v1, v4

    goto :goto_2

    :cond_c
    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->k:J

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B

    :cond_d
    iget-byte v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    iget-wide v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->k:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v5, :cond_e

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->j:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->d()J

    move-result-wide v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, v1, v4, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private d()J
    .locals 4

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->k:J

    return-wide v0
.end method

.method private declared-synchronized e()V
    .locals 7

    const/4 v6, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->e:Z

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->c:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->a:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->g:Ljava/util/LinkedHashSet;

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/f/c;->a(Lcom/google/maps/api/android/lib6/gmm6/f/g;ILjava/util/Collection;Lcom/google/maps/api/android/lib6/gmm6/l/h;ILjava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->g:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->c:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-interface {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->h:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->g:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->j:Ljava/util/LinkedList;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v6

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    if-ne v1, v6, :cond_5

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    move v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    if-eq v1, v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;Z)Lcom/google/maps/api/android/lib6/gmm6/m/c/c;
    .locals 2

    monitor-enter p0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->b(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;Z)Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->o:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->b:Z

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->o:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->p:Ljava/util/Set;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/f/g;Lcom/google/maps/api/android/lib6/gmm6/l/h;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->l:J

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->c:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/m/y;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->d()J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;JZ)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->q:Lcom/google/maps/api/android/lib6/gmm6/m/c/c;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->j:Ljava/util/LinkedList;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-boolean p5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/m/c/c;)Z
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-wide v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/c/c;->c:J

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->l:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/google/maps/api/android/lib6/gmm6/m/c/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->q:Lcom/google/maps/api/android/lib6/gmm6/m/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/c/a;->m:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
