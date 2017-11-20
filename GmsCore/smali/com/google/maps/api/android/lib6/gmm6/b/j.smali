.class public final Lcom/google/maps/api/android/lib6/gmm6/b/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/b/l;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/b/h;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/b/i;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/b/i;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x1388

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/b/l;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/b/d;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/b/d;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/l;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/b/l;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/b/i;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/b/d;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/b/d;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/b/h;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/b/b;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/b/b;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/h;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->b:Lcom/google/maps/api/android/lib6/gmm6/b/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/b/l;

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/b/l;->setDuration(J)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->b:Lcom/google/maps/api/android/lib6/gmm6/b/h;

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/b/h;->setDuration(J)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->setDuration(J)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/b/i;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->d:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->d:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->d:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->d:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->setDuration(J)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->d:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->d:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->start()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/l/g;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/b/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/l;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/b/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->b:Lcom/google/maps/api/android/lib6/gmm6/b/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/b/h;->b()F

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->b()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;FI)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->d:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->b()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->j:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/l/g;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/b/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/l;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/b/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/b/l;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/b/l;

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/l;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/b/l;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/l;->start()V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->b:Lcom/google/maps/api/android/lib6/gmm6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/h;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->b:Lcom/google/maps/api/android/lib6/gmm6/b/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/b/h;->a()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->b:Lcom/google/maps/api/android/lib6/gmm6/b/h;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->b:F

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/h;->a(F)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->b:Lcom/google/maps/api/android/lib6/gmm6/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/h;->start()V

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a()I

    move-result v1

    if-eq v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/g;->c:I

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->a(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/b/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/b/i;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
