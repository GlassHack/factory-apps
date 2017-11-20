.class public final Lcom/google/h/a/b/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/h/a/b/b/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/h/a/b/b/a/b;)V
    .locals 14

    .prologue
    .line 35
    iget v0, p1, Lcom/google/h/a/b/b/a/b;->a:I

    iget v1, p1, Lcom/google/h/a/b/b/a/b;->b:I

    if-eq v0, v1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input matrix must be square (is size %d x %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget v0, p1, Lcom/google/h/a/b/b/a/b;->a:I

    iget-object v1, p0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v1, v1, Lcom/google/h/a/b/b/a/c;->a:I

    if-ge v1, v0, :cond_2

    :cond_1
    new-instance v1, Lcom/google/h/a/b/b/a/c;

    invoke-direct {v1, v0, v0}, Lcom/google/h/a/b/b/a/c;-><init>(II)V

    iput-object v1, p0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    :cond_2
    iget-object v1, p0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    invoke-virtual {v1, v0, v0}, Lcom/google/h/a/b/b/a/c;->b(II)V

    .line 48
    iget v1, p1, Lcom/google/h/a/b/b/a/b;->a:I

    .line 49
    const/4 v0, 0x0

    :goto_0
    iget v2, p1, Lcom/google/h/a/b/b/a/b;->c:I

    if-ge v0, v2, :cond_8

    .line 52
    const-wide/16 v2, 0x0

    move v8, v0

    .line 53
    :goto_1
    if-ge v8, v1, :cond_7

    .line 55
    iget-object v4, p1, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v6, v4, v8

    .line 56
    iget v4, p1, Lcom/google/h/a/b/b/a/b;->a:I

    sub-int v5, v8, v4

    iget v4, p1, Lcom/google/h/a/b/b/a/b;->a:I

    sub-int v4, v0, v4

    .line 57
    :goto_2
    if-ltz v4, :cond_3

    .line 59
    iget-object v9, p0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget-object v9, v9, Lcom/google/h/a/b/b/a/c;->d:[D

    aget-wide v10, v9, v5

    iget-object v9, p0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget-object v9, v9, Lcom/google/h/a/b/b/a/c;->d:[D

    aget-wide v12, v9, v4

    mul-double/2addr v10, v12

    sub-double/2addr v6, v10

    .line 58
    iget v9, p1, Lcom/google/h/a/b/b/a/b;->a:I

    sub-int/2addr v5, v9

    iget v9, p1, Lcom/google/h/a/b/b/a/b;->a:I

    sub-int/2addr v4, v9

    goto :goto_2

    .line 62
    :cond_3
    if-ne v8, v0, :cond_6

    .line 64
    const-wide/16 v2, 0x0

    cmpg-double v2, v6, v2

    if-gez v2, :cond_5

    .line 66
    const-wide v2, -0x40af9db22d0e5604L    # -0.001

    cmpg-double v2, v6, v2

    if-gez v2, :cond_4

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input matrix must be positive definite\nMatrix: %s\nInternal Sum: %f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_4
    const-wide/16 v2, 0x0

    .line 76
    :goto_3
    iget-object v4, p0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget-object v4, v4, Lcom/google/h/a/b/b/a/c;->d:[D

    aput-wide v2, v4, v8

    .line 53
    :goto_4
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_1

    .line 74
    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    goto :goto_3

    .line 79
    :cond_6
    iget-object v4, p0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget-object v4, v4, Lcom/google/h/a/b/b/a/c;->d:[D

    div-double/2addr v6, v2

    aput-wide v6, v4, v8

    goto :goto_4

    .line 83
    :cond_7
    iget v2, p1, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/2addr v1, v2

    .line 49
    iget v2, p1, Lcom/google/h/a/b/b/a/b;->a:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    .line 85
    :cond_8
    return-void
.end method

.method public final b(Lcom/google/h/a/b/b/a/b;)V
    .locals 18

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    if-nez v2, :cond_0

    .line 145
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must call decompose before calling invert"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->a:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v3, v3, Lcom/google/h/a/b/b/a/c;->a:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/h/a/b/b/a/b;->b:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v3, v3, Lcom/google/h/a/b/b/a/c;->b:I

    if-eq v2, v3, :cond_2

    .line 149
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "output has the wrong size, should be %d x %d but is %d x %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v6, v6, Lcom/google/h/a/b/b/a/c;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v6, v6, Lcom/google/h/a/b/b/a/c;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/h/a/b/b/a/b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v11, v2, Lcom/google/h/a/b/b/a/c;->c:I

    .line 164
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v10, v2

    .line 165
    :goto_0
    if-ge v10, v11, :cond_6

    move v2, v3

    move v4, v5

    .line 169
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v6, v6, Lcom/google/h/a/b/b/a/c;->a:I

    if-ge v2, v6, :cond_5

    .line 170
    if-ne v3, v2, :cond_3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 171
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v8, v8, Lcom/google/h/a/b/b/a/c;->a:I

    sub-int v9, v4, v8

    add-int/lit8 v8, v2, -0x1

    move/from16 v16, v8

    move/from16 v17, v9

    move-wide v8, v6

    move/from16 v6, v16

    move/from16 v7, v17

    .line 172
    :goto_3
    if-lt v6, v3, :cond_4

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget-object v12, v12, Lcom/google/h/a/b/b/a/c;->d:[D

    aget-wide v12, v12, v7

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    add-int v15, v10, v6

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    sub-double/2addr v8, v12

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v12, v12, Lcom/google/h/a/b/b/a/c;->a:I

    sub-int/2addr v7, v12

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 170
    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 177
    :cond_4
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    add-int v7, v10, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget-object v12, v12, Lcom/google/h/a/b/b/a/c;->d:[D

    aget-wide v12, v12, v4

    div-double/2addr v8, v12

    aput-wide v8, v6, v7

    .line 169
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v6, v6, Lcom/google/h/a/b/b/a/c;->a:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v2, v2, Lcom/google/h/a/b/b/a/c;->a:I

    add-int/2addr v2, v10

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v4, v4, Lcom/google/h/a/b/b/a/c;->a:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v4

    move v10, v2

    goto :goto_0

    .line 183
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v2, v2, Lcom/google/h/a/b/b/a/c;->a:I

    sub-int v3, v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v2, v2, Lcom/google/h/a/b/b/a/c;->a:I

    add-int/lit8 v2, v2, -0x1

    move v8, v2

    move v9, v3

    .line 184
    :goto_4
    if-ltz v8, :cond_9

    .line 188
    add-int/lit8 v3, v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v2, v2, Lcom/google/h/a/b/b/a/c;->a:I

    add-int/lit8 v2, v2, -0x1

    move v6, v2

    move v7, v3

    .line 189
    :goto_5
    if-lt v6, v8, :cond_8

    .line 191
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    add-int v3, v9, v6

    aget-wide v4, v2, v3

    .line 192
    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v2, v6, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v10, v10, Lcom/google/h/a/b/b/a/c;->a:I

    if-ge v2, v10, :cond_7

    .line 193
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget-object v10, v10, Lcom/google/h/a/b/b/a/c;->d:[D

    aget-wide v12, v10, v3

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    add-int v14, v9, v2

    aget-wide v14, v10, v14

    mul-double/2addr v12, v14

    sub-double/2addr v4, v12

    .line 192
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 196
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    add-int v3, v9, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget-object v10, v10, Lcom/google/h/a/b/b/a/c;->d:[D

    aget-wide v12, v10, v7

    div-double/2addr v4, v12

    aput-wide v4, v2, v3

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v2, v2, Lcom/google/h/a/b/b/a/c;->a:I

    add-int/lit8 v2, v2, 0x1

    sub-int v3, v7, v2

    add-int/lit8 v2, v6, -0x1

    move v6, v2

    move v7, v3

    goto :goto_5

    .line 185
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v2, v2, Lcom/google/h/a/b/b/a/c;->a:I

    sub-int v3, v9, v2

    add-int/lit8 v2, v8, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v4, v4, Lcom/google/h/a/b/b/a/c;->a:I

    move v8, v2

    move v9, v3

    goto :goto_4

    .line 201
    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v2, v2, Lcom/google/h/a/b/b/a/c;->a:I

    move v4, v2

    move v5, v3

    :goto_7
    if-ge v4, v11, :cond_b

    .line 202
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v3, v5, :cond_a

    .line 203
    add-int v6, v4, v3

    .line 204
    add-int v7, v2, v5

    .line 205
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/h/a/b/b/a/b;->d:[D

    aget-wide v12, v9, v7

    aput-wide v12, v8, v6

    .line 202
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v6, v6, Lcom/google/h/a/b/b/a/c;->a:I

    add-int/2addr v2, v6

    goto :goto_8

    .line 201
    :cond_a
    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/h/a/b/b/a/a;->a:Lcom/google/h/a/b/b/a/c;

    iget v2, v2, Lcom/google/h/a/b/b/a/c;->a:I

    add-int/2addr v2, v4

    move v4, v2

    move v5, v3

    goto :goto_7

    .line 208
    :cond_b
    return-void
.end method
