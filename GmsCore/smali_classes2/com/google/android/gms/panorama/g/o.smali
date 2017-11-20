.class public final Lcom/google/android/gms/panorama/g/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/panorama/g/n;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/BitmapRegionDecoder;

.field private final f:Lcom/google/android/gms/panorama/c/a;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Lcom/google/android/gms/panorama/c/a;)V
    .locals 6

    .prologue
    const/16 v1, 0x200

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/google/android/gms/panorama/g/o;->f:Lcom/google/android/gms/panorama/c/a;

    .line 70
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/o;->e:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/o;->e:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v2, v4

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/google/android/gms/panorama/g/o;->a:I

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/o;->e:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    rem-int/lit16 v0, v0, 0x200

    .line 79
    if-lez v0, :cond_1

    :goto_0
    iput v0, p0, Lcom/google/android/gms/panorama/g/o;->c:I

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/o;->e:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v2, v4

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/google/android/gms/panorama/g/o;->b:I

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/o;->e:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    rem-int/lit16 v0, v0, 0x200

    .line 85
    if-lez v0, :cond_0

    move v1, v0

    :cond_0
    iput v1, p0, Lcom/google/android/gms/panorama/g/o;->d:I

    .line 87
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create decoder"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public static a(Ljava/io/File;Lcom/google/android/gms/panorama/c/a;)Lcom/google/android/gms/panorama/g/n;
    .locals 3

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Lcom/google/android/gms/panorama/g/o;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/panorama/g/o;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/panorama/c/a;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "TileProviderImpl"

    const-string v2, "File not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(II)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 145
    mul-int/lit16 v2, p1, 0x200

    .line 146
    mul-int/lit16 v3, p2, 0x200

    .line 147
    add-int/lit16 v0, v2, 0x200

    .line 148
    add-int/lit16 v1, v3, 0x200

    .line 152
    iget v4, p0, Lcom/google/android/gms/panorama/g/o;->a:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    .line 153
    iget v4, p0, Lcom/google/android/gms/panorama/g/o;->c:I

    rsub-int v4, v4, 0x200

    sub-int/2addr v0, v4

    .line 155
    :cond_0
    iget v4, p0, Lcom/google/android/gms/panorama/g/o;->b:I

    add-int/lit8 v4, v4, -0x1

    if-ne p2, v4, :cond_1

    .line 156
    iget v4, p0, Lcom/google/android/gms/panorama/g/o;->d:I

    rsub-int v4, v4, 0x200

    sub-int/2addr v1, v4

    .line 158
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x200

    return v0
.end method

.method public final declared-synchronized a(II)Lcom/google/android/gms/panorama/g/m;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/panorama/g/o;->b(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/google/android/gms/panorama/g/o;->f:Lcom/google/android/gms/panorama/c/a;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/panorama/c/a;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 105
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/o;->e:Landroid/graphics/BitmapRegionDecoder;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/panorama/g/o;->b(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 110
    if-nez v1, :cond_1

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/gms/panorama/g/m;

    const/16 v4, 0x200

    const/16 v5, 0x200

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/panorama/g/m;-><init>(Landroid/graphics/Bitmap;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/gms/panorama/g/o;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/gms/panorama/g/o;->b:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/google/android/gms/panorama/g/o;->c:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/gms/panorama/g/o;->d:I

    return v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 168
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final g()Lcom/google/android/gms/panorama/c/a;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/o;->f:Lcom/google/android/gms/panorama/c/a;

    return-object v0
.end method
