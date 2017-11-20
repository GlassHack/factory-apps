.class public final Lcom/google/maps/api/android/lib6/gmm6/i/r;
.super Lcom/google/maps/api/android/lib6/gmm6/i/e;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/i/f;
    .locals 7

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->b:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->f()F

    move-result v3

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->f()F

    move-result v2

    invoke-static {v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/i/r;->a(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v5, 0x3e32b8c2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3dcccccd    # 0.1f

    :goto_2
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->g()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->g()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->c()F

    move-result v4

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->d()F

    move-result v0

    add-float/2addr v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v0, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v0, v2, v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->b:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_3
    const v1, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->c:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/r;->a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/n;->b(Lcom/google/maps/api/android/lib6/gmm6/i/k;Z)Z

    move-result v0

    return v0
.end method

.method protected final d(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/r;->a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/n;->c(Lcom/google/maps/api/android/lib6/gmm6/i/k;Z)V

    return-void
.end method

.method protected final f(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/r;->a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/i/n;->a(Lcom/google/maps/api/android/lib6/gmm6/i/k;Z)Z

    move-result v0

    return v0
.end method
