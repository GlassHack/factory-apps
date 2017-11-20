.class public final Lcom/google/maps/api/android/lib6/gmm6/m/d/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/ArrayList;

.field public b:I

.field public c:Z

.field public d:[B

.field final e:Ljava/util/concurrent/CountDownLatch;

.field f:J

.field public g:J

.field private h:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->e:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->g:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/g/a/b/b/f;)Z
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v6}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3

    if-eqz v3, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->f:J

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v7}, Lcom/google/g/a/b/b/f;->c(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->d:[B

    const/4 v2, 0x2

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    :goto_0
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    if-eq v2, v0, :cond_2

    :goto_1
    return v0

    :cond_0
    const-string v3, "application/binary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v7}, Lcom/google/g/a/b/b/f;->c(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->d:[B

    iput v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/16 v3, 0x130

    if-eq v2, v3, :cond_4

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-nez v0, :cond_2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->d:[B

    if-eqz v2, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_1
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->d:[B

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->d:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->d:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->d:[B

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->h:Ljava/lang/ref/WeakReference;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
