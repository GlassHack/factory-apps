.class public final Lcom/google/maps/api/android/lib6/gmm6/b/i;
.super Lcom/google/maps/api/android/lib6/gmm6/b/n;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/b/n;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->d:Z

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->d:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a:I

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->b:I

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->d:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->c:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a:I

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->b:I

    goto :goto_0
.end method

.method public final a(J)V
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->c(J)F

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->b:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->c:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->c:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/i;->d:Z

    return v0
.end method
