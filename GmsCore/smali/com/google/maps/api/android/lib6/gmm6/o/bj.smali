.class public final Lcom/google/maps/api/android/lib6/gmm6/o/bj;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field private final b:Ljava/util/List;

.field private c:I

.field private d:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->a:Z

    return-void
.end method


# virtual methods
.method public final a(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;Ljava/util/List;)Z
    .locals 11

    const v7, 0x7fffffff

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v10, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    mul-int/2addr v0, v0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->d:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->d:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->d:[F

    aget v2, v2, v10

    sub-float v3, v1, p1

    sub-float/2addr v1, p1

    mul-float/2addr v1, v3

    sub-float v3, v2, p2

    sub-float/2addr v2, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-le v1, v0, :cond_2

    :cond_0
    iput-boolean v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->a:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->d:[F

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->d:[F

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->d:[F

    aput p1, v0, v6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->d:[F

    aput p2, v0, v10

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    mul-int v5, v0, v0

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/ay;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/ay;->a(Ljava/util/List;FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->a:Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->a(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)I

    move-result v2

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->c:I

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->c:I

    if-ge v2, v7, :cond_3

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->b:Lcom/google/maps/api/android/lib6/gmm6/o/ay;

    invoke-virtual {p3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->h()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->c:I

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->b:Lcom/google/maps/api/android/lib6/gmm6/o/ay;

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->c:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->c:I

    if-eq v0, v8, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;

    iput-boolean v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->d:Z

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    move v3, v8

    :cond_6
    :goto_2
    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->c:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->c:I

    if-eq v0, v8, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;

    iput-boolean v10, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->d:Z

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->a()Z

    move-result v6

    :cond_7
    return v6

    :cond_8
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v10, :cond_9

    move v3, v6

    goto :goto_2

    :cond_9
    move v1, v6

    move v2, v7

    move v3, v8

    :goto_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->d:Z

    if-nez v4, :cond_a

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->c:I

    if-ge v4, v2, :cond_a

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->c:I

    move v3, v1

    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_b
    if-ne v3, v8, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;

    iput-boolean v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/bk;->d:Z

    goto :goto_4
.end method
