.class public final Lcom/google/maps/api/android/lib6/gmm6/o/bq;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private static final b:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# instance fields
.field private final c:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field private d:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field private e:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field private final f:Ljava/util/List;

.field private final g:Lcom/google/maps/api/android/lib6/a/a/d;

.field private h:Lcom/google/maps/api/android/lib6/gmm6/l/p;

.field private i:F

.field private j:F

.field private final k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private final m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private n:F

.field private o:I

.field private p:Z

.field private final q:I

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;FI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;FIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;FIZ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->r:Z

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->c:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->n:F

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->o:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->g:Lcom/google/maps/api/android/lib6/a/a/d;

    iput-boolean p4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->r:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->q:I

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->q:I

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;-><init>(I)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->q:I

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(I)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->b(Ljava/util/List;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;-><init>(I)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3fa00000    # 1.25f

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->p:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->p:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return v0

    :cond_1
    monitor-exit p0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->j:F

    mul-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->j:F

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->c:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v3

    iget-object v5, v3, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->d:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v3

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->g()I

    move-result v4

    const v6, 0x71c71c7

    if-gt v3, v6, :cond_0

    const v6, 0x71c71c7

    if-le v4, v6, :cond_4

    :cond_0
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->e()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v4

    const/high16 v6, 0x20000000

    sub-int/2addr v4, v6

    const/high16 v6, -0x40000000    # -2.0f

    invoke-direct {v3, v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->e()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v5

    const/high16 v6, 0x20000000

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    const v6, 0x3fffffff    # 1.9999999f

    invoke-direct {v4, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    move-object v5, v4

    move-object v4, v3

    :goto_1
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-direct {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->h:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->r:Z

    invoke-static {v3, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(IZ)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(F)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/google/maps/api/android/lib6/gmm6/l/l;

    const/4 v2, 0x0

    aput-object v7, v3, v2

    invoke-static {v3}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v2, v3

    invoke-static {v2}, Lcom/google/c/c/fx;->a(I)I

    move-result v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/cj;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->h:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-direct {v3, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/q;)V

    invoke-virtual {v3, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v6}, Ljava/util/List;->clear()V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    sget-object v8, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v4, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v8

    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v5, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/l/cj;

    invoke-direct {v8, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/q;)V

    invoke-virtual {v8, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Ljava/util/List;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f:Ljava/util/List;

    sget-object v10, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->d:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->c:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    const/16 v4, 0xa

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->r:Z

    invoke-static {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(IZ)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(F)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->d:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->d:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->r:Z

    invoke-static {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/bw;->a(IZ)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(F)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->e:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    :cond_2
    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->d:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->e:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    goto/16 :goto_0

    :cond_4
    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v4, 0x4

    invoke-direct {v6, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->d()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_1

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v2

    invoke-direct {v8, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/n;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    new-instance v10, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v11

    if-ge v2, v11, :cond_8

    invoke-virtual {v7, v2, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v11

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v12

    if-ge v11, v12, :cond_7

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v11

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v12

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v13

    sub-int/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    add-int/2addr v12, v13

    if-ge v12, v11, :cond_6

    const/high16 v11, 0x20000000

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v13

    sub-int/2addr v11, v13

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v13

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v14

    int-to-double v0, v13

    move-wide/from16 v16, v0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    int-to-double v12, v12

    div-double v12, v16, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v11, v12

    add-int/2addr v11, v14

    new-instance v12, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const v13, 0x1fffffff

    invoke-direct {v12, v13, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v8, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->c()V

    new-instance v12, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v13, -0x20000000

    invoke-direct {v12, v13, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v8, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    :cond_6
    :goto_6
    invoke-virtual {v8, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    invoke-virtual {v9, v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v11

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v12

    if-le v11, v12, :cond_6

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v11

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v12

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v13

    sub-int/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    add-int/2addr v12, v13

    if-ge v12, v11, :cond_6

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v11

    const/high16 v13, 0x20000000

    add-int/2addr v11, v13

    invoke-virtual {v10}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v13

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v14

    int-to-double v0, v13

    move-wide/from16 v16, v0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    int-to-double v12, v12

    div-double v12, v16, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v11, v12

    add-int/2addr v11, v14

    new-instance v12, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/high16 v13, -0x20000000

    invoke-direct {v12, v13, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v8, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->c()V

    new-instance v12, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const v13, 0x1fffffff

    invoke-direct {v12, v13, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v8, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    goto :goto_6

    :cond_8
    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_9

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object v2, v3

    goto/16 :goto_2

    :cond_a
    invoke-interface {v6}, Ljava/util/List;->clear()V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/p;

    sget-object v8, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v4, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v8

    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v5, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/p;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/l/cj;

    invoke-direct {v8, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/q;)V

    invoke-virtual {v8, v2, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/cj;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Ljava/util/List;)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f:Ljava/util/List;

    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v2, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto/16 :goto_3

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->i:F

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->n:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 12

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->h:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->h:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->h:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->n:F

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/i;

    move-result-object v0

    const/4 v6, 0x0

    const/high16 v7, 0x10000

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move v3, v2

    invoke-virtual/range {v0 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FFLcom/google/maps/api/android/lib6/gmm6/l/h;IIILcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->j:F

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->g:Lcom/google/maps/api/android/lib6/a/a/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->f:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/l;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->h:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->h:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1, p2, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    const/4 v0, 0x1

    const/16 v4, 0x303

    invoke-interface {v3, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v0, 0x2300

    const/16 v4, 0x2200

    const/16 v5, 0x2100

    invoke-interface {v3, v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->o:I

    shr-int/lit8 v0, v0, 0x10

    const v4, 0xff00

    and-int/2addr v0, v4

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->o:I

    shr-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->o:I

    const v6, 0xff00

    and-int/2addr v5, v6

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->o:I

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v3, v4, v5, v6, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/16 v3, 0x18

    aget-object v0, v0, v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/high16 v3, 0x10000

    const/high16 v4, 0x10000

    const/high16 v5, 0x10000

    const/high16 v6, 0x10000

    invoke-interface {v0, v3, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    if-eqz v1, :cond_5

    invoke-interface {v1, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    :cond_5
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a()Lcom/google/maps/api/android/lib6/gmm6/j/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->g:Lcom/google/maps/api/android/lib6/a/a/d;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/j/k;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->h:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->p:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->i:F

    mul-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->i:F

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->h:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v2

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->k:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->l:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bq;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method
