.class final Lcom/google/maps/api/android/lib6/gmm6/h/f;
.super Lcom/google/maps/api/android/lib6/gmm6/h/u;


# instance fields
.field private d:[Z


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/h/r;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/r;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method private static a([DDDII)I
    .locals 5

    move v0, p5

    :goto_0
    if-ge v0, p6, :cond_1

    mul-int/lit8 v1, v0, 0x2

    aget-wide v2, p0, v1

    cmpl-double v1, v2, p1

    if-nez v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, p0, v1

    cmpl-double v1, v2, p3

    if-nez v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static a(DDDDDD)Z
    .locals 8

    sub-double v0, p0, p4

    sub-double v2, p2, p6

    sub-double v4, p8, p4

    sub-double v6, p10, p6

    mul-double/2addr v0, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a([I)Lcom/google/maps/api/android/lib6/gmm6/h/u;
    .locals 30

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->e()I

    move-result v2

    move-object/from16 v0, p1

    array-length v3, v0

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    new-array v3, v2, [D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->g(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I[DII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([ZZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v2, v4, :cond_9

    aget v5, p1, v2

    add-int/lit8 v4, v2, 0x1

    aget v6, p1, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->f(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->f(I)I

    move-result v4

    move/from16 v22, v4

    move/from16 v23, v5

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->g(I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    add-int/lit8 v5, v22, 0x1

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->g(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v4, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v7, v6}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(I)D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a([DDDII)I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    invoke-static/range {v3 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a([DDDII)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_a

    const/4 v8, 0x0

    move/from16 v26, v8

    move/from16 v25, v10

    :goto_3
    if-nez v26, :cond_6

    add-int/lit8 v8, v25, -0x1

    rem-int/2addr v8, v9

    if-gez v8, :cond_1

    add-int/2addr v8, v9

    :cond_1
    add-int/lit8 v10, v25, 0x1

    rem-int/2addr v10, v9

    if-gez v10, :cond_3

    add-int/2addr v10, v9

    move/from16 v24, v10

    :goto_4
    mul-int/lit8 v10, v8, 0x2

    aget-wide v10, v3, v10

    mul-int/lit8 v12, v8, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-wide v12, v3, v12

    mul-int/lit8 v14, v25, 0x2

    aget-wide v14, v3, v14

    mul-int/lit8 v16, v25, 0x2

    add-int/lit8 v16, v16, 0x1

    aget-wide v16, v3, v16

    mul-int/lit8 v18, v24, 0x2

    aget-wide v18, v3, v18

    mul-int/lit8 v20, v24, 0x2

    add-int/lit8 v20, v20, 0x1

    aget-wide v20, v3, v20

    invoke-static/range {v10 .. v21}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a(DDDDDD)Z

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->b(I)D

    move-result-wide v10

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->c(I)D

    move-result-wide v12

    mul-int/lit8 v14, v25, 0x2

    aget-wide v14, v3, v14

    mul-int/lit8 v16, v25, 0x2

    add-int/lit8 v16, v16, 0x1

    aget-wide v16, v3, v16

    mul-int/lit8 v18, v24, 0x2

    aget-wide v18, v3, v18

    mul-int/lit8 v20, v24, 0x2

    add-int/lit8 v20, v20, 0x1

    aget-wide v20, v3, v20

    invoke-static/range {v10 .. v21}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a(DDDDDD)Z

    move-result v24

    mul-int/lit8 v10, v8, 0x2

    aget-wide v10, v3, v10

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-wide v12, v3, v8

    mul-int/lit8 v8, v25, 0x2

    aget-wide v14, v3, v8

    mul-int/lit8 v8, v25, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-wide v16, v3, v8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->b(I)D

    move-result-wide v18

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->c(I)D

    move-result-wide v20

    invoke-static/range {v10 .. v21}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a(DDDDDD)Z

    move-result v8

    if-eqz v29, :cond_4

    if-eqz v24, :cond_5

    if-eqz v8, :cond_5

    :cond_2
    add-int/lit8 v8, v25, 0x1

    invoke-static/range {v3 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a([DDDII)I

    move-result v25

    goto/16 :goto_3

    :cond_3
    move/from16 v24, v10

    goto/16 :goto_4

    :cond_4
    if-nez v24, :cond_2

    if-nez v8, :cond_2

    :cond_5
    const/4 v8, 0x1

    move/from16 v26, v8

    goto/16 :goto_3

    :cond_6
    move/from16 v8, v25

    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I)D

    move-result-wide v10

    cmpl-double v4, v10, v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(I)D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_8

    :cond_7
    sub-int v4, v9, v8

    add-int v5, v8, v28

    sub-int v5, v5, v27

    add-int/lit8 v5, v5, 0x2

    mul-int/lit8 v6, v8, 0x2

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v8, 0x1

    sub-int v5, v28, v23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    move/from16 v0, v23

    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I[DII)V

    add-int/2addr v4, v5

    sub-int v5, v23, v27

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    move/from16 v0, v27

    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I[DII)V

    sub-int v4, v28, v27

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v22

    :goto_6
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    :cond_8
    sub-int v4, v9, v8

    add-int/lit8 v4, v4, -0x1

    add-int v5, v8, v28

    sub-int v5, v5, v27

    add-int/lit8 v6, v8, 0x1

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v8, 0x1

    sub-int v5, v28, v23

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    move/from16 v0, v23

    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I[DII)V

    add-int/2addr v4, v5

    sub-int v5, v23, v27

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    move/from16 v0, v27

    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I[DII)V

    sub-int v4, v28, v27

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v22

    goto :goto_6

    :cond_9
    new-instance p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/u;-><init>([D)V

    goto/16 :goto_0

    :cond_a
    move v8, v10

    goto/16 :goto_5

    :cond_b
    move/from16 v22, v4

    move/from16 v23, v6

    move v6, v5

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/h/f;

    return v0
.end method

.method public final c(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->f(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v3, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->f(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    aput-boolean v1, v0, v3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    aput-boolean v1, v0, v2

    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/j;

    const-string v1, "Some outer chains have not been cut."

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/h/f;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/h/f;

    instance-of v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;

    if-eqz v2, :cond_3

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/f;->d:[Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
