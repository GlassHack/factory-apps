.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;
.super Ljava/lang/Object;


# instance fields
.field a:F

.field b:F

.field public final c:Lcom/google/maps/api/android/lib6/c/bp;

.field final d:J

.field final e:I

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(FFLcom/google/maps/api/android/lib6/c/bp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->f:F

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->g:F

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a:F

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->b:F

    new-instance v0, Lcom/google/maps/api/android/lib6/c/bp;

    invoke-direct {v0, p3}, Lcom/google/maps/api/android/lib6/c/bp;-><init>(Lcom/google/maps/api/android/lib6/c/bp;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->c:Lcom/google/maps/api/android/lib6/c/bp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->d:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->e:I

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->d:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/s;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->f:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->g:F

    neg-float v4, v4

    invoke-static {v3, v6, v4, v2}, Lcom/google/maps/api/android/lib6/c/bb;->a(FFF[F)V

    aget v3, v2, v1

    aget v2, v2, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/streetview/s;->a(FF[F)F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->f:F

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->g:F

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->b:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->f:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->f:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->g:F

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->g:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    cmpl-float v4, v2, v6

    if-lez v4, :cond_0

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a:F

    div-float v4, v2, v3

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->a:F

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->b:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/bn;->b:F

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
