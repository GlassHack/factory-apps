.class public Lcom/google/glass/maps/map/MiniMapTile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FADE_DURATION_MS:J = 0xc8L

.field private static final FRAME_TIME_ANIMATION_DONE:J = -0x1L

.field private static final SHOW_SERVER_TRAFFIC_COLORS:Z = true

.field private static final SPEED_COLOR_MAP:[[F

.field private static final TAG:Ljava/lang/String; = "MiniMapTile"


# instance fields
.field private areaColorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private areaVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private final bound:Lcom/google/android/maps/driveabout/model/am;

.field private firstFrameTime:J

.field private labelableFeatures:Ljava/util/ArrayList;

.field private final mvpMatrix:[F

.field private numAreas:I

.field private numRoads:I

.field private rasterBitmap:Landroid/graphics/Bitmap;

.field private rasterTexture:Lcom/google/glass/maps/opengl/Texture;

.field private final renderUtil:Lcom/google/glass/maps/map/RenderUtil;

.field private final roadFillColor:[F

.field private roadIndexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

.field private final roadOutlineColor:[F

.field private roadTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private roadValueBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private roadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private final theme:Lcom/google/glass/maps/map/MiniMapTheme;

.field private final tileCoords:Lcom/google/android/maps/driveabout/model/aw;

.field private trafficRoadColorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private trafficRoadIndexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

.field private trafficRoadTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private trafficRoadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [[F

    sput-object v0, Lcom/google/glass/maps/map/MiniMapTile;->SPEED_COLOR_MAP:[[F

    .line 56
    sget-object v0, Lcom/google/glass/maps/map/MiniMapTile;->SPEED_COLOR_MAP:[[F

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    .line 57
    sget-object v0, Lcom/google/glass/maps/map/MiniMapTile;->SPEED_COLOR_MAP:[[F

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    .line 58
    sget-object v0, Lcom/google/glass/maps/map/MiniMapTile;->SPEED_COLOR_MAP:[[F

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lcom/google/glass/maps/map/MiniMapTile;->SPEED_COLOR_MAP:[[F

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    .line 60
    sget-object v0, Lcom/google/glass/maps/map/MiniMapTile;->SPEED_COLOR_MAP:[[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    .line 61
    return-void

    .line 56
    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x0
        0x0
    .end array-data

    .line 57
    :array_1
    .array-data 4
        0x3db851ec    # 0.09f
        0x3ee147ae    # 0.44f
        0x3f2b851f    # 0.67f
    .end array-data

    .line 58
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data

    .line 59
    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x0
    .end array-data

    .line 60
    :array_4
    .array-data 4
        0x3db851ec    # 0.09f
        0x3ee147ae    # 0.44f
        0x3f2b851f    # 0.67f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/android/maps/driveabout/model/aw;Lcom/google/glass/maps/map/MiniMapTheme;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadOutlineColor:[F

    .line 66
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadFillColor:[F

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->mvpMatrix:[F

    .line 123
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapTile;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 124
    iput-object p3, p0, Lcom/google/glass/maps/map/MiniMapTile;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    .line 125
    iput-object p2, p0, Lcom/google/glass/maps/map/MiniMapTile;->tileCoords:Lcom/google/android/maps/driveabout/model/aw;

    .line 126
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->tileCoords:Lcom/google/android/maps/driveabout/model/aw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->e()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->bound:Lcom/google/android/maps/driveabout/model/am;

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/android/maps/driveabout/model/be;Lcom/google/glass/maps/map/MiniMapTheme;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadOutlineColor:[F

    .line 66
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadFillColor:[F

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->mvpMatrix:[F

    .line 110
    iput-object p3, p0, Lcom/google/glass/maps/map/MiniMapTile;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    .line 111
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapTile;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 112
    iget v0, p3, Lcom/google/glass/maps/map/MiniMapTheme;->roadFillColor:I

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadFillColor:[F

    invoke-static {v0, v1}, Lcom/google/glass/maps/util/ColorUtil;->argbToRgbaFloats(I[F)V

    .line 113
    iget v0, p3, Lcom/google/glass/maps/map/MiniMapTheme;->roadOutlineColor:I

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadOutlineColor:[F

    invoke-static {v0, v1}, Lcom/google/glass/maps/util/ColorUtil;->argbToRgbaFloats(I[F)V

    .line 114
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/be;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->tileCoords:Lcom/google/android/maps/driveabout/model/aw;

    .line 115
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->tileCoords:Lcom/google/android/maps/driveabout/model/aw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->e()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->bound:Lcom/google/android/maps/driveabout/model/am;

    .line 116
    invoke-direct {p0, p2}, Lcom/google/glass/maps/map/MiniMapTile;->allocateBuffers(Lcom/google/android/maps/driveabout/model/be;)V

    .line 117
    invoke-direct {p0, p2}, Lcom/google/glass/maps/map/MiniMapTile;->populateBuffers(Lcom/google/android/maps/driveabout/model/be;)V

    .line 118
    invoke-direct {p0, p2}, Lcom/google/glass/maps/map/MiniMapTile;->collectLabelableFeatures(Lcom/google/android/maps/driveabout/model/be;)V

    .line 119
    return-void
.end method

.method private allocateBuffers(Lcom/google/android/maps/driveabout/model/be;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v0, 0x0

    .line 329
    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v0

    .line 336
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/be;->d()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 337
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/model/be;->a(I)Lcom/google/android/maps/driveabout/model/j;

    move-result-object v0

    .line 338
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/model/j;->c()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 336
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 340
    :sswitch_0
    check-cast v0, Lcom/google/android/maps/driveabout/model/ao;

    .line 341
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ao;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/model/aq;->b()I

    move-result v7

    if-lez v7, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ao;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/maps/map/RoadGenerator;->maxVerticesForExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;)I

    move-result v7

    add-int/2addr v6, v7

    .line 343
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ao;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/map/RoadGenerator;->indicesForExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_1

    .line 347
    :sswitch_1
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/model/j;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/model/aq;->c()I

    move-result v7

    if-lez v7, :cond_0

    .line 348
    check-cast v0, Lcom/google/android/maps/driveabout/model/d;

    .line 349
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/d;->a()Lcom/google/android/maps/driveabout/model/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/az;->b()I

    move-result v0

    add-int/2addr v2, v0

    .line 350
    goto :goto_1

    .line 353
    :sswitch_2
    check-cast v0, Lcom/google/android/maps/driveabout/model/ay;

    .line 354
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ay;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/model/aq;->b()I

    move-result v7

    if-lez v7, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ay;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/maps/map/RoadGenerator;->maxVerticesForExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;)I

    move-result v7

    add-int/2addr v4, v7

    .line 358
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ay;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/map/RoadGenerator;->indicesForExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_1

    .line 363
    :cond_1
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v8, v6}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 364
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v9, v6}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadValueBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 365
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v10, v6}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 366
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    invoke-direct {v0, v9, v5}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadIndexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    .line 367
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v8, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 368
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v10, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 369
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    invoke-direct {v0, v9, v3}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadIndexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    .line 370
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v8, v3}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadColorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 371
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v10, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->areaVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 372
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v8, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->areaColorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 373
    return-void

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private collectLabelableFeatures(Lcom/google/android/maps/driveabout/model/be;)V
    .locals 4

    .prologue
    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->labelableFeatures:Ljava/util/ArrayList;

    .line 521
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/be;->d()I

    move-result v3

    .line 522
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 523
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/model/be;->a(I)Lcom/google/android/maps/driveabout/model/j;

    move-result-object v1

    .line 524
    invoke-interface {v1}, Lcom/google/android/maps/driveabout/model/j;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 522
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :sswitch_0
    move-object v0, v1

    .line 526
    check-cast v0, Lcom/google/android/maps/driveabout/model/ac;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ac;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->labelableFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    move-object v0, v1

    .line 531
    check-cast v0, Lcom/google/android/maps/driveabout/model/ao;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ao;->e()I

    move-result v0

    if-lez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->labelableFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 537
    :cond_1
    return-void

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private getAlpha(J)F
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 304
    iget-wide v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->firstFrameTime:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return v0

    .line 306
    :cond_0
    iget-wide v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->firstFrameTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 307
    iput-wide p1, p0, Lcom/google/glass/maps/map/MiniMapTile;->firstFrameTime:J

    .line 308
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :cond_1
    iget-wide v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->firstFrameTime:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 310
    iput-wide v5, p0, Lcom/google/glass/maps/map/MiniMapTile;->firstFrameTime:J

    goto :goto_0

    .line 313
    :cond_2
    iget-wide v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->firstFrameTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private static getColorValue(Lcom/google/android/maps/driveabout/model/ao;)F
    .locals 3

    .prologue
    const v0, 0x3f666666    # 0.9f

    .line 503
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ao;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ao;->g()I

    move-result v1

    .line 507
    const/16 v2, 0x10

    if-gt v1, v2, :cond_2

    .line 508
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    .line 509
    :cond_2
    const/16 v2, 0x30

    if-gt v1, v2, :cond_3

    .line 510
    const v0, 0x3f333333    # 0.7f

    goto :goto_0

    .line 511
    :cond_3
    const/16 v2, 0x70

    if-le v1, v2, :cond_0

    .line 514
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getRoadExtrusionDistance(FI)F
    .locals 3

    .prologue
    .line 475
    const/high16 v0, 0x3f000000    # 0.5f

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    iget v1, v1, Lcom/google/glass/maps/map/MiniMapTheme;->roadWidthScaleFactor:F

    mul-float/2addr v0, v1

    .line 476
    int-to-float v1, p2

    mul-float/2addr v1, p1

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private static getRoadWidthDp(Lcom/google/android/maps/driveabout/model/aq;)F
    .locals 3

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aq;->b()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/model/aq;->a(I)F

    move-result v0

    .line 498
    :cond_0
    return v0
.end method

.method private static getTrafficRoadExtrusionDistance(FI)F
    .locals 2

    .prologue
    .line 489
    int-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private populateBuffers(Lcom/google/android/maps/driveabout/model/be;)V
    .locals 9

    .prologue
    .line 377
    new-instance v2, Lcom/google/glass/maps/map/RoadGenerator;

    invoke-direct {v2}, Lcom/google/glass/maps/map/RoadGenerator;-><init>()V

    .line 378
    new-instance v3, Lcom/google/glass/maps/map/RoadGenerator;

    invoke-direct {v3}, Lcom/google/glass/maps/map/RoadGenerator;-><init>()V

    .line 379
    new-instance v4, Lcom/google/glass/maps/map/AreaGenerator;

    invoke-direct {v4}, Lcom/google/glass/maps/map/AreaGenerator;-><init>()V

    .line 381
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/be;->d()I

    move-result v5

    .line 382
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    .line 383
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/model/be;->a(I)Lcom/google/android/maps/driveabout/model/j;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/model/j;->c()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 382
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 386
    :pswitch_1
    check-cast v0, Lcom/google/android/maps/driveabout/model/ao;

    invoke-direct {p0, v2, v0}, Lcom/google/glass/maps/map/MiniMapTile;->populateRoad(Lcom/google/glass/maps/map/RoadGenerator;Lcom/google/android/maps/driveabout/model/ao;)V

    .line 387
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->numRoads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->numRoads:I

    goto :goto_1

    .line 390
    :pswitch_2
    check-cast v0, Lcom/google/android/maps/driveabout/model/d;

    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapTile;->bound:Lcom/google/android/maps/driveabout/model/am;

    iget-object v7, p0, Lcom/google/glass/maps/map/MiniMapTile;->areaVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    iget-object v8, p0, Lcom/google/glass/maps/map/MiniMapTile;->areaColorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v4, v0, v6, v7, v8}, Lcom/google/glass/maps/map/AreaGenerator;->addArea(Lcom/google/android/maps/driveabout/model/d;Lcom/google/android/maps/driveabout/model/am;Lcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$Float;)V

    .line 391
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->numAreas:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->numAreas:I

    goto :goto_1

    .line 394
    :pswitch_3
    check-cast v0, Lcom/google/android/maps/driveabout/model/al;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/map/MiniMapTile;->populateRaster(Lcom/google/android/maps/driveabout/model/al;)V

    goto :goto_1

    .line 397
    :pswitch_4
    check-cast v0, Lcom/google/android/maps/driveabout/model/ay;

    invoke-direct {p0, v3, v0}, Lcom/google/glass/maps/map/MiniMapTile;->populateTrafficRoad(Lcom/google/glass/maps/map/RoadGenerator;Lcom/google/android/maps/driveabout/model/ay;)V

    goto :goto_1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 402
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadValueBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 403
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 404
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadIndexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->finish()V

    .line 405
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 406
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 407
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadIndexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->finish()V

    .line 408
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadColorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 409
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->areaVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 410
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->areaColorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 411
    return-void

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private populateRaster(Lcom/google/android/maps/driveabout/model/al;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 454
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/al;->a()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 457
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 458
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 459
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 460
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 462
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/al;->e()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/al;->e()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    const-string v0, "MiniMapTile"

    const-string v1, "Out of memory decoding raster!"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private populateRoad(Lcom/google/glass/maps/map/RoadGenerator;Lcom/google/android/maps/driveabout/model/ao;)V
    .locals 10

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->bound:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/am;->g()I

    move-result v0

    .line 415
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/ao;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/map/MiniMapTile;->getRoadWidthDp(Lcom/google/android/maps/driveabout/model/aq;)F

    move-result v1

    .line 416
    invoke-direct {p0, v1, v0}, Lcom/google/glass/maps/map/MiniMapTile;->getRoadExtrusionDistance(FI)F

    move-result v2

    .line 417
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->position()I

    move-result v9

    .line 418
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/ao;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapTile;->bound:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    iget-object v7, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadIndexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    const/4 v8, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/maps/map/RoadGenerator;->addExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;FLcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;Z)V

    .line 420
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->position()I

    move-result v0

    sub-int/2addr v0, v9

    .line 421
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadValueBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-static {p2}, Lcom/google/glass/maps/map/MiniMapTile;->getColorValue(Lcom/google/android/maps/driveabout/model/ao;)F

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->addCopied(FI)V

    .line 422
    return-void
.end method

.method private populateTrafficRoad(Lcom/google/glass/maps/map/RoadGenerator;Lcom/google/android/maps/driveabout/model/ay;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 425
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->bound:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/am;->g()I

    move-result v0

    .line 426
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/ay;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/map/MiniMapTile;->getRoadWidthDp(Lcom/google/android/maps/driveabout/model/aq;)F

    move-result v1

    .line 427
    invoke-static {v1, v0}, Lcom/google/glass/maps/map/MiniMapTile;->getTrafficRoadExtrusionDistance(FI)F

    move-result v2

    .line 428
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->position()I

    move-result v9

    .line 429
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/ay;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapTile;->bound:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    iget-object v7, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadIndexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/maps/map/RoadGenerator;->addExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;FLcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;Z)V

    .line 431
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->position()I

    move-result v0

    sub-int v1, v0, v9

    .line 434
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/ay;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aq;->d()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/model/aq;->c(I)Lcom/google/android/maps/driveabout/model/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ap;->a()I

    move-result v0

    .line 436
    const/4 v2, 0x4

    new-array v2, v2, [F

    .line 437
    invoke-static {v0, v2}, Lcom/google/glass/maps/util/ColorUtil;->argbToRgbaFloats(I[F)V

    move v0, v8

    .line 438
    :goto_0
    if-ge v0, v1, :cond_0

    .line 439
    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadColorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v8, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([FII)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method public static prepareAreaPass(Lcom/google/glass/maps/opengl/Program;)V
    .locals 0

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 282
    return-void
.end method

.method public static prepareRasterPass(Lcom/google/glass/maps/opengl/Program;)V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 166
    const-string v0, "texture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;I)V

    .line 167
    const-string v0, "position"

    sget-object v1, Lcom/google/glass/maps/map/RenderUtil;->UNIT_SQUARE_STRIP:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 168
    return-void
.end method

.method public static prepareRoadPass(Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;)V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 201
    const-string v0, "roadTexture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;I)V

    .line 202
    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/Texture;->bind()V

    .line 203
    return-void
.end method

.method public static prepareTrafficRoadPass(Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;)V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 213
    const-string v0, "trafficRoadTexture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;I)V

    .line 214
    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/Texture;->bind()V

    .line 215
    return-void
.end method


# virtual methods
.method public collectLabelableFeatures(Lcom/google/glass/maps/util/RankMergingFeatureIterator;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->labelableFeatures:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->labelableFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    :goto_0
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/util/RankMergingFeatureIterator;->addIterator(Ljava/util/Iterator;)V

    .line 325
    :cond_0
    return-void

    .line 321
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 132
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterTexture:Lcom/google/glass/maps/opengl/Texture;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->releaseRef()V

    .line 134
    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterTexture:Lcom/google/glass/maps/opengl/Texture;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterBitmap:Landroid/graphics/Bitmap;

    .line 140
    :cond_1
    return-void
.end method

.method public disableTileFadeIn()V
    .locals 2

    .prologue
    .line 555
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->firstFrameTime:J

    .line 556
    return-void
.end method

.method public drawAreas(Lcom/google/glass/maps/opengl/Program;J)V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->areaVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/glass/maps/map/MiniMapTile;->getAlpha(J)F

    move-result v0

    .line 295
    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 296
    const-string v0, "MVP"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->mvpMatrix:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformMatrix(Ljava/lang/String;[F)V

    .line 297
    const-string v0, "position"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->areaVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 298
    const-string v0, "color"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->areaColorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 299
    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapTile;->areaVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->numElements()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method public drawRaster(Lcom/google/glass/maps/opengl/Program;J)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterTexture:Lcom/google/glass/maps/opengl/Texture;

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Lcom/google/glass/maps/opengl/Texture;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/RenderUtil;->getTextureAllocator()Lcom/google/glass/maps/opengl/TextureAllocator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/maps/opengl/Texture;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterTexture:Lcom/google/glass/maps/opengl/Texture;

    .line 182
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterTexture:Lcom/google/glass/maps/opengl/Texture;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/Texture;->load(Landroid/graphics/Bitmap;)V

    .line 183
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterBitmap:Landroid/graphics/Bitmap;

    .line 186
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/glass/maps/map/MiniMapTile;->getAlpha(J)F

    move-result v0

    .line 187
    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 188
    const-string v0, "MVP"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->mvpMatrix:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformMatrix(Ljava/lang/String;[F)V

    .line 189
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterTexture:Lcom/google/glass/maps/opengl/Texture;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/Texture;->bind()V

    .line 190
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method public drawRoads(Lcom/google/glass/maps/opengl/Program;JZ)V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 225
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    if-nez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    iget v0, v0, Lcom/google/glass/maps/map/MiniMapTheme;->roadOutlineColor:I

    if-eqz v0, :cond_0

    .line 231
    :cond_2
    if-nez p4, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->theme:Lcom/google/glass/maps/map/MiniMapTheme;

    iget v0, v0, Lcom/google/glass/maps/map/MiniMapTheme;->roadFillColor:I

    if-eqz v0, :cond_0

    .line 235
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/google/glass/maps/map/MiniMapTile;->getAlpha(J)F

    move-result v5

    .line 236
    if-eqz p4, :cond_4

    .line 237
    const-string v1, "baseColor"

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadOutlineColor:[F

    aget v2, v0, v6

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadOutlineColor:[F

    aget v3, v0, v7

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadOutlineColor:[F

    aget v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FFFF)V

    .line 239
    const-string v0, "fillWidth"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 240
    const-string v0, "ignoreValue"

    invoke-virtual {p1, v0, v7}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;I)V

    .line 246
    :goto_1
    const-string v0, "MVP"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->mvpMatrix:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformMatrix(Ljava/lang/String;[F)V

    .line 247
    const-string v0, "position"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 248
    const-string v0, "value"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadValueBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 249
    const-string v0, "texCoord"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 250
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadIndexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->drawElements(I)V

    goto :goto_0

    .line 242
    :cond_4
    const-string v1, "baseColor"

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadFillColor:[F

    aget v2, v0, v6

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadFillColor:[F

    aget v3, v0, v7

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->roadFillColor:[F

    aget v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FFFF)V

    .line 243
    const-string v0, "fillWidth"

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 244
    const-string v0, "ignoreValue"

    invoke-virtual {p1, v0, v6}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public drawTrafficRoads(Lcom/google/glass/maps/opengl/Program;J)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/glass/maps/map/MiniMapTile;->getAlpha(J)F

    move-result v0

    .line 265
    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 266
    const-string v0, "fillWidth"

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 268
    const-string v0, "MVP"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->mvpMatrix:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformMatrix(Ljava/lang/String;[F)V

    .line 269
    const-string v0, "position"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadVertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 270
    const-string v0, "color"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadColorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 271
    const-string v0, "texCoord"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadTexCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 272
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->trafficRoadIndexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->drawElements(I)V

    goto :goto_0
.end method

.method public getCoords()Lcom/google/android/maps/driveabout/model/aw;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->tileCoords:Lcom/google/android/maps/driveabout/model/aw;

    return-object v0
.end method

.method getNumAreasForTest()I
    .locals 1

    .prologue
    .line 547
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 548
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->numAreas:I

    return v0
.end method

.method getNumRoadsForTest()I
    .locals 1

    .prologue
    .line 541
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 542
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->numRoads:I

    return v0
.end method

.method public hasRaster()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->rasterTexture:Lcom/google/glass/maps/opengl/Texture;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCamera(Lcom/google/glass/maps/map/Camera;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getMVPMatrix()[F

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->mvpMatrix:[F

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapTile;->mvpMatrix:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapTile;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapTile;->mvpMatrix:[F

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapTile;->bound:Lcom/google/android/maps/driveabout/model/am;

    .line 156
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapTile;->bound:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/am;->g()I

    move-result v3

    int-to-float v3, v3

    .line 155
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/glass/maps/map/RenderUtil;->setUpLocalCoordinateSystem([FLcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/ab;F)V

    .line 157
    return-void
.end method
