.class public final Lcom/google/android/gms/panorama/c/j;
.super Lcom/google/android/gms/panorama/c/e;
.source "SourceFile"


# instance fields
.field private final k:F

.field private l:Lcom/google/android/gms/panorama/g/e;

.field private m:Lcom/google/android/gms/panorama/g/n;

.field private n:[[Lcom/google/android/gms/panorama/c/b;

.field private final o:Lcom/google/android/gms/panorama/c/l;

.field private p:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/panorama/c/l;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/panorama/c/e;-><init>()V

    .line 56
    const v0, 0x409ccccd    # 4.9f

    iput v0, p0, Lcom/google/android/gms/panorama/c/j;->k:F

    .line 57
    iput-object p1, p0, Lcom/google/android/gms/panorama/c/j;->o:Lcom/google/android/gms/panorama/c/l;

    .line 58
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/panorama/b/c;F)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 130
    iget v0, p0, Lcom/google/android/gms/panorama/c/j;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/panorama/c/j;->p:I

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    return-void

    .line 133
    :cond_1
    iput v1, p0, Lcom/google/android/gms/panorama/c/j;->p:I

    move v0, v1

    .line 136
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/panorama/c/j;->n:[[Lcom/google/android/gms/panorama/c/b;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/google/android/gms/panorama/c/j;->n:[[Lcom/google/android/gms/panorama/c/b;

    aget-object v4, v2, v0

    move v2, v1

    .line 138
    :goto_1
    array-length v3, v4

    if-ge v2, v3, :cond_4

    .line 139
    aget-object v5, v4, v2

    .line 140
    iput-boolean v1, v5, Lcom/google/android/gms/panorama/c/b;->g:Z

    move v3, v1

    :goto_2
    iget-object v6, v5, Lcom/google/android/gms/panorama/c/b;->f:[Lcom/google/android/gms/panorama/b/c;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    iget-object v6, v5, Lcom/google/android/gms/panorama/c/b;->f:[Lcom/google/android/gms/panorama/b/c;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1}, Lcom/google/android/gms/panorama/b/c;->a(Lcom/google/android/gms/panorama/b/c;)F

    move-result v6

    cmpl-float v6, v6, p2

    if-ltz v6, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/google/android/gms/panorama/c/b;->g:Z

    .line 138
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 140
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 136
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/panorama/g/e;)V
    .locals 26

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->o:Lcom/google/android/gms/panorama/c/l;

    invoke-virtual {v4}, Lcom/google/android/gms/panorama/c/l;->a()V

    .line 68
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/gms/panorama/c/j;->p:I

    .line 69
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    .line 70
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/panorama/g/e;->a:Lcom/google/android/gms/panorama/g/n;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/panorama/c/j;->m:Lcom/google/android/gms/panorama/g/n;

    .line 72
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v4, v4, Lcom/google/android/gms/panorama/f/e;->n:F

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v5, v5, Lcom/google/android/gms/panorama/f/e;->o:F

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v6, v6, Lcom/google/android/gms/panorama/f/e;->p:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/gms/panorama/c/j;->a(FFF)V

    .line 74
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->m:Lcom/google/android/gms/panorama/g/n;

    if-nez v4, :cond_2

    const-string v4, "PartialSphere"

    const-string v5, "tile provider is null. Cannot load textures"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v4, v4, Lcom/google/android/gms/panorama/f/e;->a:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v5, v5, Lcom/google/android/gms/panorama/f/e;->h:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/panorama/g/e;->a:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v5}, Lcom/google/android/gms/panorama/g/n;->f()F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/panorama/g/e;->a:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v5}, Lcom/google/android/gms/panorama/g/n;->a()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v6, v6, Lcom/google/android/gms/panorama/f/e;->j:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v5, v6

    div-float/2addr v5, v4

    move-object/from16 v0, p1

    iput v5, v0, Lcom/google/android/gms/panorama/g/e;->d:F

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/panorama/g/e;->a:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v5}, Lcom/google/android/gms/panorama/g/n;->d()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v6, v6, Lcom/google/android/gms/panorama/f/e;->j:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v5, v6

    div-float/2addr v5, v4

    move-object/from16 v0, p1

    iput v5, v0, Lcom/google/android/gms/panorama/g/e;->g:F

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/panorama/g/e;->a:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v5}, Lcom/google/android/gms/panorama/g/n;->e()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/gms/panorama/g/e;->i:Lcom/google/android/gms/panorama/f/e;

    iget v6, v6, Lcom/google/android/gms/panorama/f/e;->k:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    double-to-float v5, v6

    div-float v4, v5, v4

    move-object/from16 v0, p1

    iput v4, v0, Lcom/google/android/gms/panorama/g/e;->h:F

    .line 76
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/panorama/c/j;->k:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v4, v4, Lcom/google/android/gms/panorama/g/e;->d:F

    const v5, 0x3df5c28f    # 0.12f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v11, v4

    const-string v4, "PartialSphere"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tesselation factor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->m:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v4}, Lcom/google/android/gms/panorama/g/n;->c()I

    move-result v4

    mul-int/2addr v4, v11

    add-int/lit8 v10, v4, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->m:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v4}, Lcom/google/android/gms/panorama/g/n;->b()I

    move-result v4

    mul-int/2addr v4, v11

    add-int/lit8 v12, v4, 0x1

    mul-int v4, v10, v12

    add-int/lit8 v5, v10, -0x1

    add-int/lit8 v6, v12, -0x1

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/panorama/c/j;->a(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v4, v4, Lcom/google/android/gms/panorama/g/e;->d:F

    int-to-float v5, v11

    div-float v13, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v4, v4, Lcom/google/android/gms/panorama/g/e;->d:F

    int-to-float v5, v11

    div-float v14, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v4, v4, Lcom/google/android/gms/panorama/g/e;->h:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v5, v5, Lcom/google/android/gms/panorama/g/e;->d:F

    div-float/2addr v4, v5

    mul-float v15, v13, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v4, v4, Lcom/google/android/gms/panorama/g/e;->g:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v5, v5, Lcom/google/android/gms/panorama/g/e;->d:F

    div-float/2addr v4, v5

    mul-float v16, v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v4, v4, Lcom/google/android/gms/panorama/g/e;->e:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v5, v5, Lcom/google/android/gms/panorama/g/e;->c:F

    add-float/2addr v4, v5

    const v5, 0x3fc90fdb

    sub-float v17, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v4, v4, Lcom/google/android/gms/panorama/g/e;->f:F

    neg-float v4, v4

    const v5, 0x40490fdb    # (float)Math.PI

    sub-float v18, v4, v5

    sub-int v4, v12, v11

    add-int/lit8 v19, v4, -0x1

    filled-new-array {v12, v10}, [I

    move-result-object v4

    const-class v5, Lcom/google/android/gms/panorama/c/q;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/google/android/gms/panorama/c/q;

    const/4 v5, 0x0

    move v8, v5

    :goto_0
    if-ge v8, v10, :cond_7

    if-ge v8, v11, :cond_5

    int-to-float v5, v8

    mul-float/2addr v5, v15

    sub-float v5, v5, v17

    :goto_1
    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v12, :cond_6

    int-to-float v6, v7

    mul-float/2addr v6, v14

    move/from16 v0, v19

    if-le v7, v0, :cond_1

    move/from16 v0, v19

    int-to-float v6, v0

    mul-float/2addr v6, v14

    sub-int v20, v7, v19

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v16

    add-float v6, v6, v20

    :cond_1
    const v20, 0x3fc90fdb

    sub-float v6, v6, v20

    sub-float v6, v6, v18

    float-to-double v0, v5

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    float-to-double v0, v5

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    float-to-double v0, v6

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v6, v0

    mul-float v6, v6, v22

    mul-float/2addr v6, v9

    mul-float v20, v20, v9

    mul-float v21, v21, v22

    mul-float v21, v21, v9

    aget-object v22, v4, v7

    new-instance v23, Lcom/google/android/gms/panorama/c/q;

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v6, v1, v2}, Lcom/google/android/gms/panorama/c/q;-><init>(FFF)V

    aput-object v23, v22, v8

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 74
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->d:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/panorama/c/o;

    invoke-interface {v4}, Lcom/google/android/gms/panorama/c/o;->c()V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->d:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    const/4 v9, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->m:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v4}, Lcom/google/android/gms/panorama/g/n;->b()I

    move-result v4

    if-ge v9, v4, :cond_0

    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/panorama/c/j;->m:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v4}, Lcom/google/android/gms/panorama/g/n;->c()I

    move-result v4

    if-ge v10, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/panorama/c/j;->d:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/panorama/c/j;->o:Lcom/google/android/gms/panorama/c/l;

    new-instance v4, Lcom/google/android/gms/panorama/c/n;

    iget-object v6, v5, Lcom/google/android/gms/panorama/c/l;->a:Ljava/util/concurrent/Semaphore;

    iget-object v7, v5, Lcom/google/android/gms/panorama/c/l;->e:Lcom/google/android/gms/panorama/f/a;

    iget-object v8, v5, Lcom/google/android/gms/panorama/c/l;->c:Lcom/google/android/gms/panorama/c/a;

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/panorama/c/n;-><init>(Lcom/google/android/gms/panorama/c/l;Ljava/util/concurrent/Semaphore;Lcom/google/android/gms/panorama/f/a;Lcom/google/android/gms/panorama/c/a;II)V

    iget-object v5, v5, Lcom/google/android/gms/panorama/c/l;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 76
    :cond_5
    int-to-float v5, v8

    mul-float/2addr v5, v13

    sub-float v5, v5, v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v6, v6, Lcom/google/android/gms/panorama/g/e;->d:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/panorama/c/j;->l:Lcom/google/android/gms/panorama/g/e;

    iget v7, v7, Lcom/google/android/gms/panorama/g/e;->h:F

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/panorama/c/j;->m:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v5}, Lcom/google/android/gms/panorama/g/n;->b()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/panorama/c/j;->m:Lcom/google/android/gms/panorama/g/n;

    invoke-interface {v5}, Lcom/google/android/gms/panorama/g/n;->c()I

    move-result v13

    filled-new-array {v12, v13}, [I

    move-result-object v5

    const-class v6, Lcom/google/android/gms/panorama/c/b;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/google/android/gms/panorama/c/b;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/panorama/c/j;->n:[[Lcom/google/android/gms/panorama/c/b;

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v9, v5

    move v10, v6

    :goto_6
    if-ge v9, v13, :cond_b

    const/4 v6, 0x0

    const/4 v5, 0x0

    move v7, v5

    move v8, v6

    :goto_7
    if-ge v7, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/panorama/c/j;->n:[[Lcom/google/android/gms/panorama/c/b;

    aget-object v5, v5, v7

    new-instance v6, Lcom/google/android/gms/panorama/c/b;

    mul-int v14, v7, v13

    add-int/2addr v14, v9

    invoke-direct {v6, v14, v11}, Lcom/google/android/gms/panorama/c/b;-><init>(II)V

    aput-object v6, v5, v9

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_8
    add-int/lit8 v5, v11, 0x1

    if-ge v6, v5, :cond_9

    const/4 v5, 0x0

    :goto_9
    add-int/lit8 v15, v11, 0x1

    if-ge v5, v15, :cond_8

    add-int v15, v8, v5

    aget-object v15, v4, v15

    add-int v16, v10, v6

    aget-object v15, v15, v16

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_8

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/panorama/c/j;->n:[[Lcom/google/android/gms/panorama/c/b;

    aget-object v5, v5, v7

    aget-object v6, v5, v9

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/android/gms/panorama/c/q;

    invoke-interface {v14, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/panorama/c/q;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/panorama/c/b;->a([Lcom/google/android/gms/panorama/c/q;)V

    add-int v6, v8, v11

    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v8, v6

    goto :goto_7

    :cond_a
    add-int v6, v10, v11

    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v10, v6

    goto :goto_6

    .line 77
    :cond_b
    return-void
.end method

.method public final a([F)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/j;->h:Lcom/google/android/gms/panorama/c/k;

    invoke-virtual {v0}, Lcom/google/android/gms/panorama/c/k;->a()V

    .line 85
    const/4 v0, 0x1

    move v1, v2

    .line 88
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/panorama/c/j;->n:[[Lcom/google/android/gms/panorama/c/b;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 89
    iget-object v3, p0, Lcom/google/android/gms/panorama/c/j;->n:[[Lcom/google/android/gms/panorama/c/b;

    aget-object v5, v3, v1

    move v4, v2

    move v3, v0

    .line 90
    :goto_1
    array-length v0, v5

    if-ge v4, v0, :cond_2

    .line 91
    aget-object v6, v5, v4

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/j;->d:Ljava/util/Vector;

    iget v7, v6, Lcom/google/android/gms/panorama/c/b;->a:I

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/panorama/c/o;

    .line 97
    if-eqz v3, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/google/android/gms/panorama/c/o;->d()Z

    move-result v7

    .line 99
    if-eqz v7, :cond_0

    move v3, v2

    .line 105
    :cond_0
    iget-boolean v7, v6, Lcom/google/android/gms/panorama/c/b;->g:Z

    if-eqz v7, :cond_1

    .line 106
    invoke-interface {v0}, Lcom/google/android/gms/panorama/c/o;->a()Lcom/google/android/gms/panorama/c/f;

    move-result-object v7

    .line 110
    if-eqz v7, :cond_1

    .line 112
    iget-object v8, p0, Lcom/google/android/gms/panorama/c/j;->h:Lcom/google/android/gms/panorama/c/k;

    invoke-virtual {v7}, Lcom/google/android/gms/panorama/c/f;->a()V

    .line 115
    iget-object v7, p0, Lcom/google/android/gms/panorama/c/j;->h:Lcom/google/android/gms/panorama/c/k;

    invoke-virtual {v7, p1}, Lcom/google/android/gms/panorama/c/k;->a([F)V

    .line 118
    invoke-interface {v0}, Lcom/google/android/gms/panorama/c/o;->e()F

    move-result v7

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/j;->h:Lcom/google/android/gms/panorama/c/k;

    check-cast v0, Lcom/google/android/gms/panorama/e/a;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/panorama/e/a;->a(F)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/j;->h:Lcom/google/android/gms/panorama/c/k;

    iget-object v7, v6, Lcom/google/android/gms/panorama/c/b;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, v6, Lcom/google/android/gms/panorama/c/b;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/panorama/c/k;->a(Ljava/nio/FloatBuffer;)V

    iget-object v7, v6, Lcom/google/android/gms/panorama/c/b;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, v6, Lcom/google/android/gms/panorama/c/b;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/panorama/c/k;->b(Ljava/nio/FloatBuffer;)V

    iget-object v0, v6, Lcom/google/android/gms/panorama/c/b;->e:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x4

    iget v7, v6, Lcom/google/android/gms/panorama/c/b;->b:I

    const/16 v8, 0x1403

    iget-object v6, v6, Lcom/google/android/gms/panorama/c/b;->e:Ljava/nio/ShortBuffer;

    invoke-static {v0, v7, v8, v6}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 90
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 88
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/panorama/c/j;->h:Lcom/google/android/gms/panorama/c/k;

    check-cast v0, Lcom/google/android/gms/panorama/e/a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/e/a;->a(F)V

    .line 125
    return-void
.end method
