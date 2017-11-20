.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

.field private b:Z

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->b:Z

    const/16 v0, 0x100

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->c:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/google/c/c/gc;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->d:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized b()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->b:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->c:Landroid/graphics/Bitmap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit16 v4, v1, 0x100

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v1, v0}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public static c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    return-void
.end method

.method public static d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(ILcom/google/maps/api/android/lib6/gmm6/o/c/b;)V
    .locals 5

    const/high16 v4, 0x10000

    const v3, 0x8000

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    const-string v0, "ColorPalette"

    const-string v1, "Color texture is full"

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->b:Z

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit16 v1, v1, 0x100

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    div-int/lit16 v1, v1, 0x100

    iput v1, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b;->a:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x100

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v0, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a()V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-direct {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c(Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
