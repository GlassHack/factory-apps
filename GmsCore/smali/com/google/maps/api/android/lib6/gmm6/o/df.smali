.class public final Lcom/google/maps/api/android/lib6/gmm6/o/df;
.super Lcom/google/maps/api/android/lib6/gmm6/o/x;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/j/f;
.implements Lcom/google/maps/api/android/lib6/gmm6/j/p;
.implements Lcom/google/maps/api/android/lib6/gmm6/j/s;
.implements Lcom/google/maps/api/android/lib6/gmm6/o/aw;


# instance fields
.field final e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

.field final f:Lcom/google/maps/api/android/lib6/gmm6/j/n;

.field private volatile g:Z

.field private volatile h:Z

.field private i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/o/dh;

.field private final k:Ljava/util/Set;

.field private volatile l:Ljava/util/Set;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/Map;

.field private final o:Lcom/google/maps/api/android/lib6/gmm6/o/k;


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IILcom/google/maps/api/android/lib6/gmm6/o/bu;Lcom/google/maps/api/android/lib6/gmm6/j/q;)V
    .locals 18

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/av;->n:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/o/dj;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p6

    invoke-direct {v6, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/dj;-><init>(Lcom/google/maps/api/android/lib6/gmm6/f/i;ILcom/google/maps/api/android/lib6/gmm6/j/q;)V

    const/4 v9, 0x4

    const/16 v11, 0x100

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/o/x;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IIILcom/google/maps/api/android/lib6/gmm6/o/bu;IZZZZZZ)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->g:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->h:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->l:Ljava/util/Set;

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->m:Ljava/util/Map;

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->n:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/dg;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dg;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/df;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->o:Lcom/google/maps/api/android/lib6/gmm6/o/k;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/m/n;->c()Lcom/google/maps/api/android/lib6/gmm6/m/n;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/j/n;

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/gmm6/j/n;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->f:Lcom/google/maps/api/android/lib6/gmm6/j/n;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/dh;

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->d:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    invoke-direct {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/dh;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bu;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->j:Lcom/google/maps/api/android/lib6/gmm6/o/dh;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->j:Lcom/google/maps/api/android/lib6/gmm6/o/dh;

    const v4, -0x7fafafb0

    iput v4, v3, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->b:I

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/o/e/b;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->d:Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;

    invoke-direct {v1, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/e/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/df;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->l:Ljava/util/Set;

    return-object v0
.end method

.method private b(Ljava/util/List;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->h:Z

    if-eqz v0, :cond_8

    iput-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->h:Z

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->j:Lcom/google/maps/api/android/lib6/gmm6/o/dh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/j;->d:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->a(Lcom/google/maps/api/android/lib6/gmm6/o/j;)Lcom/google/maps/api/android/lib6/gmm6/o/i;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/k;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->h:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    new-array v7, v2, [Lcom/google/maps/api/android/lib6/gmm6/o/k;

    aput-object v0, v7, v3

    invoke-virtual {p0, v1, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->a(Lcom/google/maps/api/android/lib6/gmm6/o/j;[Lcom/google/maps/api/android/lib6/gmm6/o/k;)Lcom/google/maps/api/android/lib6/gmm6/o/i;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->b()F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->b()F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_3

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->f:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    invoke-static {v0}, Lcom/google/c/c/eo;->a(Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v7

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->o:Lcom/google/maps/api/android/lib6/gmm6/o/k;

    invoke-static {v8}, Lcom/google/c/c/eo;->a(Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v8

    invoke-virtual {p0, v1, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->a(Lcom/google/maps/api/android/lib6/gmm6/o/j;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/maps/api/android/lib6/gmm6/o/i;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    invoke-static {v0}, Lcom/google/c/c/eo;->a(Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v7

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->o:Lcom/google/maps/api/android/lib6/gmm6/o/k;

    invoke-static {v8}, Lcom/google/c/c/eo;->a(Ljava/lang/Object;)Lcom/google/c/c/eo;

    move-result-object v8

    invoke-virtual {p0, v1, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->a(Lcom/google/maps/api/android/lib6/gmm6/o/j;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/maps/api/android/lib6/gmm6/o/i;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->b()F

    move-result v1

    cmpg-float v1, v1, v9

    if-gez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->g:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    new-array v7, v2, [Lcom/google/maps/api/android/lib6/gmm6/o/k;

    aput-object v0, v7, v3

    invoke-virtual {p0, v1, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->a(Lcom/google/maps/api/android/lib6/gmm6/o/j;[Lcom/google/maps/api/android/lib6/gmm6/o/k;)Lcom/google/maps/api/android/lib6/gmm6/o/i;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/j;->b:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    new-array v1, v2, [Lcom/google/maps/api/android/lib6/gmm6/o/k;

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/o/di;

    invoke-direct {v6, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/di;-><init>(Ljava/util/Set;)V

    aput-object v6, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->a(Lcom/google/maps/api/android/lib6/gmm6/o/j;[Lcom/google/maps/api/android/lib6/gmm6/o/k;)Lcom/google/maps/api/android/lib6/gmm6/o/i;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/j;->e:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    new-array v1, v2, [Lcom/google/maps/api/android/lib6/gmm6/o/k;

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/o/di;

    invoke-direct {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/di;-><init>(Ljava/util/Set;)V

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->a(Lcom/google/maps/api/android/lib6/gmm6/o/j;[Lcom/google/maps/api/android/lib6/gmm6/o/k;)Lcom/google/maps/api/android/lib6/gmm6/o/i;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move v0, v2

    :goto_2
    return v0

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method private n()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->a:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->b:Lcom/google/maps/api/android/lib6/gmm6/o/t;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/t;->a(ZZ)V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->c()Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->j:Lcom/google/maps/api/android/lib6/gmm6/o/dh;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->a()Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    iget v0, v0, Lcom/google/maps/api/android/lib6/a/a/g;->b:I

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->b(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b(Lcom/google/maps/api/android/lib6/c/ei;)Lcom/google/maps/api/android/lib6/c/ek;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/cc;Lcom/google/maps/api/android/lib6/gmm6/o/g;Ljava/util/Set;)I
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->g()Ljava/util/Set;

    move-result-object v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v1

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/l/al;->d:Lcom/google/maps/api/android/lib6/gmm6/l/al;

    invoke-virtual {v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/al;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->b()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)V

    invoke-interface {v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a(Lcom/google/maps/api/android/lib6/gmm6/o/g;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->n()V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/ei;)V
    .locals 6

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->g:Z

    iput-boolean v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->h:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->o()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->c(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->n()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v2, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b(Lcom/google/maps/api/android/lib6/a/a/g;Lcom/google/maps/api/android/lib6/a/a/g;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->b()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v2, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/g;Lcom/google/maps/api/android/lib6/a/a/g;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v2, v0, v5, v5}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;ZZ)Lcom/google/maps/api/android/lib6/gmm6/j/k;

    move-result-object v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    iget-object v3, v1, Lcom/google/maps/api/android/lib6/a/a/g;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Lcom/google/maps/api/android/lib6/a/a/d;ZZ)Lcom/google/maps/api/android/lib6/gmm6/j/k;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/k;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->b()F

    move-result v0

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->b()F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(I)V

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(I)V

    :goto_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ei;->a()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/a/a/g;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x14

    :try_start_2
    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(I)V

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/f/g;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/f/g;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/j/q;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->g:Z

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->h:Z

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->o()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->c()Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b:Ljava/util/List;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/l/cx;->a:Lcom/google/c/a/bz;

    invoke-static {v0, v1}, Lcom/google/c/c/fm;->a(Ljava/lang/Iterable;Lcom/google/c/a/bz;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/lang/Iterable;)Lcom/google/c/c/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->l:Ljava/util/Set;

    :goto_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->n()V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->l:Ljava/util/Set;

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d(Lcom/google/maps/api/android/lib6/a/a/d;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Ljava/util/Set;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 2

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->b()Lcom/google/maps/api/android/lib6/gmm6/o/j;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->d:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->j:Lcom/google/maps/api/android/lib6/gmm6/o/dh;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->j:Lcom/google/maps/api/android/lib6/gmm6/o/dh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n()F

    move-result v0

    const v1, 0x416e6666    # 14.9f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->c:Z

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ek;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->b()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->m:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x41880000    # 17.0f

    const v4, 0x416e6666    # 14.9f

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->d(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->d(Lcom/google/maps/api/android/lib6/a/a/d;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->f:Lcom/google/maps/api/android/lib6/gmm6/j/n;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/j/l;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a(Ljava/util/Set;)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    iput-boolean v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->g:Z

    invoke-super {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    move-result v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v1

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/l/al;->d:Lcom/google/maps/api/android/lib6/gmm6/l/al;

    invoke-virtual {v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/al;)Lcom/google/maps/api/android/lib6/gmm6/l/ak;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->b()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->n:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    if-nez v1, :cond_4

    invoke-direct {p0, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/o/e/b;

    move-result-object v1

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->n:Ljava/util/Map;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->f:Lcom/google/maps/api/android/lib6/gmm6/j/n;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/j/l;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/j/n;->a:Lcom/google/maps/api/android/lib6/gmm6/j/l;

    if-eq v5, v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cm;

    new-array v6, v3, [Lcom/google/maps/api/android/lib6/gmm6/l/cl;

    aput-object v5, v6, v7

    invoke-direct {v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;-><init>([Lcom/google/maps/api/android/lib6/gmm6/l/cl;)V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->m:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cm;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cl;)V

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_3
    return v0

    :cond_7
    iput-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->g:Z

    move v0, v3

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->b(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)I
    .locals 5

    const/4 v1, 0x2

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->j:Lcom/google/maps/api/android/lib6/gmm6/o/dh;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/dh;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/k;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->h:Z

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->i:Lcom/google/maps/api/android/lib6/gmm6/f/a;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->b()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->n()V

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b()V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/df;->n()V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->h:Z

    return-void
.end method

.method public final j()Lcom/google/maps/api/android/lib6/gmm6/o/aw;
    .locals 0

    return-object p0
.end method

.method public final k()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b(Lcom/google/maps/api/android/lib6/gmm6/j/s;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->f:Lcom/google/maps/api/android/lib6/gmm6/j/n;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/n;->b(Lcom/google/maps/api/android/lib6/gmm6/j/p;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/df;->e:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->j()Lcom/google/maps/api/android/lib6/gmm6/j/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->b(Lcom/google/maps/api/android/lib6/gmm6/j/f;)V

    return-void
.end method
