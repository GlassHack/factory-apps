.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;


# instance fields
.field private final A:F

.field private final B:F

.field private final C:F

.field private D:I

.field private E:I

.field private F:F

.field private final G:I

.field private H:Z

.field private I:I

.field private J:Z

.field private final K:Ljava/lang/String;

.field private final L:F

.field private final M:[F

.field private final l:Ljava/lang/String;

.field private final m:Lcom/google/maps/api/android/lib6/gmm6/o/v;

.field private final n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field private o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field private final p:F

.field private q:Lcom/google/maps/api/android/lib6/gmm6/l/k;

.field private r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

.field private final s:Lcom/google/maps/api/android/lib6/gmm6/o/u;

.field private u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private w:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private x:Z

.field private y:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

.field private z:Lcom/google/maps/api/android/lib6/gmm6/b/e;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;IIZFILcom/google/maps/api/android/lib6/gmm6/l/l;FFLcom/google/maps/api/android/lib6/gmm6/o/v;FLcom/google/maps/api/android/lib6/gmm6/o/u;Z)V
    .locals 10

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v7, p5

    move/from16 v8, p7

    move/from16 v9, p16

    invoke-direct/range {v1 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Lcom/google/maps/api/android/lib6/gmm6/l/x;FFIZZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->x:Z

    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->M:[F

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->K:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    mul-float v1, p14, p8

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    move/from16 v0, p6

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->G:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->s:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    move/from16 v0, p8

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->A:F

    move/from16 v0, p11

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->B:F

    move/from16 v0, p12

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->C:F

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->m:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->J:Z

    move/from16 v0, p9

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->E:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    mul-float v1, p14, p11

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->L:F

    return-void
.end method

.method private static a(F[FI)I
    .locals 4

    const/4 v3, 0x0

    aget v0, p1, p2

    sub-float v0, p0, v0

    cmpg-float v1, v0, v3

    if-gtz v1, :cond_2

    :cond_0
    :goto_0
    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    :cond_2
    cmpl-float v1, v0, v3

    if-lez v1, :cond_3

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_3

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    sub-float v1, p0, v1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_1

    neg-float v1, v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    array-length v0, p1

    add-int/lit8 p2, v0, -0x1

    goto :goto_0
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FF)Lcom/google/maps/api/android/lib6/gmm6/l/l;
    .locals 12

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->g:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->h:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->i:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    const/4 v2, 0x0

    move v3, p2

    :goto_0
    if-ge v2, v10, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(I)F

    move-result v4

    sub-float/2addr p1, v4

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    const v5, -0x472e48e9    # -1.0E-4f

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    const/4 v0, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, p1, v4

    add-float/2addr v4, v5

    invoke-virtual {p0, v2, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v9, v8, v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_0
    move v4, v2

    :goto_1
    if-ge v4, v10, :cond_8

    invoke-virtual {p0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(I)F

    move-result v11

    sub-float v5, v3, v11

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v5, v3

    if-gtz v3, :cond_2

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v5, v3

    if-gez v3, :cond_8

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v5, v11

    add-float/2addr v3, v5

    invoke-virtual {p0, v4, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v9, v8, v3, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move v3, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    sub-int v1, v4, v2

    add-int/lit8 v5, v1, 0x1

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_3
    add-int/2addr v5, v1

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :goto_4
    add-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x3

    new-array v5, v1, [I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v6, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a([II)V

    :goto_5
    move v1, v0

    move v0, v2

    :goto_6
    if-gt v0, v4, :cond_5

    invoke-virtual {p0, v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a([II)V

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_6

    :cond_1
    sub-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v7, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a([II)V

    :cond_6
    invoke-static {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a([I)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    return-object v0

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v3, v1

    goto :goto_2
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/l;IZFFLcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/u;Z)Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;
    .locals 20

    invoke-virtual/range {p9 .. p9}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_6

    mul-float v3, p6, v11

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(F)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v13

    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->c()Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-result-object v7

    const/4 v3, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->b()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    move-result-object v4

    iget v4, v4, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a:I

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/dc;

    move-result-object v3

    iget-object v7, v3, Lcom/google/maps/api/android/lib6/gmm6/l/dc;->e:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v3

    :goto_2
    move-object/from16 v0, p10

    move-object/from16 v1, p8

    move/from16 v2, p6

    invoke-virtual {v0, v6, v1, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/l/ad;F)F

    move-result v17

    const/high16 v3, 0x3f800000    # 1.0f

    add-float v3, v3, v17

    invoke-virtual/range {p9 .. p9}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->j()F

    move-result v4

    move-object/from16 v0, p9

    invoke-virtual {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(FF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v17, v4

    if-nez v4, :cond_4

    const/4 v3, 0x0

    :cond_1
    :goto_3
    return-object v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->d()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;

    invoke-interface/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->d()I

    move-result v8

    invoke-virtual/range {p9 .. p9}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v4

    float-to-int v12, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    move/from16 v19, p11

    invoke-direct/range {v3 .. v19}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;IIZFILcom/google/maps/api/android/lib6/gmm6/l/l;FFLcom/google/maps/api/android/lib6/gmm6/o/v;FLcom/google/maps/api/android/lib6/gmm6/o/u;Z)V

    invoke-direct {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->d()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v13, p3

    goto/16 :goto_0
.end method

.method private d()Z
    .locals 12

    const/high16 v11, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    const/4 v4, 0x6

    if-ge v0, v4, :cond_c

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->d()F

    move-result v0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    mul-float/2addr v4, v10

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    const/4 v4, 0x3

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->d()F

    move-result v0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    if-nez v0, :cond_6

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b(I)F

    move-result v6

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    cmpl-float v0, v6, v0

    if-lez v0, :cond_4

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v9, v4, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v9, v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    sub-float v4, v6, v4

    div-float/2addr v4, v6

    mul-float v6, v4, v11

    invoke-static {v8, v0, v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v4, v6

    invoke-static {v0, v8, v4, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v5, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->l:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_7

    move-object v0, v1

    :cond_2
    :goto_4
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->C:F

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->c:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->d:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v8

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->A:F

    iget v9, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->B:F

    mul-float/2addr v0, v9

    mul-float/2addr v0, v1

    div-float v1, v0, v10

    mul-int/lit8 v0, v8, 0x2

    new-array v9, v0, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0, v2, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move v0, v3

    :goto_5
    if-ge v0, v8, :cond_a

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v10, v0, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v6, v7, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v4, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v10

    aput-object v10, v9, v0

    mul-int/lit8 v10, v8, 0x2

    sub-int/2addr v10, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v11

    aput-object v11, v9, v10

    if-ne v0, v3, :cond_3

    invoke-virtual {v7, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v10

    aput-object v10, v9, v2

    mul-int/lit8 v10, v8, 0x2

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v11

    aput-object v11, v9, v10

    :cond_3
    invoke-virtual {v7, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2

    :cond_5
    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    :cond_6
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->d()F

    move-result v0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    packed-switch v4, :pswitch_data_0

    move-object v0, v1

    goto/16 :goto_3

    :pswitch_0
    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    sub-float/2addr v0, v4

    mul-float/2addr v0, v11

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-static {v5, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FF)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_1
    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->A:F

    mul-float/2addr v4, v10

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->B:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    sub-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-static {v5, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FF)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_2
    const/4 v4, 0x0

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    sub-float/2addr v0, v5

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->A:F

    mul-float/2addr v5, v10

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->B:F

    mul-float/2addr v5, v6

    sub-float/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-static {v5, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FF)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_3
    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    sub-float/2addr v0, v4

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-static {v5, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FF)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_4
    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    sub-float/2addr v0, v4

    const v4, 0x3f2b851f    # 0.67f

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->p:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->n:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-static {v5, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/l/l;FF)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v0

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    const/4 v4, 0x2

    if-lt v5, v4, :cond_9

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->d(I)F

    move-result v6

    move v4, v3

    :goto_6
    if-ge v4, v5, :cond_9

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->d(I)F

    move-result v7

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x42700000    # 60.0f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_8

    const/high16 v8, 0x43960000    # 300.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    move v4, v3

    :goto_7
    if-eqz v4, :cond_2

    move-object v0, v1

    goto/16 :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    move v4, v2

    goto :goto_7

    :cond_a
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/k;

    invoke-direct {v0, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/k;-><init>([Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->q:Lcom/google/maps/api/android/lib6/gmm6/l/k;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v1, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/j;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->D:I

    move v0, v3

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->J:Z

    if-nez v1, :cond_11

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a:Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-interface {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cp;->a()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne v2, v1, :cond_2

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_2

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->b(I)Lcom/google/maps/api/android/lib6/gmm6/l/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/w;->b()I

    move-result v7

    invoke-static {v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(I)I

    move-result v1

    const/16 v4, 0x80

    if-lt v1, v4, :cond_2

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->s:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->m:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->B:F

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/l/ad;FIII)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v1, :cond_5

    const/16 v1, 0x2710

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_11

    :cond_0
    :goto_4
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->b(Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I

    move-result v7

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->s:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->m:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->B:F

    const/16 v16, 0x0

    move-object/from16 v9, p1

    move-object v12, v4

    move v14, v6

    move v15, v7

    invoke-virtual/range {v8 .. v16}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/l/ad;FIII)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->d()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->A:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v1, v4, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FB)V

    aput-object v6, v3, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b()F

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput v1, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->e:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iput v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->f:F

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->d:F

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->d:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_10

    const/high16 v4, 0x43a50000    # 330.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_10

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->H:Z

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->h:Z

    if-eqz v1, :cond_8

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/b/e;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/b/g;->a:Lcom/google/maps/api/android/lib6/gmm6/b/g;

    invoke-direct {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/b/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/b/g;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->z:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->J:Z

    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v3, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    mul-int/lit8 v1, v7, 0x4

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;-><init>(IB)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;-><init>(IB)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->w:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    new-array v1, v7, [Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    new-array v8, v6, [F

    const/4 v1, 0x0

    const/4 v9, 0x0

    aput v9, v8, v1

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v7, :cond_a

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v5, v9, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    new-instance v10, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    const/4 v11, 0x0

    invoke-direct {v10, v2, v3, v4, v11}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;FB)V

    aput-object v10, v9, v1

    invoke-virtual {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v9

    add-int/lit8 v10, v1, 0x1

    aget v11, v8, v1

    add-float/2addr v9, v11

    aput v9, v8, v10

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->s:Lcom/google/maps/api/android/lib6/gmm6/o/u;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->m:Lcom/google/maps/api/android/lib6/gmm6/o/v;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->i()Lcom/google/maps/api/android/lib6/gmm6/l/ad;

    move-result-object v1

    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->B:F

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/u;->b(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/o/v;Lcom/google/maps/api/android/lib6/gmm6/l/ad;F)[F

    move-result-object v4

    const/high16 v1, 0x3f800000    # 1.0f

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    aget v2, v4, v2

    div-float v2, v1, v2

    const/4 v1, 0x0

    :goto_8
    array-length v3, v4

    if-ge v1, v3, :cond_c

    aget v3, v4, v1

    mul-float/2addr v3, v2

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    const/high16 v1, 0x3f800000    # 1.0f

    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    aget v2, v8, v2

    div-float v2, v1, v2

    new-array v5, v6, [F

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v6, :cond_d

    aget v3, v8, v1

    mul-float/2addr v3, v2

    aput v3, v8, v1

    sub-int v3, v7, v1

    const/high16 v9, 0x3f800000    # 1.0f

    aget v10, v8, v1

    sub-float/2addr v9, v10

    aput v9, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v6, :cond_e

    aget v7, v8, v1

    invoke-static {v7, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(F[FI)I

    move-result v3

    aget v7, v4, v3

    aput v7, v8, v1

    aget v7, v5, v1

    invoke-static {v7, v4, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(F[FI)I

    move-result v2

    aget v7, v4, v2

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c()F

    move-result v3

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v6, :cond_6

    aget v4, v8, v1

    mul-float/2addr v4, v2

    sub-int v7, v6, v1

    add-int/lit8 v7, v7, -0x1

    aget v7, v5, v7

    mul-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v9, v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->w:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v9, v7, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->w:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(FF)V

    if-lez v1, :cond_f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    add-int/lit8 v9, v1, -0x1

    aget-object v7, v7, v9

    iput v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->e:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    add-int/lit8 v7, v1, -0x1

    aget-object v4, v4, v7

    iput v3, v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->f:F

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p3

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->z:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->z:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/b/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)I

    move-result v1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->z:Lcom/google/maps/api/android/lib6/gmm6/b/e;

    :cond_12
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-interface {v2, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->y:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-eqz v1, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_25

    :cond_13
    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(ILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->M:[F

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;[F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->M:[F

    const/4 v5, 0x0

    aget v2, v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->M:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->M:[F

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;[F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->M:[F

    const/4 v6, 0x0

    aget v7, v1, v6

    sub-float v2, v7, v2

    aput v2, v1, v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->M:[F

    const/4 v2, 0x1

    aget v6, v1, v2

    sub-float v5, v6, v5

    aput v5, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->M:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->M:[F

    const/4 v5, 0x1

    aget v5, v2, v5

    mul-float v2, v1, v1

    mul-float v6, v5, v5

    add-float/2addr v2, v6

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1a

    const/high16 v1, 0x3f800000    # 1.0f

    move v2, v1

    :goto_e
    const/4 v1, 0x0

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_1b

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_f
    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v5, v1

    div-float/2addr v5, v6

    sub-float v5, v7, v5

    mul-float/2addr v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->y:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-nez v2, :cond_14

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->w:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    :goto_10
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->y:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1d

    const/4 v1, 0x1

    :goto_11
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->x:Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->y:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->w:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-ne v1, v2, :cond_20

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->w:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    :goto_12
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->y:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_1f

    const/4 v1, 0x1

    :goto_13
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->x:Z

    :goto_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->H:Z

    if-nez v1, :cond_25

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, v5, v1

    if-gtz v1, :cond_15

    const/high16 v1, -0x40c00000    # -0.75f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_25

    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v1

    mul-float/2addr v1, v5

    move v2, v1

    :goto_15
    const/4 v1, 0x0

    move v3, v1

    :goto_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    array-length v1, v1

    if-ge v3, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    array-length v1, v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_23

    const/16 v1, 0x1702

    invoke-interface {v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->x:Z

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->e:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->f:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-interface {v4, v1, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-interface {v4, v1, v5, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->e:F

    neg-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->f:F

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-interface {v4, v1, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->e:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->f:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v4, v1, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/16 v1, 0x1700

    invoke-interface {v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :goto_17
    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    aget-object v5, v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v6

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;

    iget-object v7, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/m;->b:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v8, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v8, v1, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r()F

    move-result v1

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    invoke-interface {v6, v8, v9, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v7, 0x42b40000    # 90.0f

    iget v8, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->d:F

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v6, v7, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_17

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v6, v2, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :cond_17
    iget v7, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->b:F

    mul-float/2addr v7, v1

    iget v5, v5, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;->c:F

    mul-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {v6, v7, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x4

    invoke-interface {v6, v1, v5, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_16

    :cond_18
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto/16 :goto_c

    :cond_19
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->k:I

    goto/16 :goto_d

    :cond_1a
    const/high16 v1, -0x40800000    # -1.0f

    move v2, v1

    goto/16 :goto_e

    :cond_1b
    const/high16 v1, -0x40800000    # -1.0f

    goto/16 :goto_f

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    goto/16 :goto_10

    :cond_1d
    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    goto/16 :goto_12

    :cond_1f
    const/4 v1, 0x0

    goto/16 :goto_13

    :cond_20
    const v1, -0x457ced91    # -0.001f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->w:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    :goto_18
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->y:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const v1, -0x457ced91    # -0.001f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_22

    const/4 v1, 0x1

    :goto_19
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->x:Z

    goto/16 :goto_14

    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    goto :goto_18

    :cond_22
    const/4 v1, 0x0

    goto :goto_19

    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->y:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    mul-int/lit8 v5, v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    goto/16 :goto_17

    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->r:[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ad;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x1702

    invoke-interface {v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v4}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/16 v1, 0x1700

    invoke-interface {v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    goto/16 :goto_4

    :cond_25
    move v2, v3

    goto/16 :goto_15
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ce;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->o:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ce;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->A:F

    div-float v3, v0, v3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->j:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->a(F)I

    move-result v3

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->k:I

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->E:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->F:F

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const v0, 0x3f666666    # 0.9f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3fa00000    # 1.25f

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_2

    move v0, v1

    :goto_3
    const/high16 v3, 0x10000

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->k:I

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->w:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->u:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->v:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->w:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->d()Z

    move-result v0

    return v0
.end method

.method public final k()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->L:F

    return v0
.end method

.method public final m()Lcom/google/maps/api/android/lib6/gmm6/l/q;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->q:Lcom/google/maps/api/android/lib6/gmm6/l/k;

    return-object v0
.end method

.method public final o()I
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->f:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->I:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->F:F

    const/high16 v3, 0x41f00000    # 30.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->E:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->D:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->G:I

    int-to-float v2, v2

    int-to-float v1, v1

    const v3, 0x3c8efa35

    mul-float/2addr v1, v3

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ac;->K:Ljava/lang/String;

    return-object v0
.end method
