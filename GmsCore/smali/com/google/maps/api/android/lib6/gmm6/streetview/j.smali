.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field private b:F

.field private final c:Z

.field private d:F

.field private synthetic e:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;FF)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmpl-float v0, p2, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->a:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->a:Z

    if-eqz v0, :cond_1

    :goto_1
    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->b:F

    cmpl-float v0, p3, v3

    if-lez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->c:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->c:Z

    if-eqz v0, :cond_3

    :goto_3
    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->d:F

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    neg-float p2, p2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    neg-float p3, p3

    goto :goto_3
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->d:F

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .locals 7

    const v6, 0x3f5eb852    # 0.87f

    const v5, 0x3ba3d70a    # 0.005f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->b(Lcom/google/maps/api/android/lib6/gmm6/streetview/f;)Lcom/google/maps/api/android/lib6/gmm6/streetview/q;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->b:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->d:F

    cmpg-float v0, v0, v4

    if-lez v0, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->e:Lcom/google/maps/api/android/lib6/gmm6/streetview/f;

    const/high16 v3, 0x41200000    # 10.0f

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->b:F

    :goto_2
    mul-float/2addr v3, v0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->d:F

    :goto_3
    invoke-virtual {v2, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/f;->a(FF)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->b:F

    mul-float/2addr v0, v6

    sub-float/2addr v0, v5

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->b:F

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->d:F

    mul-float/2addr v0, v6

    sub-float/2addr v0, v5

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->d:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->b:F

    neg-float v0, v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/j;->d:F

    neg-float v0, v0

    goto :goto_3

    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
