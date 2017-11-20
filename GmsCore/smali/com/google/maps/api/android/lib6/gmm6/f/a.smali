.class public final Lcom/google/maps/api/android/lib6/gmm6/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/f/g;


# instance fields
.field public volatile a:Z

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/f/g;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/j/e;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/Set;

.field private g:Ljava/util/Set;

.field private h:Lcom/google/maps/api/android/lib6/a/a/d;

.field private i:Lcom/google/maps/api/android/lib6/gmm6/l/cz;

.field private final j:Lcom/google/maps/api/android/lib6/gmm6/n/f;

.field private final k:Lcom/google/maps/api/android/lib6/gmm6/j/q;

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/f/g;Lcom/google/maps/api/android/lib6/gmm6/j/e;ILcom/google/maps/api/android/lib6/gmm6/j/q;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->a:Z

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->h:Lcom/google/maps/api/android/lib6/a/a/d;

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->i:Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->l:J

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->b:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->c:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-direct {v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->j:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->k:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    return-void
.end method

.method private e(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->b:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->a:Z

    if-nez v2, :cond_0

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->d:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->l:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->l:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->a:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->k:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->c()Lcom/google/maps/api/android/lib6/gmm6/l/cv;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v2, v8, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    move-object v4, v2

    :goto_1
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->j:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->c:Lcom/google/maps/api/android/lib6/gmm6/j/e;

    invoke-interface {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Ljava/util/Collection;

    move-result-object v3

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/j/e;->a:Ljava/util/Collection;

    if-eq v3, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->j:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v5, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/j/a;

    iget-object v5, v3, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->k:Lcom/google/maps/api/android/lib6/gmm6/j/q;

    iget-object v6, v3, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->b(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-direct {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/at;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)V

    invoke-virtual {v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v6, v3, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->h:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v6, v14}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-direct {v6}, Lcom/google/maps/api/android/lib6/gmm6/l/at;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->i:Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    invoke-virtual {v6, v14}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)V

    invoke-virtual {v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->c()Lcom/google/maps/api/android/lib6/a/a/g;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b(Lcom/google/maps/api/android/lib6/a/a/g;)I

    move-result v14

    const/4 v3, -0x1

    if-eq v14, v3, :cond_3

    iget-object v15, v8, Lcom/google/maps/api/android/lib6/gmm6/l/cv;->b:Ljava/util/List;

    add-int/lit8 v3, v14, -0x1

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v5, v14, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    move v6, v3

    :goto_2
    move/from16 v0, v16

    if-ge v6, v0, :cond_3

    if-eq v6, v14, :cond_6

    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/at;

    invoke-direct {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/at;-><init>()V

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/l/cw;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/cw;->c:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cz;->a(Lcom/google/maps/api/android/lib6/a/a/g;)Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ak;)V

    invoke-virtual {v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/at;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v5

    if-nez v5, :cond_9

    :goto_3
    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    move-object v4, v2

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_8
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->d:Ljava/util/List;

    invoke-static {v9}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->e:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->f:Ljava/util/Set;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->g:Ljava/util/Set;

    goto/16 :goto_0

    :cond_9
    move-object v3, v5

    goto :goto_3
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->b:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    return v0
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->l:J

    return-wide v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->b:Lcom/google/maps/api/android/lib6/gmm6/f/g;

    invoke-interface {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/f/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->e(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/a/a/d;Lcom/google/maps/api/android/lib6/a/a/g;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->h:Lcom/google/maps/api/android/lib6/a/a/d;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/da;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/da;-><init>()V

    iput-object p2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/da;->a:Lcom/google/maps/api/android/lib6/a/a/g;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/da;->a()Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->i:Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->e(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->f:Ljava/util/Set;

    return-object v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->h:Lcom/google/maps/api/android/lib6/a/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->i:Lcom/google/maps/api/android/lib6/gmm6/l/cz;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->e(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->g:Ljava/util/Set;

    return-object v0
.end method

.method public final d(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Lcom/google/maps/api/android/lib6/a/a/d;
    .locals 12

    const-wide/high16 v10, 0x4033000000000000L    # 19.0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/a;->e(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/f/a;->j:Lcom/google/maps/api/android/lib6/gmm6/n/f;

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n()F

    move-result v4

    float-to-double v6, v4

    cmpl-double v4, v6, v10

    if-lez v4, :cond_1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double/2addr v6, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e()D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-static {v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v4

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;

    invoke-virtual {v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v3

    if-eqz v1, :cond_2

    cmpg-float v4, v3, v2

    if-gez v4, :cond_5

    :cond_2
    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/j/a;->a:Lcom/google/maps/api/android/lib6/a/a/d;

    move v1, v3

    :goto_2
    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    move-object v0, v1

    move v1, v2

    goto :goto_2
.end method
