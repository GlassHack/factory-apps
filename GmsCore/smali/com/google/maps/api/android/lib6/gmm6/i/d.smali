.class public final Lcom/google/maps/api/android/lib6/gmm6/i/d;
.super Lcom/google/maps/api/android/lib6/gmm6/i/u;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/i/k;


# direct methods
.method public constructor <init>(ILcom/google/maps/api/android/lib6/gmm6/i/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/u;-><init>(I)V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/i/d;->a:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/d;->a:Lcom/google/maps/api/android/lib6/gmm6/i/k;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->f:Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/i/k;->a(Lcom/google/maps/api/android/lib6/gmm6/i/e;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->z:Z

    if-nez v1, :cond_1

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->q:F

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->p:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->s:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->z:Z

    :cond_1
    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/i/k;->s:F

    goto :goto_0
.end method
