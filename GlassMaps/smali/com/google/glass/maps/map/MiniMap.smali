.class public Lcom/google/glass/maps/map/MiniMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAMERA_FOV:F = 45.0f

.field private static final DEG2RAD:F = 0.017453292f

.field public static final FOCAL_RATIO:F

.field private static final MIN_ZOOM_FOR_ROAD_OUTLINES:F = 14.5f

.field private static final TILE_CACHE_SIZE:I = 0x40

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private areaProgram:Lcom/google/glass/maps/opengl/Program;

.field private final camera:Lcom/google/glass/maps/map/Camera;

.field private circleProgram:Lcom/google/glass/maps/opengl/Program;

.field private final circles:Ljava/util/ArrayList;

.field private final controller:Lcom/google/glass/maps/map/MiniMapController;

.field private dimLabelAmount:F

.field private dimMapAmount:F

.field private dimMapProgram:Lcom/google/glass/maps/opengl/Program;

.field private drawLineLabelsUnderPolyline:Z

.field private fadeInTiles:Z

.field private features:Ljava/util/List;

.field private final fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

.field private labelManager:Lcom/google/glass/maps/map/LabelManager;

.field private labelRegion:Landroid/graphics/Rect;

.field private lineLabelProgram:Lcom/google/glass/maps/opengl/Program;

.field private lineProgram:Lcom/google/glass/maps/opengl/Program;

.field private locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

.field private locationProgram:Lcom/google/glass/maps/opengl/Program;

.field private locationTexture:Lcom/google/glass/maps/opengl/Texture;

.field private markerProgram:Lcom/google/glass/maps/opengl/Program;

.field private markerTexture:Lcom/google/glass/maps/opengl/Texture;

.field private final markers:Ljava/util/ArrayList;

.field private numTiles:I

.field private final oldViewport:[I

.field private overlayList:Lcom/google/glass/maps/map/MiniMapOverlayList;

.field private final polylines:Ljava/util/ArrayList;

.field private rasterProgram:Lcom/google/glass/maps/opengl/Program;

.field private final renderUtil:Lcom/google/glass/maps/map/RenderUtil;

.field private roadProgram:Lcom/google/glass/maps/opengl/Program;

.field private roadTexture:Lcom/google/glass/maps/opengl/Texture;

.field private screenLabelProgram:Lcom/google/glass/maps/opengl/Program;

.field private final sortedMarkers:Ljava/util/ArrayList;

.field private suppressLabels:Z

.field private final tileCoordGenerator:Lcom/google/glass/maps/map/TileCoordGenerator;

.field private tileCoordHash:I

.field private final tiles:Ljava/util/ArrayList;

.field private trafficRoadProgram:Lcom/google/glass/maps/opengl/Program;

.field private trafficRoadTexture:Lcom/google/glass/maps/opengl/Texture;

.field private viewportX:I

.field private viewportY:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/map/MiniMap;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x3fd921fb54442d18L    # 0.39269908169872414

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/glass/maps/map/MiniMap;->FOCAL_RATIO:F

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/maps/map/MiniMapTheme;I)V
    .locals 5

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->oldViewport:[I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->markers:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->sortedMarkers:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->polylines:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->circles:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/map/MiniMap;->tileCoordHash:I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMap;->fadeInTiles:Z

    .line 146
    iput-object p2, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 147
    invoke-virtual {p2}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 148
    new-instance v0, Lcom/google/glass/maps/map/LabelManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/glass/maps/map/LabelManager;-><init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/maps/map/MiniMapTheme;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->labelManager:Lcom/google/glass/maps/map/LabelManager;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/google/glass/maps/map/Camera;

    sget-object v2, Lcom/google/glass/maps/map/Camera;->DEFAULT_POSITION:Lcom/google/glass/maps/map/CameraPosition;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/glass/maps/map/Camera;-><init>(Lcom/google/glass/maps/map/CameraPosition;IIF)V

    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    .line 153
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/Camera;->setFov(F)V

    .line 154
    new-instance v0, Lcom/google/glass/maps/map/MiniMapController;

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/glass/maps/map/MiniMapController;-><init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/time/Clock;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->controller:Lcom/google/glass/maps/map/MiniMapController;

    .line 155
    new-instance v0, Lcom/google/glass/maps/map/MultiTileFetcher;

    const/16 v1, 0x40

    invoke-direct {v0, p2, v1, p3}, Lcom/google/glass/maps/map/MultiTileFetcher;-><init>(Lcom/google/glass/maps/map/RenderUtil;ILcom/google/glass/maps/map/MiniMapTheme;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

    .line 156
    new-instance v0, Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;

    invoke-direct {v0}, Lcom/google/glass/maps/map/MiniMapTileCoordGenerator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tileCoordGenerator:Lcom/google/glass/maps/map/TileCoordGenerator;

    .line 158
    invoke-direct {p0, p1, p4}, Lcom/google/glass/maps/map/MiniMap;->createTextures(Landroid/content/Context;I)V

    .line 159
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/MiniMap;->createPrograms(Landroid/content/Context;)V

    .line 161
    new-instance v0, Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-direct {v0, p1, p2}, Lcom/google/glass/maps/map/MiniMapOverlayList;-><init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->overlayList:Lcom/google/glass/maps/map/MiniMapOverlayList;

    .line 162
    return-void
.end method

.method private createPrograms(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 184
    :try_start_0
    sget v0, Lcom/google/glass/mapslib/R$raw;->raster_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->raster_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->rasterProgram:Lcom/google/glass/maps/opengl/Program;

    .line 186
    sget v0, Lcom/google/glass/mapslib/R$raw;->area_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->area_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->areaProgram:Lcom/google/glass/maps/opengl/Program;

    .line 187
    sget v0, Lcom/google/glass/mapslib/R$raw;->road_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->road_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->roadProgram:Lcom/google/glass/maps/opengl/Program;

    .line 188
    sget v0, Lcom/google/glass/mapslib/R$raw;->traffic_road_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->traffic_road_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->trafficRoadProgram:Lcom/google/glass/maps/opengl/Program;

    .line 190
    sget v0, Lcom/google/glass/mapslib/R$raw;->simple_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->simple_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->dimMapProgram:Lcom/google/glass/maps/opengl/Program;

    .line 192
    sget v0, Lcom/google/glass/mapslib/R$raw;->location_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->marker_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->locationProgram:Lcom/google/glass/maps/opengl/Program;

    .line 194
    sget v0, Lcom/google/glass/mapslib/R$raw;->marker_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->marker_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->markerProgram:Lcom/google/glass/maps/opengl/Program;

    .line 196
    sget v0, Lcom/google/glass/mapslib/R$raw;->polyline_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->road_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->lineProgram:Lcom/google/glass/maps/opengl/Program;

    .line 198
    sget v0, Lcom/google/glass/mapslib/R$raw;->circle_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->circle_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->circleProgram:Lcom/google/glass/maps/opengl/Program;

    .line 200
    sget v0, Lcom/google/glass/mapslib/R$raw;->line_label_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->label_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->lineLabelProgram:Lcom/google/glass/maps/opengl/Program;

    .line 202
    sget v0, Lcom/google/glass/mapslib/R$raw;->screen_label_vertex:I

    sget v1, Lcom/google/glass/mapslib/R$raw;->label_fragment:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->createFromResources(Landroid/content/Context;II)Lcom/google/glass/maps/opengl/Program;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->screenLabelProgram:Lcom/google/glass/maps/opengl/Program;
    :try_end_0
    .catch Lcom/google/glass/maps/opengl/ProgramException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    sget-object v1, Lcom/google/glass/maps/map/MiniMap;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error creating programs from resources"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createTextures(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 165
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->getTextureAllocator()Lcom/google/glass/maps/opengl/TextureAllocator;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/google/glass/maps/opengl/Texture;

    invoke-direct {v1, v0}, Lcom/google/glass/maps/opengl/Texture;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;)V

    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->roadTexture:Lcom/google/glass/maps/opengl/Texture;

    .line 167
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->roadTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v1, v5}, Lcom/google/glass/maps/opengl/Texture;->setGenerateMipMaps(Z)V

    .line 168
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->roadTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/mapslib/R$drawable;->road_texture:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/maps/opengl/Texture;->load(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    .line 170
    new-instance v1, Lcom/google/glass/maps/opengl/Texture;

    invoke-direct {v1, v0}, Lcom/google/glass/maps/opengl/Texture;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;)V

    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->trafficRoadTexture:Lcom/google/glass/maps/opengl/Texture;

    .line 171
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->trafficRoadTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v1, v5}, Lcom/google/glass/maps/opengl/Texture;->setGenerateMipMaps(Z)V

    .line 172
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->trafficRoadTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/mapslib/R$drawable;->road_texture:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/maps/opengl/Texture;->load(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    .line 174
    new-instance v1, Lcom/google/glass/maps/opengl/Texture;

    invoke-direct {v1, v0}, Lcom/google/glass/maps/opengl/Texture;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;)V

    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->locationTexture:Lcom/google/glass/maps/opengl/Texture;

    .line 175
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->locationTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/mapslib/R$drawable;->location_texture:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/maps/opengl/Texture;->load(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    .line 178
    new-instance v1, Lcom/google/glass/maps/opengl/Texture;

    invoke-direct {v1, v0}, Lcom/google/glass/maps/opengl/Texture;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;)V

    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->markerTexture:Lcom/google/glass/maps/opengl/Texture;

    .line 179
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->markerTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/glass/maps/opengl/Texture;->load(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    .line 180
    return-void
.end method

.method private destroyPrograms()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->rasterProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 212
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->areaProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 213
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->roadProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 214
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->trafficRoadProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 215
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->dimMapProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 216
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->locationProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 217
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->markerProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 218
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->lineProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 219
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->circleProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 220
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->lineLabelProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 221
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->screenLabelProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->release()V

    .line 222
    return-void
.end method

.method private destroyTextures()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->roadTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->releaseRef()V

    .line 226
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->trafficRoadTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->releaseRef()V

    .line 227
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->locationTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->releaseRef()V

    .line 228
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->markerTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->releaseRef()V

    .line 229
    return-void
.end method

.method private drawCircles(J)V
    .locals 4

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 663
    :cond_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->circleProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-static {v0, v1}, Lcom/google/glass/maps/map/MiniMapCircle;->preparePass(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;)V

    .line 660
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapCircle;

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->circleProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/google/glass/maps/map/MiniMapCircle;->draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;J)V

    .line 660
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private drawLabels(J)V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->drawLineLabels(J)V

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->drawScreenLabels(J)V

    .line 699
    return-void
.end method

.method private drawLineLabels(J)V
    .locals 5

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMap;->suppressLabels:Z

    if-eqz v0, :cond_1

    .line 716
    :cond_0
    return-void

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->lineLabelProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-static {v0, v1}, Lcom/google/glass/maps/map/MiniMapLineLabel;->preparePass(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;)V

    .line 708
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->labelManager:Lcom/google/glass/maps/map/LabelManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/LabelManager;->getLabelIterator()Lcom/google/glass/maps/util/NullSkippingIterator;

    move-result-object v2

    .line 709
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapLabel;

    .line 711
    instance-of v1, v0, Lcom/google/glass/maps/map/MiniMapLineLabel;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 712
    check-cast v1, Lcom/google/glass/maps/map/MiniMapLineLabel;

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/google/glass/maps/map/MiniMap;->dimLabelAmount:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/google/glass/maps/map/MiniMapLineLabel;->setAlpha(F)V

    .line 713
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->lineLabelProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/google/glass/maps/map/MiniMapLabel;->draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;J)V

    goto :goto_0
.end method

.method private drawLocationMarker(J)V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->locationProgram:Lcom/google/glass/maps/opengl/Program;

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->locationTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-static {v0, v1, v2}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->preparePass(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;)V

    .line 669
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->locationProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;J)V

    .line 671
    :cond_0
    return-void
.end method

.method private drawMarkers(J)V
    .locals 8

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 676
    if-nez v7, :cond_1

    .line 693
    :cond_0
    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->sortedMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 682
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->sortedMarkers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 683
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->sortedMarkers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 685
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->markerProgram:Lcom/google/glass/maps/opengl/Program;

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->markerTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/glass/maps/map/MiniMapMarker;->preparePass(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;J)V

    .line 686
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 687
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->sortedMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapMarker;

    .line 688
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->markerProgram:Lcom/google/glass/maps/opengl/Program;

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->markerTexture:Lcom/google/glass/maps/opengl/Texture;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/map/MiniMapMarker;->draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;J)V

    .line 689
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapMarker;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    invoke-virtual {p0, v0}, Lcom/google/glass/maps/map/MiniMap;->removeMarker(Lcom/google/glass/maps/map/MiniMapMarker;)V

    .line 686
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method private drawPolylines()V
    .locals 4

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->polylines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 651
    :cond_0
    return-void

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->lineProgram:Lcom/google/glass/maps/opengl/Program;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->roadTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-static {v0, v1}, Lcom/google/glass/maps/map/MiniMapPolyline;->preparePass(Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;)V

    .line 646
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->polylines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->polylines:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapPolyline;

    .line 648
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/map/MiniMapPolyline;->updateCamera(Lcom/google/glass/maps/map/Camera;)V

    .line 649
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->lineProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/maps/map/MiniMapPolyline;->draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;)V

    .line 646
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private drawScreenLabels(J)V
    .locals 4

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMap;->suppressLabels:Z

    if-eqz v0, :cond_1

    .line 732
    :cond_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->screenLabelProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-static {v0, v1}, Lcom/google/glass/maps/map/MiniMapScreenLabel;->preparePass(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;)V

    .line 725
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->labelManager:Lcom/google/glass/maps/map/LabelManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/LabelManager;->getLabelIterator()Lcom/google/glass/maps/util/NullSkippingIterator;

    move-result-object v1

    .line 726
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapLabel;

    .line 728
    instance-of v2, v0, Lcom/google/glass/maps/map/MiniMapScreenLabel;

    if-eqz v2, :cond_2

    .line 729
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->screenLabelProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/google/glass/maps/map/MiniMapLabel;->draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;J)V

    goto :goto_0
.end method

.method private drawTiles(J)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 582
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tileCoordGenerator:Lcom/google/glass/maps/map/TileCoordGenerator;

    if-nez v0, :cond_1

    .line 627
    :cond_0
    return-void

    :cond_1
    move v1, v2

    move v3, v2

    .line 588
    :goto_0
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->numTiles:I

    if-ge v1, v0, :cond_3

    .line 589
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapTile;

    .line 590
    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v0, v5}, Lcom/google/glass/maps/map/MiniMapTile;->updateCamera(Lcom/google/glass/maps/map/Camera;)V

    .line 591
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapTile;->hasRaster()Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v4

    .line 588
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 597
    :cond_3
    if-eqz v3, :cond_4

    .line 598
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->rasterProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-static {v0}, Lcom/google/glass/maps/map/MiniMapTile;->prepareRasterPass(Lcom/google/glass/maps/opengl/Program;)V

    move v1, v2

    .line 599
    :goto_1
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->numTiles:I

    if-ge v1, v0, :cond_4

    .line 600
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapTile;

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->rasterProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0, v3, p1, p2}, Lcom/google/glass/maps/map/MiniMapTile;->drawRaster(Lcom/google/glass/maps/opengl/Program;J)V

    .line 599
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->areaProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-static {v0}, Lcom/google/glass/maps/map/MiniMapTile;->prepareAreaPass(Lcom/google/glass/maps/opengl/Program;)V

    move v1, v2

    .line 606
    :goto_2
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->numTiles:I

    if-ge v1, v0, :cond_5

    .line 607
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapTile;

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->areaProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0, v3, p1, p2}, Lcom/google/glass/maps/map/MiniMapTile;->drawAreas(Lcom/google/glass/maps/opengl/Program;J)V

    .line 606
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 611
    :cond_5
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->roadProgram:Lcom/google/glass/maps/opengl/Program;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->roadTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-static {v0, v1}, Lcom/google/glass/maps/map/MiniMapTile;->prepareRoadPass(Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;)V

    .line 612
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/Camera;->getZoom()F

    move-result v0

    const/high16 v1, 0x41680000    # 14.5f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    move v1, v2

    .line 613
    :goto_3
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->numTiles:I

    if-ge v1, v0, :cond_6

    .line 614
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapTile;

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->roadProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0, v3, p1, p2, v4}, Lcom/google/glass/maps/map/MiniMapTile;->drawRoads(Lcom/google/glass/maps/opengl/Program;JZ)V

    .line 613
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v2

    .line 617
    :goto_4
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->numTiles:I

    if-ge v1, v0, :cond_7

    .line 618
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapTile;

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->roadProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/google/glass/maps/map/MiniMapTile;->drawRoads(Lcom/google/glass/maps/opengl/Program;JZ)V

    .line 617
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 621
    :cond_7
    invoke-virtual {p0}, Lcom/google/glass/maps/map/MiniMap;->isTrafficEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->trafficRoadProgram:Lcom/google/glass/maps/opengl/Program;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->trafficRoadTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-static {v0, v1}, Lcom/google/glass/maps/map/MiniMapTile;->prepareTrafficRoadPass(Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;)V

    .line 623
    :goto_5
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->numTiles:I

    if-ge v2, v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapTile;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->trafficRoadProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/glass/maps/map/MiniMapTile;->drawTrafficRoads(Lcom/google/glass/maps/opengl/Program;J)V

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private fetchTiles()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 522
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tileCoordGenerator:Lcom/google/glass/maps/map/TileCoordGenerator;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/map/TileCoordGenerator;->getCoordsForViewport(Lcom/google/glass/maps/map/Camera;)Ljava/util/List;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 527
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/aw;

    .line 528
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/map/MultiTileFetcher;->fetch(Lcom/google/android/maps/driveabout/model/aw;)Ljava/util/List;

    move-result-object v5

    .line 529
    if-eqz v5, :cond_4

    .line 530
    iget-boolean v1, p0, Lcom/google/glass/maps/map/MiniMap;->fadeInTiles:Z

    if-nez v1, :cond_0

    .line 531
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/map/MiniMapTile;

    .line 532
    invoke-virtual {v1}, Lcom/google/glass/maps/map/MiniMapTile;->disableTileFadeIn()V

    goto :goto_1

    .line 535
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/map/MiniMapTile;

    .line 536
    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 538
    :cond_1
    mul-int/lit8 v1, v2, 0x1f

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_3
    move v2, v0

    .line 540
    goto :goto_0

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/map/MiniMap;->numTiles:I

    .line 543
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->tileCoordHash:I

    if-eq v2, v0, :cond_3

    .line 544
    iput v2, p0, Lcom/google/glass/maps/map/MiniMap;->tileCoordHash:I

    .line 547
    :goto_4
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method private getLabelableFeatureIterator()Lcom/google/glass/maps/util/RankMergingFeatureIterator;
    .locals 3

    .prologue
    .line 552
    new-instance v2, Lcom/google/glass/maps/util/RankMergingFeatureIterator;

    invoke-direct {v2}, Lcom/google/glass/maps/util/RankMergingFeatureIterator;-><init>()V

    .line 553
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->numTiles:I

    if-ge v1, v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->tiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapTile;

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/map/MiniMapTile;->collectLabelableFeatures(Lcom/google/glass/maps/util/RankMergingFeatureIterator;)V

    .line 553
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->features:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/glass/maps/util/RankMergingFeatureIterator;->addIterator(Ljava/util/Iterator;)V

    .line 561
    :cond_1
    return-object v2
.end method

.method private maybeDimMap()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 631
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->dimMapAmount:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->dimMapProgram:Lcom/google/glass/maps/opengl/Program;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 633
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->dimMapProgram:Lcom/google/glass/maps/opengl/Program;

    const-string v1, "color"

    iget v5, p0, Lcom/google/glass/maps/map/MiniMap;->dimMapAmount:F

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FFFF)V

    .line 634
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->dimMapProgram:Lcom/google/glass/maps/opengl/Program;

    const-string v1, "pos"

    sget-object v2, Lcom/google/glass/maps/map/RenderUtil;->PROJECTED_FULL_SCREEN_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 635
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 637
    :cond_0
    return-void
.end method


# virtual methods
.method public addCircle(Lcom/google/glass/maps/map/MiniMapCircle;)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 374
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    return-void
.end method

.method public addMarker(Lcom/google/glass/maps/map/MiniMapMarker;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 350
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    return-void
.end method

.method public addPolyline(Lcom/google/glass/maps/map/MiniMapPolyline;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 362
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->polylines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method public clearAllOverlays()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->overlayList:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList;->clearAllOverlays()V

    .line 408
    return-void
.end method

.method public clearLocationMarker()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/map/MiniMap;->setLocationMarker(Lcom/google/glass/maps/map/MiniMapLocationMarker;)V

    .line 345
    return-void
.end method

.method public clearOverlay(I)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->overlayList:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMapOverlayList;->clearOverlay(I)V

    .line 403
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 233
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMap;->destroyPrograms()V

    .line 234
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMap;->destroyTextures()V

    .line 235
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->overlayList:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList;->destroy()V

    .line 236
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->labelManager:Lcom/google/glass/maps/map/LabelManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/LabelManager;->destroy()V

    .line 238
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MultiTileFetcher;->clearCache()V

    .line 239
    return-void
.end method

.method public disableTileFadeIn()V
    .locals 1

    .prologue
    .line 738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMap;->fadeInTiles:Z

    .line 739
    return-void
.end method

.method public draw(J)V
    .locals 13

    .prologue
    const/16 v12, 0xc11

    const/16 v11, 0x302

    const/4 v10, 0x0

    const/16 v9, 0x303

    const/4 v8, 0x1

    .line 422
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 424
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/Camera;->getScreenWidth()I

    move-result v6

    .line 425
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/Camera;->getScreenHeight()I

    move-result v7

    .line 426
    if-lez v6, :cond_0

    if-gtz v7, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->controller:Lcom/google/glass/maps/map/MiniMapController;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/map/MiniMapController;->animate(J)Z

    move-result v4

    .line 432
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->controller:Lcom/google/glass/maps/map/MiniMapController;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapController;->getPosition()Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/map/Camera;->setPosition(Lcom/google/glass/maps/map/CameraPosition;)V

    .line 435
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMap;->fetchTiles()Z

    move-result v5

    .line 437
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMap;->suppressLabels:Z

    if-nez v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->labelManager:Lcom/google/glass/maps/map/LabelManager;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->labelRegion:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMap;->getLabelableFeatureIterator()Lcom/google/glass/maps/util/RankMergingFeatureIterator;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/map/LabelManager;->updateLabels(Lcom/google/glass/maps/map/Camera;Landroid/graphics/Rect;Ljava/util/Iterator;ZZ)V

    .line 444
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->overlayList:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList;->preDraw()V

    .line 447
    const/16 v0, 0xba2

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->oldViewport:[I

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 448
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->viewportX:I

    iget v1, p0, Lcom/google/glass/maps/map/MiniMap;->viewportY:I

    invoke-static {v0, v1, v6, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 449
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 450
    iget v0, p0, Lcom/google/glass/maps/map/MiniMap;->viewportX:I

    iget v1, p0, Lcom/google/glass/maps/map/MiniMap;->viewportY:I

    invoke-static {v0, v1, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->drawTiles(J)V

    .line 455
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMap;->fadeInTiles:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MultiTileFetcher;->getNumOutstandingRequests()I

    move-result v0

    if-nez v0, :cond_2

    .line 456
    iput-boolean v8, p0, Lcom/google/glass/maps/map/MiniMap;->fadeInTiles:Z

    .line 459
    :cond_2
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMap;->drawLineLabelsUnderPolyline:Z

    if-eqz v0, :cond_3

    .line 460
    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->drawLineLabels(J)V

    .line 462
    invoke-static {v11, v9}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 465
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMap;->maybeDimMap()V

    .line 466
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMap;->drawPolylines()V

    .line 467
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->drawCircles(J)V

    .line 470
    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 471
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMap;->drawLineLabelsUnderPolyline:Z

    if-eqz v0, :cond_5

    .line 472
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->drawScreenLabels(J)V

    .line 476
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->drawLocationMarker(J)V

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->drawMarkers(J)V

    .line 478
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->overlayList:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList;->draw()V

    .line 481
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->oldViewport:[I

    aget v0, v0, v10

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->oldViewport:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->oldViewport:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->oldViewport:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 482
    invoke-static {v12}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 483
    invoke-static {v11, v9}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto/16 :goto_0

    .line 441
    :cond_4
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->labelManager:Lcom/google/glass/maps/map/LabelManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/LabelManager;->clearLabels()V

    goto :goto_1

    .line 474
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/MiniMap;->drawLabels(J)V

    goto :goto_2
.end method

.method public getController()Lcom/google/glass/maps/map/MiniMapController;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->controller:Lcom/google/glass/maps/map/MiniMapController;

    return-object v0
.end method

.method public getFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 386
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/Camera;->getFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v0

    return-object v0
.end method

.method public getZoomToFitDistance(F)F
    .locals 4

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 571
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 572
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/Camera;->getViewingAngle()F

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/Camera;->getFov()F

    move-result v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 573
    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 574
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/Camera;->getLookAhead()F

    move-result v1

    add-float/2addr v1, v2

    .line 575
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v2}, Lcom/google/glass/maps/map/Camera;->getScreenWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v3}, Lcom/google/glass/maps/map/Camera;->getScreenHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    .line 576
    mul-float/2addr v0, p1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    .line 577
    invoke-virtual {v2}, Lcom/google/glass/maps/map/Camera;->getScreenDensity()F

    move-result v2

    div-float/2addr v1, v2

    .line 576
    invoke-static {v0, v1}, Lcom/google/glass/maps/map/Camera;->getZoomToFitModelSize(FF)F

    move-result v0

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MultiTileFetcher;->isTrafficEnabled()Z

    move-result v0

    return v0
.end method

.method public removeCircle(Lcom/google/glass/maps/map/MiniMapCircle;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 380
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 381
    return-void
.end method

.method public removeMarker(Lcom/google/glass/maps/map/MiniMapMarker;)V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 356
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public removePolyline(Lcom/google/glass/maps/map/MiniMapPolyline;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 368
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->polylines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public reset(Landroid/content/Context;Lcom/google/glass/maps/map/MiniMapTheme;I)V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 248
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->sortedMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 250
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->polylines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->circles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 254
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMap;->destroyTextures()V

    .line 255
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMap;->destroyPrograms()V

    .line 256
    invoke-direct {p0, p1, p3}, Lcom/google/glass/maps/map/MiniMap;->createTextures(Landroid/content/Context;I)V

    .line 257
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/MiniMap;->createPrograms(Landroid/content/Context;)V

    .line 261
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MultiTileFetcher;->reset()V

    .line 263
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->overlayList:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapOverlayList;->destroy()V

    .line 264
    new-instance v0, Lcom/google/glass/maps/map/MiniMapOverlayList;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/maps/map/MiniMapOverlayList;-><init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->overlayList:Lcom/google/glass/maps/map/MiniMapOverlayList;

    .line 266
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->labelManager:Lcom/google/glass/maps/map/LabelManager;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMap;->labelRegion:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMap;->getLabelableFeatureIterator()Lcom/google/glass/maps/util/RankMergingFeatureIterator;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/maps/map/LabelManager;->reset(Lcom/google/glass/maps/map/Camera;Landroid/graphics/Rect;Ljava/util/Iterator;)V

    .line 267
    return-void
.end method

.method public setCenterOffsetX(F)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 326
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/Camera;->setCenterOffsetX(F)V

    .line 327
    return-void
.end method

.method public setDimLabelsAmount(F)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 300
    iput p1, p0, Lcom/google/glass/maps/map/MiniMap;->dimLabelAmount:F

    .line 301
    return-void
.end method

.method public setDimMapAmount(F)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 294
    iput p1, p0, Lcom/google/glass/maps/map/MiniMap;->dimMapAmount:F

    .line 295
    return-void
.end method

.method public setDimensions(IIII)V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 286
    iput p1, p0, Lcom/google/glass/maps/map/MiniMap;->viewportX:I

    .line 287
    iput p2, p0, Lcom/google/glass/maps/map/MiniMap;->viewportY:I

    .line 288
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/Camera;->getScreenDensity()F

    move-result v1

    invoke-virtual {v0, p3, p4, v1}, Lcom/google/glass/maps/map/Camera;->setScreenDimensions(IIF)V

    .line 289
    return-void
.end method

.method public setDrawLineLabelsUnderPolyline(Z)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 306
    iput-boolean p1, p0, Lcom/google/glass/maps/map/MiniMap;->drawLineLabelsUnderPolyline:Z

    .line 307
    return-void
.end method

.method public setFeatures(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMap;->features:Ljava/util/List;

    .line 747
    return-void
.end method

.method public setLabelRegion(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 316
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMap;->labelRegion:Landroid/graphics/Rect;

    .line 317
    return-void
.end method

.method public setLabelingBudget(I)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 392
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->labelManager:Lcom/google/glass/maps/map/LabelManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/LabelManager;->setLabelingBudget(I)V

    .line 393
    return-void
.end method

.method public setLocationMarker(Lcom/google/glass/maps/map/MiniMapLocationMarker;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 337
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMap;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    .line 338
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->labelManager:Lcom/google/glass/maps/map/LabelManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/LabelManager;->setLocationMarker(Lcom/google/glass/maps/map/MiniMapLocationMarker;)V

    .line 339
    return-void
.end method

.method public setSuppressLabels(Z)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 272
    iput-boolean p1, p0, Lcom/google/glass/maps/map/MiniMap;->suppressLabels:Z

    .line 273
    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MultiTileFetcher;->setTrafficEnabled(Z)V

    .line 418
    return-void
.end method

.method public updateOverlay(ILcom/google/glass/maps/opengl/TextureBitmap;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->overlayList:Lcom/google/glass/maps/map/MiniMapOverlayList;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/maps/map/MiniMapOverlayList;->updateOverlay(ILcom/google/glass/maps/opengl/TextureBitmap;)V

    .line 398
    return-void
.end method

.method public waitForTilesToLoad(J[J)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 497
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 498
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 501
    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMap;->fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

    new-instance v0, Lcom/google/glass/maps/map/MiniMap$1;

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/MiniMap$1;-><init>(Lcom/google/glass/maps/map/MiniMap;[JJLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v6, v0}, Lcom/google/glass/maps/map/MultiTileFetcher;->setListener(Lcom/google/glass/maps/map/MultiTileFetcher$Listener;)V

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMap;->camera:Lcom/google/glass/maps/map/Camera;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->controller:Lcom/google/glass/maps/map/MiniMapController;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/MiniMapController;->getPosition()Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/Camera;->setPosition(Lcom/google/glass/maps/map/CameraPosition;)V

    .line 513
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMap;->fetchTiles()Z

    .line 514
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p1, p2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 516
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

    invoke-virtual {v1, v7}, Lcom/google/glass/maps/map/MultiTileFetcher;->setListener(Lcom/google/glass/maps/map/MultiTileFetcher$Listener;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMap;->fetcher:Lcom/google/glass/maps/map/MultiTileFetcher;

    invoke-virtual {v1, v7}, Lcom/google/glass/maps/map/MultiTileFetcher;->setListener(Lcom/google/glass/maps/map/MultiTileFetcher$Listener;)V

    throw v0
.end method
