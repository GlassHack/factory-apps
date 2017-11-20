.class abstract Lcom/google/maps/api/android/lib6/gmm6/h/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(III)I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(III)D

    move-result-wide v0

    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpl-double v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)D
.end method

.method public final a(III)D
    .locals 12

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(I)D

    move-result-wide v2

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I)D

    move-result-wide v4

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(I)D

    move-result-wide v6

    invoke-virtual {p0, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I)D

    move-result-wide v8

    invoke-virtual {p0, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(I)D

    move-result-wide v10

    invoke-static/range {v0 .. v11}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract a()I
.end method

.method public final a(II)I
    .locals 8

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I)D

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(I)D

    move-result-wide v2

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I)D

    move-result-wide v4

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(I)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/h/x;->a(DDDD)I

    move-result v0

    return v0
.end method

.method abstract a(I[DII)V
.end method

.method public final a(IIIII)Z
    .locals 8

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p2, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p4, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p2, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p4, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2, p1, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p3, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v0

    invoke-virtual {p0, p4, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-virtual {p0, p3, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v0

    invoke-virtual {p0, p5, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v1

    if-eq v0, v1, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p2, p1, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, p2, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v0

    invoke-virtual {p0, p4, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-direct {p0, p2, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    invoke-direct {p0, p2, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v1

    if-eq v0, v1, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v6

    goto :goto_0

    :cond_8
    invoke-direct {p0, p3, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p3, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v0

    invoke-virtual {p0, p5, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v1

    if-eq v0, v1, :cond_9

    invoke-direct {p0, p3, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    invoke-direct {p0, p3, p1, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v1

    if-eq v0, v1, :cond_9

    move v0, v5

    goto :goto_0

    :cond_9
    move v0, v6

    goto :goto_0

    :cond_a
    invoke-direct {p0, p2, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    if-nez v0, :cond_14

    move v0, p5

    move v2, p4

    move v3, p3

    move v4, p2

    :goto_1
    invoke-direct {p0, p2, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v7

    if-nez v7, :cond_b

    move v0, p3

    move v2, p4

    move v3, p5

    move v4, p2

    :cond_b
    invoke-direct {p0, p3, p1, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v7

    if-nez v7, :cond_c

    move v0, p2

    move v2, p5

    move v3, p4

    move v4, p3

    :cond_c
    invoke-direct {p0, p4, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v7

    if-nez v7, :cond_d

    move v0, p3

    move v2, p2

    move v3, p5

    move v4, p4

    :cond_d
    if-eq v4, v1, :cond_f

    invoke-virtual {p0, p1, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v1

    invoke-virtual {p0, p1, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v3

    if-eq v1, v3, :cond_e

    invoke-direct {p0, v4, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v1

    invoke-direct {p0, v4, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v3

    if-ne v1, v3, :cond_e

    invoke-direct {p0, v2, p1, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v1

    invoke-direct {p0, v2, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    if-ne v1, v0, :cond_e

    move v0, v5

    goto/16 :goto_0

    :cond_e
    move v0, v6

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, p2, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    invoke-direct {p0, p2, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v1

    if-eq v0, v1, :cond_12

    invoke-direct {p0, p2, p1, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    invoke-direct {p0, p2, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v1

    if-ne v0, v1, :cond_10

    :goto_2
    invoke-direct {p0, p3, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    invoke-direct {p0, p3, p1, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v1

    if-eq v0, v1, :cond_11

    move v0, v5

    goto/16 :goto_0

    :cond_10
    move p3, p5

    goto :goto_2

    :cond_11
    move v0, v6

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0, p2, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    invoke-direct {p0, p2, p1, p4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v1

    if-ne v0, v1, :cond_13

    invoke-direct {p0, p4, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v0

    invoke-direct {p0, p4, p1, p5}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->b(III)I

    move-result v1

    if-eq v0, v1, :cond_13

    move v0, v5

    goto/16 :goto_0

    :cond_13
    move v0, v6

    goto/16 :goto_0

    :cond_14
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto/16 :goto_1
.end method

.method public abstract b(I)D
.end method

.method public abstract c(I)I
.end method

.method public abstract d(I)I
.end method

.method public abstract e(I)Lcom/google/maps/api/android/lib6/gmm6/h/c;
.end method

.method public f(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public g(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected final h(I)I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a:I

    rem-int v0, p1, v0

    if-gez v0, :cond_1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
