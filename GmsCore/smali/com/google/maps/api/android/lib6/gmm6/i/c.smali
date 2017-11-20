.class public final Lcom/google/maps/api/android/lib6/gmm6/i/c;
.super Lcom/google/maps/api/android/lib6/gmm6/i/q;


# instance fields
.field private final b:Lcom/google/maps/api/android/lib6/gmm6/i/k;


# direct methods
.method public constructor <init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/q;-><init>(I)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/c;->b:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/c;->b:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    return v0
.end method

.method public final b()F
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/c;->b:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    return v0
.end method

.method public final c()F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/c;->b:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->e:Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a(Lcom/google/maps/api/android/lib6/gmm6/i/e;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iget-object v3, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->b:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->r:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_4

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->n:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->l:F

    iget v2, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->m:F

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->n:F

    :cond_2
    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->n:F

    iget v2, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->o:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    iget v2, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->j:F

    iget v3, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->k:F

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->o:F

    :cond_3
    iget v2, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->o:F

    div-float/2addr v0, v2

    iput v0, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->r:F

    :cond_4
    iget v0, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->r:F

    goto :goto_0
.end method
