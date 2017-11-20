.class public final Lcom/google/maps/api/android/lib6/gmm6/streetview/n;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

.field private final d:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->a:Z

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->b:Z

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/io/DataOutput;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->b:Z

    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v1, Lcom/google/n/c/a/a/b;->d:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a(Lcom/google/g/a/b/b/f;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a(Lcom/google/g/a/b/b/f;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/g/a/b/b/f;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->c:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(IIII)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->b:Z

    if-eqz v2, :cond_0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v1, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    move-object v3, v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->a()Z

    move-result v2

    if-nez v2, :cond_5

    if-lez p4, :cond_5

    move v2, v1

    :goto_2
    iget v4, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a:I

    add-int/2addr v4, p2

    iput v4, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a:I

    iget v4, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->b:I

    add-int/2addr v4, p3

    iput v4, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->b:I

    iget v4, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->c:I

    add-int/2addr v4, p4

    iput v4, v3, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->c:I

    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->a:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->d:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/o;->a()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->a:Z

    move v0, v1

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_6

    invoke-virtual {v3, p0}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    :cond_3
    :goto_3
    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/n;->c:Lcom/google/maps/api/android/lib6/gmm6/streetview/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/b/h;->d()V

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/b/h;->e()V

    goto :goto_3
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Lcom/google/n/c/a/a/b;->e:Lcom/google/g/a/b/b/h;

    invoke-static {v0, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x2d

    return v0
.end method
