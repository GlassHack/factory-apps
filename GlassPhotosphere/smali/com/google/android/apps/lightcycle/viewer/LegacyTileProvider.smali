.class public Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;
.super Ljava/lang/Object;
.source "LegacyTileProvider.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/viewer/TileProvider;


# instance fields
.field private mImageFile:Ljava/io/File;

.field private mMaxTextureSize:I

.field private mSampling:I

.field private mTileHeight:I

.field private mTileWidth:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mMaxTextureSize:I

    .line 27
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mImageFile:Ljava/io/File;

    .line 28
    return-void
.end method

.method private getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x1

    .line 68
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mMaxTextureSize:I

    if-gez v4, :cond_0

    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 74
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 77
    .local v1, "maxDimension":I
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 78
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    .line 79
    .local v3, "sampleFactor":I
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mMaxTextureSize:I

    if-ge v4, v1, :cond_1

    .line 80
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mMaxTextureSize:I

    div-int v3, v1, v4

    .line 81
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mMaxTextureSize:I

    rem-int v4, v1, v4

    if-eqz v4, :cond_1

    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 88
    :cond_1
    iput v6, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mSampling:I

    .line 89
    :goto_1
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mSampling:I

    if-ge v4, v3, :cond_2

    .line 90
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mSampling:I

    shl-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mSampling:I

    goto :goto_1

    .line 93
    :cond_2
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mSampling:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mTileWidth:I

    .line 97
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mTileHeight:I

    goto :goto_0
.end method


# virtual methods
.method public getLastColumnWidth()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mTileWidth:I

    return v0
.end method

.method public getLastRowHeight()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mTileHeight:I

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 112
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mSampling:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTile(II)Lcom/google/android/apps/lightcycle/viewer/Tile;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 32
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot load tile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/apps/lightcycle/viewer/Tile;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mImageFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->getBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mTileWidth:I

    iget v5, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mTileHeight:I

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/viewer/Tile;-><init>(Landroid/graphics/Bitmap;IIII)V

    goto :goto_0
.end method

.method public getTileCountX()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public getTileCountY()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public getTileSize()I
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mTileWidth:I

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mTileHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public setMaximumTextureSize(I)V
    .locals 0
    .param p1, "dimension"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;->mMaxTextureSize:I

    .line 104
    return-void
.end method
