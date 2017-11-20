.class public Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;
.super Ljava/lang/Object;
.source "PanoramaImage.java"


# instance fields
.field private lastColumnWidthRad:F

.field private lastRowHeightRad:F

.field private panoHeightRad:F

.field private panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

.field private panoOffsetLeftRad:F

.field private panoOffsetTopRad:F

.field private panoWidthRad:F

.field private final tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

.field private tileSizeRad:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/viewer/TileProvider;Lcom/google/android/apps/lightcycle/util/PanoMetadata;)V
    .locals 0
    .param p1, "tileProvider"    # Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    .param p2, "panoMetadata"    # Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    .line 35
    return-void
.end method


# virtual methods
.method public getLastColumnWidthRad()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->lastColumnWidthRad:F

    return v0
.end method

.method public getLastRowHeightRad()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->lastRowHeightRad:F

    return v0
.end method

.method public getOffsetLeftRad()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoOffsetLeftRad:F

    return v0
.end method

.method public getOffsetTopRad()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoOffsetTopRad:F

    return v0
.end method

.method public getPanoHeightRad()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoHeightRad:F

    return v0
.end method

.method public getPanoWidthRad()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoWidthRad:F

    return v0
.end method

.method public getTileProvider()Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    return-object v0
.end method

.method public getTileSizeRad()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->tileSizeRad:F

    return v0
.end method

.method public init()V
    .locals 7

    .prologue
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 41
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v1, v1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v2, v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v3

    mul-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoWidthRad:F

    .line 43
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v1, v1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v2, v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoHeightRad:F

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v1, v1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaLeft:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v2, v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v3

    mul-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoOffsetLeftRad:F

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v1, v1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaTop:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v2, v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoOffsetTopRad:F

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v1, v1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->imageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v2, v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaWidth:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 63
    .local v0, "scale":F
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    invoke-interface {v1}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    invoke-interface {v1}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getTileSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v2, v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v3

    mul-double/2addr v1, v5

    double-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->tileSizeRad:F

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    invoke-interface {v1}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getLastColumnWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v2, v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v3

    mul-double/2addr v1, v5

    double-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->lastColumnWidthRad:F

    .line 73
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    invoke-interface {v1}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getLastRowHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->panoMetadata:Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    iget v2, v2, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->lastRowHeightRad:F

    .line 75
    return-void
.end method
