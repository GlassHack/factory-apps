.class public final Lcom/google/maps/api/android/lib6/gmm6/c/ao;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Lcom/google/maps/api/android/lib6/c/y;

.field final h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/ae;Lcom/google/maps/api/android/lib6/c/y;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->b:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->c:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->i:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->j:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->e:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->g:Lcom/google/maps/api/android/lib6/c/y;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->g:Lcom/google/maps/api/android/lib6/c/y;

    return-void
.end method


# virtual methods
.method public final a(FFFI)F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(FFFI)F

    move-result v0

    return v0
.end method

.method public final a()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;F)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->g:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->A()Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v1

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->g:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/c/y;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->e:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->g:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v3}, Lcom/google/maps/api/android/lib6/c/y;->getHeight()I

    move-result v3

    int-to-double v4, v3

    div-double/2addr v4, v6

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->f:I

    int-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-float v3, v4

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v3

    mul-float/2addr v2, v3

    neg-float v1, v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->s()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v3

    const v4, 0x3c8efa35

    mul-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    div-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->p()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->q()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v0

    invoke-direct {v3, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-static {v4, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {v3, v1, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;FLcom/google/maps/api/android/lib6/gmm6/l/h;)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    iget v2, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->b:F

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v5

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-static {v1, v3, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-virtual {v1, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(I)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget v3, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v4, p1, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    return-object v0
.end method

.method public final a(FI)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->c()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->d()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    iget-object v1, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget v3, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->c:F

    iget v4, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->d:F

    iget v5, v2, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;->e:F

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/b/c;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;FFFF)V

    invoke-virtual {p0, v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;I)V

    return-void
.end method

.method final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->g:Lcom/google/maps/api/android/lib6/c/y;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->d:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/d;->b()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;F)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v1, v0, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/d;II)V

    goto :goto_1
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->b:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->g:Lcom/google/maps/api/android/lib6/c/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->g:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->i:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->g:Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/y;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->j:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->i:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->e:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->b:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->j:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->f:I

    :cond_0
    return-void
.end method

.method public final d()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->h:Lcom/google/maps/api/android/lib6/gmm6/o/ae;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ae;->c()Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;F)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v0

    return-object v0
.end method
