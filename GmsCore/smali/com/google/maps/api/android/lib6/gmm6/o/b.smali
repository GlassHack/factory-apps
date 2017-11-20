.class public final Lcom/google/maps/api/android/lib6/gmm6/o/b;
.super Lcom/google/maps/api/android/lib6/gmm6/o/ay;


# instance fields
.field a:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

.field private final d:Ljava/util/ArrayList;

.field private final e:I


# direct methods
.method public constructor <init>(ILcom/google/maps/api/android/lib6/gmm6/o/bo;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/ay;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bo;)V

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->f:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-eq v0, v1, :cond_0

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->e:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x303

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/e/e;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/e;->e()Lcom/google/maps/api/android/lib6/gmm6/o/e/g;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/e/g;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    move-result-object v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->e:I

    if-ne v2, v4, :cond_3

    iget-boolean v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->g:Z

    if-eqz v2, :cond_2

    :cond_3
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->e:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-boolean v2, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->g:Z

    if-nez v2, :cond_2

    :cond_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/util/List;FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/m;

    instance-of v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/ax;

    invoke-interface {v0, p2, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/o/ax;->a(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)I

    move-result v2

    if-ge v2, p5, :cond_0

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/o/bk;

    invoke-direct {v3, v0, p0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/bk;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/ax;Lcom/google/maps/api/android/lib6/gmm6/o/ay;I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->j:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/bu;->i:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    goto :goto_0
.end method
