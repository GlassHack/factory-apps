.class public final Lcom/google/android/location/activity/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/activity/a/o;


# instance fields
.field private final a:Z

.field private final b:Lcom/google/android/location/activity/a/u;

.field private final c:Lcom/google/android/location/activity/a/w;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/a/z;->b:Lcom/google/android/location/activity/a/u;

    .line 70
    iput-boolean p1, p0, Lcom/google/android/location/activity/a/z;->a:Z

    .line 71
    invoke-static {p1}, Lcom/google/android/location/activity/a/w;->a(Z)Lcom/google/android/location/activity/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/activity/a/z;->c:Lcom/google/android/location/activity/a/w;

    .line 73
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/google/android/location/activity/a/z;->a:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9502f900L

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0xbebc2000L

    goto :goto_0
.end method

.method public final a(JJLjava/util/List;)Ljava/util/List;
    .locals 18

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/location/activity/a/z;->a:Z

    if-eqz v2, :cond_6

    .line 98
    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/google/android/location/activity/a/q;->a(Ljava/util/List;Z)Lcom/google/android/location/activity/a/r;

    move-result-object v2

    new-instance v9, Lcom/google/android/location/activity/a/b/p;

    invoke-direct {v9}, Lcom/google/android/location/activity/a/b/p;-><init>()V

    iget v3, v2, Lcom/google/android/location/activity/a/r;->a:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->a:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->b:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->b:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->c:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->c:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->d:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->d:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->e:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->e:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->f:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->f:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->g:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->g:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->h:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->h:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->i:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->i:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->j:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->j:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->k:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->k:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->l:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->l:F

    iget-object v3, v2, Lcom/google/android/location/activity/a/r;->m:[F

    iput-object v3, v9, Lcom/google/android/location/activity/a/b/p;->m:[F

    iget-object v3, v2, Lcom/google/android/location/activity/a/r;->n:[F

    iput-object v3, v9, Lcom/google/android/location/activity/a/b/p;->n:[F

    iget-object v3, v2, Lcom/google/android/location/activity/a/r;->o:[F

    iput-object v3, v9, Lcom/google/android/location/activity/a/b/p;->o:[F

    iget-object v3, v2, Lcom/google/android/location/activity/a/r;->p:[F

    iput-object v3, v9, Lcom/google/android/location/activity/a/b/p;->p:[F

    iget-object v3, v2, Lcom/google/android/location/activity/a/r;->q:[F

    iput-object v3, v9, Lcom/google/android/location/activity/a/b/p;->q:[F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->r:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->r:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->s:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->s:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->t:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->t:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->u:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->u:F

    iget v3, v2, Lcom/google/android/location/activity/a/r;->v:F

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->v:F

    iget v2, v2, Lcom/google/android/location/activity/a/r;->w:F

    iput v2, v9, Lcom/google/android/location/activity/a/b/p;->w:F

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Lcom/google/android/location/activity/a/y;->a(Ljava/util/List;D)[[D

    move-result-object v10

    array-length v2, v10

    new-array v4, v2, [[D

    const/4 v2, 0x0

    :goto_0
    array-length v3, v10

    if-ge v2, v3, :cond_1

    aget-object v5, v10, v2

    array-length v3, v5

    new-array v6, v3, [D

    const/4 v3, 0x0

    const/4 v7, 0x0

    aget-wide v12, v5, v7

    aput-wide v12, v6, v3

    const/4 v3, 0x1

    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_0

    const-wide v12, 0x3fe6666666666666L    # 0.7

    add-int/lit8 v7, v3, -0x1

    aget-wide v14, v6, v7

    aget-wide v16, v5, v3

    add-double v14, v14, v16

    add-int/lit8 v7, v3, -0x1

    aget-wide v16, v5, v7

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    aput-wide v12, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-static {v2}, Lcom/google/android/location/activity/a/q;->a([D)F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v4, v3

    invoke-static {v3}, Lcom/google/android/location/activity/a/q;->a([D)F

    move-result v3

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/google/android/location/activity/a/q;->a([D)F

    move-result v4

    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v2, 0x1

    aput v3, v5, v2

    const/4 v2, 0x2

    aput v4, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->sort([F)V

    const/4 v2, 0x2

    aget v2, v5, v2

    iput v2, v9, Lcom/google/android/location/activity/a/b/p;->G:F

    const/4 v2, 0x1

    aget v2, v5, v2

    iput v2, v9, Lcom/google/android/location/activity/a/b/p;->H:F

    const/4 v2, 0x3

    new-array v11, v2, [[D

    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    aget-object v4, v10, v2

    array-length v3, v4

    div-int/lit8 v5, v3, 0x20

    new-array v6, v5, [D

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_2

    mul-int/lit8 v7, v3, 0x20

    add-int/lit8 v8, v7, 0x20

    invoke-static {v4, v7, v8}, Lcom/google/android/location/activity/a/b/o;->a([DII)D

    move-result-wide v12

    aput-wide v12, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    aput-object v6, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    aget-object v2, v11, v2

    array-length v3, v2

    new-array v12, v3, [D

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    const/4 v4, 0x0

    aget-object v4, v11, v4

    aget-wide v4, v4, v2

    const/4 v6, 0x2

    aget-object v6, v11, v6

    aget-wide v6, v6, v2

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/location/activity/a/b/o;->a(DD)D

    move-result-wide v4

    aput-wide v4, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    aget-object v2, v11, v2

    array-length v13, v2

    new-array v14, v13, [D

    const/4 v2, 0x0

    move v8, v2

    :goto_5
    if-ge v8, v13, :cond_5

    const/4 v2, 0x0

    aget-object v2, v11, v2

    aget-wide v2, v2, v8

    const/4 v4, 0x1

    aget-object v4, v11, v4

    aget-wide v4, v4, v8

    const/4 v6, 0x2

    aget-object v6, v11, v6

    aget-wide v6, v6, v8

    invoke-static/range {v2 .. v7}, Lcom/google/android/location/activity/a/b/o;->a(DDD)D

    move-result-wide v2

    aput-wide v2, v14, v8

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_5

    :cond_5
    invoke-static {v12}, Lcom/google/android/location/activity/a/b/o;->a([D)[F

    move-result-object v2

    invoke-static {v14}, Lcom/google/android/location/activity/a/b/o;->a([D)[F

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v3, v4

    iput v4, v9, Lcom/google/android/location/activity/a/b/p;->x:F

    const/4 v4, 0x0

    aget v4, v2, v4

    iput v4, v9, Lcom/google/android/location/activity/a/b/p;->z:F

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v9, Lcom/google/android/location/activity/a/b/p;->y:F

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v9, Lcom/google/android/location/activity/a/b/p;->A:F

    const/4 v2, 0x3

    new-array v6, v2, [D

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v10, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v10, v5

    array-length v5, v5

    invoke-static {v3, v4, v5}, Lcom/google/android/location/activity/a/b/o;->a([DII)D

    move-result-wide v4

    aput-wide v4, v6, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v10, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    aget-object v5, v10, v5

    array-length v5, v5

    invoke-static {v3, v4, v5}, Lcom/google/android/location/activity/a/b/o;->a([DII)D

    move-result-wide v4

    aput-wide v4, v6, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-object v3, v10, v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    aget-object v5, v10, v5

    array-length v5, v5

    invoke-static {v3, v4, v5}, Lcom/google/android/location/activity/a/b/o;->a([DII)D

    move-result-wide v4

    aput-wide v4, v6, v2

    const/4 v2, 0x0

    aget-wide v2, v6, v2

    const/4 v4, 0x1

    aget-wide v4, v6, v4

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    invoke-static {v2, v3, v6, v7}, Lcom/google/android/location/activity/a/b/o;->a(DD)D

    move-result-wide v10

    invoke-static/range {v2 .. v7}, Lcom/google/android/location/activity/a/b/o;->a(DDD)D

    move-result-wide v12

    double-to-float v8, v12

    iput v8, v9, Lcom/google/android/location/activity/a/b/p;->B:F

    double-to-float v8, v10

    iput v8, v9, Lcom/google/android/location/activity/a/b/p;->C:F

    mul-double v10, v2, v2

    mul-double v12, v4, v4

    add-double/2addr v10, v12

    mul-double v12, v6, v6

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v2, v10

    double-to-float v2, v2

    iput v2, v9, Lcom/google/android/location/activity/a/b/p;->D:F

    div-double v2, v4, v10

    double-to-float v2, v2

    iput v2, v9, Lcom/google/android/location/activity/a/b/p;->E:F

    div-double v2, v6, v10

    double-to-float v2, v2

    iput v2, v9, Lcom/google/android/location/activity/a/b/p;->F:F

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/activity/a/z;->c:Lcom/google/android/location/activity/a/w;

    invoke-virtual {v2, v9}, Lcom/google/android/location/activity/a/w;->a(Lcom/google/android/location/activity/a/r;)Ljava/util/List;

    move-result-object v2

    .line 115
    :goto_6
    return-object v2

    .line 102
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/google/android/location/activity/a/q;->a(Ljava/util/List;Z)Lcom/google/android/location/activity/a/r;

    move-result-object v2

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/activity/a/z;->c:Lcom/google/android/location/activity/a/w;

    invoke-virtual {v3, v2}, Lcom/google/android/location/activity/a/w;->a(Lcom/google/android/location/activity/a/r;)Ljava/util/List;

    move-result-object v2

    goto :goto_6
.end method
