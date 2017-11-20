.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;


# static fields
.field private static c:F

.field private static final p:Ljava/util/Map;


# instance fields
.field private final d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private final e:Ljava/util/List;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

.field private final g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

.field private final h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private final j:I

.field private final k:I

.field private final l:Z

.field private final m:F

.field private n:Lcom/google/maps/api/android/lib6/a/a/a;

.field private final o:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->c:F

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->p:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;Ljava/util/List;Ljava/util/Set;)V
    .locals 14

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/i;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->a:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;-><init>(IB)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->b:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;-><init>(IB)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->a:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;-><init>(IB)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->e:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->e:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b()I

    move-result v6

    const/4 v2, 0x1

    if-le v6, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->l:Z

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->l:Z

    if-eqz v2, :cond_1

    div-int/lit8 v2, v6, 0x10

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v4, v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->e:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a()F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v4, v4, 0x0

    move v2, v5

    :goto_1
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    if-ge v5, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b()I

    move-result v7

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a()F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int v3, v4, v7

    move v4, v3

    move v3, v2

    goto :goto_2

    :cond_2
    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->j:I

    sget v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->c:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    float-to-int v3, v2

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(II)I

    move-result v3

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->k:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->k:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->m:F

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->e:Ljava/util/List;

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->m:F

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->j:I

    iget-boolean v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->l:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;-><init>(Ljava/util/List;FIZ)V

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v2, v3

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/i;

    move-result-object v2

    const/4 v3, 0x0

    move v12, v3

    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_5

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    iget-object v3, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v13

    const/4 v6, 0x2

    if-lt v13, v6, :cond_3

    iget-object v6, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->e:Lcom/google/maps/api/android/lib6/a/a/a;

    iput-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->n:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v7

    iget-boolean v8, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->l:Z

    if-nez v8, :cond_4

    const/4 v5, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FZLcom/google/maps/api/android/lib6/gmm6/l/h;IFLcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->j:I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v12, v5, v6

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-static {v13, v3, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(II[ILcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V

    :cond_3
    :goto_4
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b()I

    move-result v5

    const/high16 v8, 0x45000000    # 2048.0f

    int-to-float v5, v5

    div-float/2addr v8, v5

    const/4 v5, 0x1

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    iget-object v11, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual/range {v2 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/i;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FZLcom/google/maps/api/android/lib6/gmm6/l/h;IFLcom/google/maps/api/android/lib6/gmm6/o/c/a/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/e;Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;)V

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-void

    :cond_6
    move v2, v5

    goto/16 :goto_1
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;Ljava/util/List;Ljava/util/Set;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method private static declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    .locals 2

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->p:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(F)V
    .locals 0

    sput p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->c:F

    return-void
.end method

.method private static declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;Lcom/google/maps/api/android/lib6/gmm6/o/c/o;)V
    .locals 3

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->p:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->p:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move/from16 v0, p6

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    mul-float v12, v1, v2

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;

    iget v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->a:F

    mul-float v2, v2, p5

    add-float v13, p3, v2

    iget v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->b:F

    mul-float v2, v2, p5

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v14, v2, v3

    iget v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->c:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v15, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aa;->d:[I

    if-nez v15, :cond_2

    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_1

    sub-float v2, v13, v14

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v3, p4, v1

    add-float v4, v13, v14

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v5, p4, v1

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :cond_1
    sub-float v2, v13, v14

    const/4 v3, 0x0

    add-float v4, v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v2, 0x1

    move/from16 v4, p4

    :goto_2
    move/from16 v0, p6

    if-ge v3, v0, :cond_0

    const/4 v1, 0x0

    move v8, v1

    move v1, v2

    move v2, v3

    move v3, v4

    :goto_3
    array-length v4, v15

    rem-int/lit8 v4, v4, 0x2

    if-gt v8, v4, :cond_6

    array-length v0, v15

    move/from16 v16, v0

    const/4 v4, 0x0

    move v11, v4

    move v9, v1

    move v10, v2

    :goto_4
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    aget v17, v15, v11

    move/from16 v0, v17

    int-to-float v1, v0

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v12

    add-float v5, v3, v1

    if-eqz v9, :cond_3

    sub-float v2, v13, v14

    add-float v4, v13, v14

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    if-nez v9, :cond_4

    const/4 v1, 0x1

    :goto_5
    add-int v10, v10, v17

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v9, v1

    move v3, v5

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v2, v10

    move v1, v9

    goto :goto_3

    :cond_6
    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_2

    :cond_7
    return-void
.end method

.method static a(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    mul-int/lit8 v3, v2, 0x5

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->a:I

    if-lez v4, :cond_2

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->a:I

    add-int/2addr v4, v3

    const/16 v5, 0x4000

    if-gt v4, v5, :cond_0

    :cond_2
    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->a:I

    add-int/2addr v3, v4

    iput v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->a:I

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->b:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x3

    :cond_3
    add-int/2addr v0, v2

    add-int/2addr v0, v3

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/y;->b:I

    move v0, v1

    goto :goto_0
.end method

.method private static declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;)V
    .locals 2

    const-class v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->p:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    const/high16 v4, 0x10000

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method

.method private d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->g()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;

    invoke-static {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->h()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 14

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->n:Lcom/google/maps/api/android/lib6/a/a/a;

    if-eqz v1, :cond_2

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->n:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->b(Lcom/google/maps/api/android/lib6/a/a/a;)Lcom/google/maps/api/android/lib6/gmm6/o/k;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->d:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;

    invoke-static {p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->k:I

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->j:I

    shl-int/2addr v2, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v13, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->e:Ljava/util/List;

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->m:F

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->l:Z

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v9, v1

    :goto_1
    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v9, :cond_4

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b()I

    move-result v7

    int-to-float v5, v10

    iget-object v1, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    invoke-static/range {v1 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V

    iget-object v1, v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    invoke-static/range {v1 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_2

    :cond_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    move v9, v1

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-direct {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-static {p1, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ab;Lcom/google/maps/api/android/lib6/gmm6/o/c/o;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c(Z)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b(Z)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1, v12}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    :goto_3
    if-eqz v11, :cond_6

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    const/16 v2, 0x1702

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    int-to-float v1, v11

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v1

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->l:Z

    if-eqz v1, :cond_8

    int-to-float v1, v11

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v1, v4

    :goto_4
    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    const/high16 v2, -0x41000000    # -0.5f

    const/high16 v3, -0x41000000    # -0.5f

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    const/16 v2, 0x1700

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_6
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    const/16 v2, 0x1702

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    const/16 v2, 0x1700

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->e()V

    goto/16 :goto_3

    :cond_8
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public final b()I
    .locals 5

    const/16 v0, 0x260

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;

    const/16 v2, 0xd0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    if-eqz v4, :cond_0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->a:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->i()I

    move-result v2

    add-int/lit16 v2, v2, 0xd0

    :cond_0
    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/z;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d()I

    move-result v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/w;->h:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method
