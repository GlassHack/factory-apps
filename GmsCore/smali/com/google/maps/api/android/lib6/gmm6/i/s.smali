.class public final Lcom/google/maps/api/android/lib6/gmm6/i/s;
.super Lcom/google/maps/api/android/lib6/gmm6/i/b;


# instance fields
.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/i/b;-><init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/s;->b:F

    return v0
.end method

.method public final a(FF)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, p1, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/s;->b:F

    div-float v0, p2, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/s;->c:F

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/s;->c:F

    return v0
.end method

.method public final c()F
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/s;->a:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->i:F

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/s;->a:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    iget v1, v1, Lcom/google/maps/api/android/lib6/gmm6/i/k;->g:F

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/s;->a:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    iget v2, v2, Lcom/google/maps/api/android/lib6/gmm6/i/k;->h:F

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/i/s;->c:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    sub-float v0, v1, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
