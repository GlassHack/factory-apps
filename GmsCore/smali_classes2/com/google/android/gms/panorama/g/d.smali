.class public final Lcom/google/android/gms/panorama/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/panorama/g/n;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/io/File;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/panorama/g/d;->c:I

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/d;->d:Ljava/io/File;

    .line 29
    return-void
.end method

.method private a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 69
    iget v0, p0, Lcom/google/android/gms/panorama/g/d;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 73
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 75
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 78
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 80
    iget v0, p0, Lcom/google/android/gms/panorama/g/d;->c:I

    if-ge v0, v2, :cond_3

    .line 81
    iget v0, p0, Lcom/google/android/gms/panorama/g/d;->c:I

    div-int v0, v2, v0

    .line 82
    iget v4, p0, Lcom/google/android/gms/panorama/g/d;->c:I

    rem-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 89
    :cond_1
    :goto_1
    iput v1, p0, Lcom/google/android/gms/panorama/g/d;->e:I

    .line 90
    :goto_2
    iget v1, p0, Lcom/google/android/gms/panorama/g/d;->e:I

    if-ge v1, v0, :cond_2

    .line 91
    iget v1, p0, Lcom/google/android/gms/panorama/g/d;->e:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/panorama/g/d;->e:I

    goto :goto_2

    .line 94
    :cond_2
    iget v0, p0, Lcom/google/android/gms/panorama/g/d;->e:I

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/google/android/gms/panorama/g/d;->a:I

    .line 98
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/google/android/gms/panorama/g/d;->b:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/gms/panorama/g/d;->a:I

    iget v1, p0, Lcom/google/android/gms/panorama/g/d;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final a(II)Lcom/google/android/gms/panorama/g/m;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 33
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot load tile "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/panorama/g/m;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/d;->d:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/google/android/gms/panorama/g/d;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v4, p0, Lcom/google/android/gms/panorama/g/d;->a:I

    iget v5, p0, Lcom/google/android/gms/panorama/g/d;->b:I

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/panorama/g/m;-><init>(Landroid/graphics/Bitmap;IIII)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/google/android/gms/panorama/g/d;->c:I

    .line 105
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/gms/panorama/g/d;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/gms/panorama/g/d;->b:I

    return v0
.end method

.method public final f()F
    .locals 2

    .prologue
    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/android/gms/panorama/g/d;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final g()Lcom/google/android/gms/panorama/c/a;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method
