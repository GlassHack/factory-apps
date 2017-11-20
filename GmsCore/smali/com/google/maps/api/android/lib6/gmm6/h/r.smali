.class Lcom/google/maps/api/android/lib6/gmm6/h/r;
.super Lcom/google/maps/api/android/lib6/gmm6/h/a;


# instance fields
.field private b:[D


# direct methods
.method protected constructor <init>([D)V
    .locals 2

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/a;-><init>()V

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create PolygonVertexList from incomplete array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    return-void
.end method

.method static a([D)Lcom/google/maps/api/android/lib6/gmm6/h/r;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;-><init>([D)V

    return-object v0
.end method

.method static a([D[I)Lcom/google/maps/api/android/lib6/gmm6/h/r;
    .locals 3

    const/4 v2, 0x2

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    aget v0, p1, v0

    if-nez v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ChainStartIndices for PolygonVertexList.create invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    if-ne v0, v2, :cond_2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;-><init>([D)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/s;

    invoke-direct {v0, p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/s;-><init>([D[I)V

    goto :goto_0
.end method

.method private a(IIII)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(III)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    invoke-virtual {p0, p1, p2, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(III)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(III)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(III)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(III)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private b(III)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(II)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(II)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(II)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(II)I

    move-result v2

    invoke-virtual {p0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(II)I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(III)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)D
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v1, p1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final a(I[DII)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v2, p3, 0x2

    mul-int/lit8 v3, p4, 0x2

    invoke-static {v0, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/maps/api/android/lib6/gmm6/h/r;

    return v0
.end method

.method public final b(I)D
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/h/y;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/y;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/h/y;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/a;)V

    return-object v0
.end method

.method protected final b(II)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v2, p1, 0x2

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p1, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    const-string v2, ", ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v3, v0, 0x2

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)I
    .locals 1

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->h(I)I

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/h/u;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/u;

    invoke-direct {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/h/u;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/r;)V

    return-object v0
.end method

.method public final d()D
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->i(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public d(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->h(I)I

    move-result v0

    return v0
.end method

.method public final e(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;
    .locals 18

    invoke-virtual/range {p0 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->c(I)I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->d(I)I

    move-result v10

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v9, v1, v10}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(III)D

    move-result-wide v12

    const-wide/16 v2, 0x0

    cmpg-double v2, v12, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v4, p1, 0x2

    aget-wide v14, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v4, v9, 0x2

    aget-wide v4, v3, v4

    cmpg-double v3, v4, v14

    if-gez v3, :cond_1

    const/4 v6, 0x1

    :goto_1
    cmpl-double v3, v4, v14

    if-nez v3, :cond_2

    const/4 v3, 0x1

    move v8, v3

    :goto_2
    cmpl-double v3, v4, v14

    if-lez v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v5, v10, 0x2

    aget-wide v16, v4, v5

    cmpg-double v4, v16, v14

    if-gez v4, :cond_4

    const/4 v5, 0x1

    :goto_4
    cmpl-double v4, v16, v14

    if-nez v4, :cond_5

    const/4 v4, 0x1

    move v7, v4

    :goto_5
    cmpl-double v4, v16, v14

    if-lez v4, :cond_6

    const/4 v4, 0x1

    :goto_6
    if-eqz v8, :cond_a

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v3, v10, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v3, v9, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_7

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    :goto_7
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move v8, v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    move v7, v4

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->d:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v3, v9, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_9

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->e:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    goto :goto_7

    :cond_9
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->c:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    goto :goto_7

    :cond_a
    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-nez v11, :cond_c

    if-nez v8, :cond_b

    if-eqz v7, :cond_c

    :cond_b
    if-eqz v8, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-wide v10, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v9, p1, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-wide v12, v2, v9

    cmpg-double v2, v10, v12

    if-gez v2, :cond_e

    move v2, v4

    :cond_c
    :goto_8
    if-eqz v2, :cond_13

    if-eqz v3, :cond_11

    if-nez v4, :cond_d

    if-eqz v7, :cond_11

    :cond_d
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->a:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    goto :goto_7

    :cond_e
    move v2, v5

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v9, v10, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-wide v10, v2, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v9, p1, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-wide v12, v2, v9

    cmpg-double v2, v10, v12

    if-gez v2, :cond_10

    move v2, v6

    goto :goto_8

    :cond_10
    move v2, v3

    goto :goto_8

    :cond_11
    if-eqz v6, :cond_17

    if-nez v5, :cond_12

    if-eqz v7, :cond_17

    :cond_12
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->b:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    goto/16 :goto_7

    :cond_13
    if-nez v3, :cond_14

    if-eqz v8, :cond_15

    :cond_14
    if-eqz v4, :cond_15

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->e:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    goto/16 :goto_7

    :cond_15
    if-nez v6, :cond_16

    if-eqz v8, :cond_17

    :cond_16
    if-eqz v5, :cond_17

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    goto/16 :goto_7

    :cond_17
    if-nez v6, :cond_18

    if-eqz v8, :cond_1a

    :cond_18
    if-nez v4, :cond_19

    if-eqz v7, :cond_1a

    :cond_19
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->c:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    goto/16 :goto_7

    :cond_1a
    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/h/c;->d:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    goto/16 :goto_7
.end method

.method public final e()Z
    .locals 14

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a:I

    if-ge v8, v0, :cond_7

    invoke-virtual {p0, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->c(I)I

    move-result v2

    invoke-virtual {p0, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->d(I)I

    move-result v9

    invoke-virtual {p0, v2, v8, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(III)D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(I)D

    move-result-wide v0

    invoke-virtual {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b(I)D

    move-result-wide v2

    invoke-virtual {p0, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(I)D

    move-result-wide v4

    invoke-virtual {p0, v8}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b(I)D

    move-result-wide v6

    invoke-virtual {p0, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(I)D

    move-result-wide v10

    invoke-virtual {p0, v9}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b(I)D

    move-result-wide v12

    cmpl-double v9, v0, v4

    if-eqz v9, :cond_0

    cmpl-double v9, v10, v4

    if-nez v9, :cond_1

    :cond_0
    cmpl-double v9, v0, v4

    if-nez v9, :cond_7

    cmpl-double v9, v10, v4

    if-nez v9, :cond_7

    :cond_1
    invoke-static/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v9

    if-ltz v9, :cond_2

    invoke-static/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v0

    if-nez v0, :cond_4

    cmpg-double v0, v2, v6

    if-gez v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    move v9, v0

    :goto_1
    move-wide v0, v10

    move-wide v2, v12

    invoke-static/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v0

    if-ltz v0, :cond_3

    move-wide v0, v10

    move-wide v2, v12

    invoke-static/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v0

    if-gez v0, :cond_5

    cmpg-double v0, v12, v6

    if-gez v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-ne v9, v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    move v9, v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/maps/api/android/lib6/gmm6/h/r;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/h/r;

    invoke-virtual {p1, p0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 11

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->c()Lcom/google/maps/api/android/lib6/gmm6/h/u;

    move-result-object v2

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/h/d;

    invoke-direct {v3, p0}, Lcom/google/maps/api/android/lib6/gmm6/h/d;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/r;)V

    move v0, v6

    :goto_0
    iget v1, v2, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c:I

    if-ge v0, v1, :cond_b

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->j(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->d(I)I

    move-result v4

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e(I)I

    move-result v5

    invoke-virtual {v2, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->g(II)I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->g(II)I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v1, v8

    :goto_1
    if-eqz v1, :cond_a

    move v6, v8

    :cond_1
    :goto_2
    return v6

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->e(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;

    move-result-object v7

    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/h/c;->d:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-ne v7, v9, :cond_3

    invoke-virtual {v3, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(II)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v3, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(II)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_3
    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/h/c;->c:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-ne v7, v9, :cond_4

    invoke-virtual {v3, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(II)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v3, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(II)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_4
    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/h/c;->a:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-ne v7, v9, :cond_5

    invoke-virtual {v3, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(II)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v3, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(II)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_5
    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/h/c;->b:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-ne v7, v9, :cond_6

    invoke-virtual {v3, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(II)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v3, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(II)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_6
    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/h/c;->e:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-ne v7, v9, :cond_7

    invoke-virtual {v3, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(II)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v3, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->a(II)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    sget-object v9, Lcom/google/maps/api/android/lib6/gmm6/h/c;->f:Lcom/google/maps/api/android/lib6/gmm6/h/c;

    if-ne v7, v9, :cond_9

    invoke-virtual {v3, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(II)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3, v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/d;->b(II)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move v1, v8

    goto :goto_1

    :cond_9
    move v1, v6

    goto :goto_1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    move v1, v6

    :goto_3
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a:I

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v7, v0

    :goto_4
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a:I

    if-ge v7, v0, :cond_11

    invoke-virtual {p0, v1, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(II)I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->c(I)I

    move-result v9

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->d(I)I

    move-result v10

    if-eq v9, v7, :cond_d

    if-eq v10, v7, :cond_d

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->c(I)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->d(I)I

    move-result v2

    invoke-virtual {p0, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->c(I)I

    move-result v5

    invoke-virtual {p0, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->d(I)I

    move-result v4

    invoke-virtual {p0, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(II)I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(II)I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v5, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(II)I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v7, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(II)I

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v1, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b(III)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, v1, v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b(III)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, v1, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b(III)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, v1, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b(III)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, v1, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b(III)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, v1, v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b(III)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    move v0, v6

    :goto_5
    if-nez v0, :cond_d

    invoke-virtual {p0, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->c(I)I

    move-result v3

    invoke-virtual {p0, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->d(I)I

    move-result v5

    move-object v0, p0

    move v2, v9

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(IIIII)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_d
    move v6, v8

    goto/16 :goto_2

    :cond_e
    invoke-direct {p0, v3, v1, v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(IIII)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a(IIIII)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v8

    goto :goto_5

    :cond_f
    move v0, v6

    goto :goto_5

    :cond_10
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_4

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method final i(I)D
    .locals 18

    invoke-virtual/range {p0 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->g(I)I

    move-result v8

    add-int/lit8 v2, p1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->g(I)I

    move-result v13

    sub-int v2, v13, v8

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    add-int/lit8 v3, v13, -0x1

    mul-int/lit8 v3, v3, 0x2

    aget-wide v14, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    add-int/lit8 v3, v13, -0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-wide v16, v2, v3

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    move-wide v10, v6

    move v12, v8

    move-wide v6, v4

    :goto_1
    if-ge v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v5, v12, 0x2

    aget-wide v4, v4, v5

    sub-double v8, v4, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b:[D

    mul-int/lit8 v5, v12, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    sub-double v4, v4, v16

    mul-double/2addr v6, v4

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    add-double/2addr v2, v10

    add-int/lit8 v6, v12, 0x1

    move-wide v10, v2

    move v12, v6

    move-wide v2, v4

    move-wide v6, v8

    goto :goto_1

    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, v10, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->g(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->b(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
