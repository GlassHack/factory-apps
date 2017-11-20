.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/streetview/bc;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/streetview/az;

.field private final c:Ljava/lang/Object;

.field private d:I

.field private e:Z

.field private synthetic f:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;Lcom/google/maps/api/android/lib6/gmm6/streetview/az;Ljava/lang/Object;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->d:I

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/az;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->c:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->d:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;->a(ZLcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/q;Lcom/google/g/a/b/b/f;)V
    .locals 3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->d:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->e:Z

    iput-boolean v0, p1, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->l:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ay;->a(ZLcom/google/maps/api/android/lib6/gmm6/streetview/q;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/q;->a()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-virtual {p2}, Lcom/google/g/a/b/b/f;->d()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;

    invoke-virtual {v2, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IIII[B)V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;-><init>(Ljava/lang/String;IIII)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/az;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v2, 0x0

    array-length v3, p6

    invoke-static {p6, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->b:Lcom/google/maps/api/android/lib6/gmm6/streetview/az;

    invoke-interface {v2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/az;->a(Lcom/google/maps/api/android/lib6/gmm6/streetview/au;Landroid/graphics/Bitmap;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/ba;->f:Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/streetview/aw;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tile_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/au;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p6, v2}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ac;->a([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PM failed to cache tile "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PM was interrupted caching tile "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
