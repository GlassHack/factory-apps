.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Landroid/view/animation/Interpolator;

.field private synthetic c:J

.field private synthetic d:Lcom/google/maps/api/android/lib6/c/bp;

.field private synthetic e:F

.field private synthetic f:F

.field private synthetic g:F

.field private synthetic h:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;JLandroid/view/animation/Interpolator;JLcom/google/maps/api/android/lib6/c/bp;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->h:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    iput-wide p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->a:J

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->b:Landroid/view/animation/Interpolator;

    iput-wide p5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->c:J

    iput-object p7, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->d:Lcom/google/maps/api/android/lib6/c/bp;

    iput p8, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->e:F

    iput p9, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->f:F

    iput p10, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->a:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->b:Landroid/view/animation/Interpolator;

    long-to-float v3, v0

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->c:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->d:Lcom/google/maps/api/android/lib6/c/bp;

    iget v3, v3, Lcom/google/maps/api/android/lib6/c/bp;->b:F

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->e:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/c/bb;->d(F)F

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->d:Lcom/google/maps/api/android/lib6/c/bp;

    iget v4, v4, Lcom/google/maps/api/android/lib6/c/bp;->a:F

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->f:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/c/bb;->b(F)F

    move-result v4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->d:Lcom/google/maps/api/android/lib6/c/bp;

    iget v5, v5, Lcom/google/maps/api/android/lib6/c/bp;->c:F

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->g:F

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    new-instance v5, Lcom/google/maps/api/android/lib6/c/bp;

    invoke-direct {v5, v4, v3, v2}, Lcom/google/maps/api/android/lib6/c/bp;-><init>(FFF)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->h:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-virtual {v2, v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Lcom/google/maps/api/android/lib6/c/bp;)V

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->c:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->h:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->h:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->c(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->h:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->d(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/i;->h:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->e(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Ljava/lang/Runnable;

    goto :goto_0
.end method
