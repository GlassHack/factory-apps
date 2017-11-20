.class public final Lcom/google/h/a/b/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V
    .locals 16

    .prologue
    .line 19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->b:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/h/a/b/b/a/b;->a:I

    if-eq v2, v3, :cond_0

    .line 20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Number of columns in A doesn\'t match number of rows in B (%d != %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->b:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/h/a/b/b/a/b;->b:I

    if-eq v2, v3, :cond_2

    .line 27
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "C has wrong dimensions (should be %d x %d but is %d x %d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 36
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "c must be a different object from a or b"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v3, v4, :cond_7

    .line 46
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int v10, v2, v4

    .line 47
    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    .line 48
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ge v5, v6, :cond_6

    .line 50
    const-wide/16 v6, 0x0

    move-wide v8, v6

    move v7, v5

    move v6, v2

    .line 53
    :goto_2
    if-ge v6, v10, :cond_5

    .line 55
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v12, v11, v7

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v14, v11, v6

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 54
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 58
    :cond_5
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    aput-wide v8, v6, v4

    .line 49
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 44
    :cond_6
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v3, v4

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 61
    :cond_7
    return-void
.end method

.method public static b(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V
    .locals 16

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->b:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/h/a/b/b/a/b;->a:I

    if-eq v2, v3, :cond_0

    .line 70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Number of columns in A doesn\'t match number of rows in B (%d != %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->b:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/h/a/b/b/a/b;->b:I

    if-eq v2, v3, :cond_2

    .line 77
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "C has wrong dimensions (should be %d x %d but is %d x %d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 86
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "c must be a different object from a or b"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v3, v4, :cond_7

    .line 96
    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int v10, v2, v4

    .line 97
    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    .line 98
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ge v5, v6, :cond_6

    .line 100
    const-wide/16 v6, 0x0

    move-wide v8, v6

    move v7, v5

    move v6, v2

    .line 103
    :goto_2
    if-ge v6, v10, :cond_5

    .line 105
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v12, v11, v7

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v14, v11, v6

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 104
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 108
    :cond_5
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v12, v6, v4

    add-double/2addr v8, v12

    aput-wide v8, v6, v4

    .line 99
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 94
    :cond_6
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v3, v4

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v2, v4

    goto :goto_0

    .line 111
    :cond_7
    return-void
.end method

.method public static c(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V
    .locals 16

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->b:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/h/a/b/b/a/b;->b:I

    if-eq v2, v3, :cond_0

    .line 194
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Number of columns in A doesn\'t match number of rows in B\' (%d != %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->b:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/h/a/b/b/a/b;->a:I

    if-eq v2, v3, :cond_2

    .line 201
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "C has wrong dimensions (should be %d x %d but is %d x %d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p2

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 210
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "c must be a different object from a or b"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 217
    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v3, v4, :cond_7

    .line 220
    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/h/a/b/b/a/b;->c:I

    .line 221
    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    .line 222
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ge v5, v6, :cond_6

    .line 224
    const-wide/16 v6, 0x0

    move-wide v8, v6

    move v7, v5

    move v6, v2

    .line 227
    :goto_2
    if-ge v6, v10, :cond_5

    .line 229
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v12, v11, v7

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v14, v11, v6

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 228
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v7, v11

    move-object/from16 v0, p1

    iget v11, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v6, v11

    goto :goto_2

    .line 232
    :cond_5
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    aput-wide v8, v6, v4

    .line 223
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 218
    :cond_6
    move-object/from16 v0, p2

    iget v4, v0, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_7
    return-void
.end method

.method public static d(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V
    .locals 6

    .prologue
    .line 243
    invoke-static {p0, p1, p2}, Lcom/google/h/a/b/b/a/d;->f(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 245
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v0, v1, :cond_0

    .line 246
    iget-object v1, p2, Lcom/google/h/a/b/b/a/b;->d:[D

    iget-object v2, p0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v2, v2, v0

    iget-object v4, p1, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v4, v4, v0

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method public static e(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V
    .locals 6

    .prologue
    .line 269
    invoke-static {p0, p1, p2}, Lcom/google/h/a/b/b/a/d;->f(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V

    .line 271
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p2, Lcom/google/h/a/b/b/a/b;->d:[D

    iget-object v2, p0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v2, v2, v0

    iget-object v4, p1, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v4, v4, v0

    sub-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method private static f(Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;Lcom/google/h/a/b/b/a/b;)V
    .locals 8

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 342
    iget v0, p0, Lcom/google/h/a/b/b/a/b;->b:I

    iget v1, p1, Lcom/google/h/a/b/b/a/b;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/h/a/b/b/a/b;->a:I

    iget v1, p1, Lcom/google/h/a/b/b/a/b;->a:I

    if-eq v0, v1, :cond_1

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dimensions of A and B don\'t match (A is %d x %d and B is %d x %d)"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p1, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p1, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    iget v0, p2, Lcom/google/h/a/b/b/a/b;->a:I

    iget v1, p0, Lcom/google/h/a/b/b/a/b;->a:I

    if-ne v0, v1, :cond_2

    iget v0, p2, Lcom/google/h/a/b/b/a/b;->b:I

    iget v1, p0, Lcom/google/h/a/b/b/a/b;->b:I

    if-eq v0, v1, :cond_3

    .line 352
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output has wrong dimensions (should be %d x %d but is %d x %d)"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p2, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_3
    return-void
.end method
