.class public Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;
.super Ljava/lang/Object;
.source "TileProviderImpl.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/viewer/TileProvider;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TILE_SIZE:I = 0x200


# instance fields
.field private final decoder:Landroid/graphics/BitmapRegionDecoder;

.field private final lastColumnWidth:I

.field private final lastRowHeight:I

.field private final tileCountX:I

.field private final tileCountY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 12
    .param p1, "image"    # Ljava/io/InputStream;

    .prologue
    const/16 v7, 0x200

    const-wide/high16 v10, 0x4080000000000000L    # 512.0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v8, 0x0

    :try_start_0
    invoke-static {p1, v8}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->decoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v8}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v8

    int-to-double v8, v8

    div-double v1, v8, v10

    .line 69
    .local v1, "horizontalTileCount":D
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->tileCountX:I

    .line 71
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v8}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v8

    rem-int/lit16 v3, v8, 0x200

    .line 72
    .local v3, "lastColumnWidthPixels":I
    if-lez v3, :cond_0

    .end local v3    # "lastColumnWidthPixels":I
    :goto_0
    iput v3, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->lastColumnWidth:I

    .line 75
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v8}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double v5, v8, v10

    .line 76
    .local v5, "verticalTileCount":D
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->tileCountY:I

    .line 77
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v8}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v8

    rem-int/lit16 v4, v8, 0x200

    .line 78
    .local v4, "lastRowHeightPixels":I
    if-lez v4, :cond_1

    .end local v4    # "lastRowHeightPixels":I
    :goto_1
    iput v4, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->lastRowHeight:I

    .line 80
    return-void

    .line 64
    .end local v1    # "horizontalTileCount":D
    .end local v5    # "verticalTileCount":D
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Could not create decoder"

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "horizontalTileCount":D
    .restart local v3    # "lastColumnWidthPixels":I
    :cond_0
    move v3, v7

    .line 72
    goto :goto_0

    .end local v3    # "lastColumnWidthPixels":I
    .restart local v4    # "lastRowHeightPixels":I
    .restart local v5    # "verticalTileCount":D
    :cond_1
    move v4, v7

    .line 78
    goto :goto_1
.end method

.method public static fromFile(Ljava/io/File;)Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    .locals 3
    .param p0, "imageFile"    # Ljava/io/File;

    .prologue
    .line 49
    :try_start_0
    new-instance v1, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ex":Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->TAG:Ljava/lang/String;

    const-string v2, "File not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getImageRegionForTileCoordinate(II)Landroid/graphics/Rect;
    .locals 5
    .param p1, "tileIndexX"    # I
    .param p2, "tileIndexY"    # I

    .prologue
    .line 130
    mul-int/lit16 v1, p1, 0x200

    .line 131
    .local v1, "left":I
    mul-int/lit16 v3, p2, 0x200

    .line 132
    .local v3, "top":I
    add-int/lit16 v2, v1, 0x200

    .line 133
    .local v2, "right":I
    add-int/lit16 v0, v3, 0x200

    .line 137
    .local v0, "bottom":I
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->tileCountX:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    .line 138
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->lastColumnWidth:I

    rsub-int v4, v4, 0x200

    sub-int/2addr v2, v4

    .line 140
    :cond_0
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->tileCountY:I

    add-int/lit8 v4, v4, -0x1

    if-ne p2, v4, :cond_1

    .line 141
    iget v4, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->lastRowHeight:I

    rsub-int v4, v4, 0x200

    sub-int/2addr v0, v4

    .line 143
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public getLastColumnWidth()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->lastColumnWidth:I

    return v0
.end method

.method public getLastRowHeight()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->lastRowHeight:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 153
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public declared-synchronized getTile(II)Lcom/google/android/apps/lightcycle/viewer/Tile;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->getImageRegionForTileCoordinate(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 95
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/apps/lightcycle/viewer/Tile;

    const/16 v4, 0x200

    const/16 v5, 0x200

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/lightcycle/viewer/Tile;-><init>(Landroid/graphics/Bitmap;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTileCountX()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->tileCountX:I

    return v0
.end method

.method public getTileCountY()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;->tileCountY:I

    return v0
.end method

.method public getTileSize()I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x200

    return v0
.end method

.method public setMaximumTextureSize(I)V
    .locals 0
    .param p1, "dimension"    # I

    .prologue
    .line 149
    return-void
.end method
