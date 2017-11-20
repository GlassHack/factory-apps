.class final Lcom/google/maps/api/android/lib6/gmm6/m/d/e;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private a:Lcom/google/g/a/b/b/f;

.field private b:Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

.field private synthetic c:Lcom/google/maps/api/android/lib6/gmm6/m/d/c;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/d/c;Lcom/google/g/a/b/b/f;Lcom/google/maps/api/android/lib6/gmm6/m/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d/c;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;->a:Lcom/google/g/a/b/b/f;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;->b:Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/d/c;Lcom/google/g/a/b/b/f;Lcom/google/maps/api/android/lib6/gmm6/m/d/a;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/d/c;Lcom/google/g/a/b/b/f;Lcom/google/maps/api/android/lib6/gmm6/m/d/a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutput;)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/f;->d()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/google/n/c/a/a/ac;->b:Lcom/google/g/a/b/b/h;

    invoke-static {v2, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2, v1, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;->b:Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a(Lcom/google/g/a/b/b/f;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d/c;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;->b:Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

    iget-boolean v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;->c:Lcom/google/maps/api/android/lib6/gmm6/m/d/c;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/m/d/c;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->a(Lcom/google/g/a/b/b/f;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public final i()V
    .locals 4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/e;->b:Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

    iget-object v3, v2, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/b;

    invoke-interface {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/d/b;->a(Lcom/google/maps/api/android/lib6/gmm6/m/d/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v2, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
