.class public final Lcom/google/maps/api/android/lib6/gmm6/i/p;
.super Lcom/google/maps/api/android/lib6/gmm6/i/e;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/i/f;
    .locals 6

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->b:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v3

    if-le v3, v4, :cond_3

    move-object v1, v0

    :cond_4
    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/j;

    if-nez v1, :cond_5

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->b()I

    move-result v2

    if-gt v2, v4, :cond_6

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_6
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x3db2b8c2

    :goto_1
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->f()F

    move-result v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->f()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/i/p;->a(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_8

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_7
    const v2, 0x3e32b8c2

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->c()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->d()F

    move-result v4

    add-float/2addr v2, v4

    mul-float/2addr v2, v5

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->g()F

    move-result v0

    div-float/2addr v0, v2

    const/high16 v4, 0x3f400000    # 0.75f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_9

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_9
    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/j;->g()F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_b

    div-float v0, v3, v0

    cmpg-float v1, v0, v5

    if-gez v1, :cond_a

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto/16 :goto_0

    :cond_a
    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->b:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->c:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto/16 :goto_0
.end method

.method protected final b(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 2

    const-string v0, "r"

    const/16 v1, 0x63

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/p;->a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/n;->e(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z

    move-result v0

    return v0
.end method

.method protected final d(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/p;->a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/n;->f(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V

    return-void
.end method

.method protected final f(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/p;->a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/n;->d(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z

    move-result v0

    return v0
.end method
