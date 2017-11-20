.class public final Lcom/google/maps/api/android/lib6/gmm6/b/h;
.super Lcom/google/maps/api/android/lib6/gmm6/b/n;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/b/n;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->d:Z

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/b/h;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->b:F

    return v0
.end method

.method public final a(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->d:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->a:F

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->b:F

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->c:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->d:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->c:F

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->a:F

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->b:F

    goto :goto_0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->c:F

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/h;->d:Z

    return v0
.end method
