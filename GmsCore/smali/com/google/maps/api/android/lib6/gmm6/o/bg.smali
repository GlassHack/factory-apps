.class public final Lcom/google/maps/api/android/lib6/gmm6/o/bg;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;


# instance fields
.field a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 4

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bg;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->k:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method
