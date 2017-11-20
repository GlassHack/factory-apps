.class public abstract Lcom/google/maps/api/android/lib6/gmm6/i/w;
.super Lcom/google/maps/api/android/lib6/gmm6/i/e;


# instance fields
.field protected c:F

.field protected d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V

    const v0, 0x3f490fdb

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/w;->e:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/w;->f:F

    const/high16 v0, 0x3e000000    # 0.125f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/w;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/w;->d:F

    return-void
.end method


# virtual methods
.method protected abstract a(F)F
.end method

.method protected abstract a(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F
.end method

.method public final a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/i/f;
    .locals 11

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->b:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    const/4 v1, 0x0

    move v6, v4

    move v7, v5

    move v4, v2

    move v5, v3

    move-object v2, v0

    move-object v3, v1

    :goto_1
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v10

    if-ne v9, v10, :cond_4

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->f()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->a(F)F

    move-result v2

    iget v9, p0, Lcom/google/maps/api/android/lib6/gmm6/i/w;->e:F

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->g()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->c()F

    move-result v9

    div-float/2addr v2, v9

    iget v9, p0, Lcom/google/maps/api/android/lib6/gmm6/i/w;->f:F

    cmpg-float v2, v2, v9

    if-gez v2, :cond_3

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->a(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {p0, v3, v9}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->a(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v9

    sub-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v7, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->b(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {p0, v3, v9}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->b(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v9

    sub-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v5, v2

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->a(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v2

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v3, v9}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->a(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v9

    sub-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v6, v2

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->b(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v2

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v3, v9}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->b(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    :goto_2
    move v6, v4

    move v7, v5

    move v4, v2

    move v5, v3

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :cond_4
    add-float v1, v7, v6

    add-float v3, v5, v4

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/i/w;->d:F

    mul-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->b(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->b(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->b(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v3

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/i/w;->b(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F

    move-result v2

    sub-float v2, v3, v2

    mul-float v3, v1, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto/16 :goto_0

    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->d()F

    move-result v3

    div-float/2addr v1, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->d()F

    move-result v0

    div-float v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/w;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->b:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->c:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto/16 :goto_0

    :cond_8
    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    goto :goto_2
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b(Lcom/google/maps/api/android/lib6/gmm6/i/j;I)F
.end method
