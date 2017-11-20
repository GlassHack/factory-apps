.class public Lcom/google/glass/maps/service/BackgroundMapRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_LINE_WIDTH:F = 12.0f

.field private static final REUSE_NAVIGATION_RENDERER:Z = false

.field private static final TAG:Ljava/lang/String; = "BackgroundMapRenderer"

.field private static final TILE_LOAD_WAIT_TIME_MS:J = 0x2710L

.field private static final ZOOM_TO_FIT_MARGIN:F = 0.1f

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

.field private navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "BackgroundMapRenderer"

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->context:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;-><init>(Lcom/google/glass/maps/service/BackgroundMapRenderer$1;)V

    iput-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    .line 75
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private computeBound(Ljava/util/List;)Lcom/google/android/maps/driveabout/model/am;
    .locals 3

    .prologue
    .line 373
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/maps/driveabout/model/ab;

    .line 374
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 375
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    iget-object v0, v0, Lcom/google/glass/maps/MapsRenderer$MarkerInfo;->location:Lcom/google/android/maps/driveabout/model/ab;

    aput-object v0, v2, v1

    .line 374
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/am;->a([Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    return-object v0
.end method

.method private getNavigationRenderer(Landroid/content/Context;II)Lcom/google/glass/maps/NavigationRenderer;
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 281
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationRenderer;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationRenderer;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->destroy()V

    .line 287
    :cond_1
    new-instance v0, Lcom/google/glass/maps/NavigationRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/glass/maps/NavigationRenderer;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 288
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->start()V

    .line 289
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->createSurface(II)Z

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    iget-object v0, v0, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 293
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;

    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    iget-object v2, v2, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/maps/NavigationRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 294
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;

    invoke-virtual {v1, v0, p2, p3}, Lcom/google/glass/maps/NavigationRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 295
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;

    return-object v0
.end method

.method private getZoomToFit(Lcom/google/android/maps/driveabout/model/am;II)F
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41f00000    # 30.0f

    const v3, 0x3f8ccccd    # 1.1f

    .line 360
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 361
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->h()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v0

    .line 362
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->g()I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    div-float v0, v2, v0

    .line 363
    sget v2, Lcom/google/glass/maps/map/MiniMap;->FOCAL_RATIO:F

    mul-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->log2(F)F

    move-result v1

    sub-float v1, v4, v1

    .line 364
    int-to-float v2, p3

    mul-float/2addr v0, v2

    int-to-float v2, p2

    div-float/2addr v0, v2

    sget v2, Lcom/google/glass/maps/map/MiniMap;->FOCAL_RATIO:F

    mul-float/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->log2(F)F

    move-result v0

    sub-float v0, v4, v0

    .line 368
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private log2(F)F
    .locals 3

    .prologue
    .line 393
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private setViewport(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Ljava/util/List;Ljava/util/List;Lcom/google/glass/maps/MapsRenderer;)V
    .locals 13

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->hasCenter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getCenter()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->toPoint(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 314
    :cond_0
    if-eqz v1, :cond_3

    .line 315
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->hasZoom()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    sget-object v2, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Using explicit center/zoom: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getZoom()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getZoom()F

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/MapsRenderer;->jumpTo(Lcom/google/android/maps/driveabout/model/ab;F)V

    .line 355
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->hasLatSpan()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->hasLngSpan()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    sget-object v2, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Using center and span: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getLatSpan()D

    move-result-wide v6

    .line 320
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getLngSpan()D

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x31

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 319
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    const-wide v2, -0x3faac00000000000L    # -85.0

    .line 322
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getLatSpan()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide v4, -0x3f99800000000000L    # -180.0

    .line 323
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->d()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getLngSpan()D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 321
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 324
    const-wide v3, 0x4055400000000000L    # 85.0

    .line 325
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getLatSpan()D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    .line 326
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->d()D

    move-result-wide v7

    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getLngSpan()D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    add-double/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 324
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    .line 327
    new-instance v4, Lcom/google/android/maps/driveabout/model/am;

    invoke-direct {v4, v2, v3}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 328
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getHeight()I

    move-result v3

    invoke-direct {p0, v4, v2, v3}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->getZoomToFit(Lcom/google/android/maps/driveabout/model/am;II)F

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/MapsRenderer;->jumpTo(Lcom/google/android/maps/driveabout/model/ab;F)V

    goto/16 :goto_0

    .line 330
    :cond_2
    sget-object v2, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Using center/default zoom: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/MapsRenderer;->jumpTo(Lcom/google/android/maps/driveabout/model/ab;F)V

    goto/16 :goto_0

    .line 333
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 335
    :cond_4
    sget-object v1, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Using bound from markers and polylines"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 338
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    iget-object v1, v1, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ag;->a()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v2

    .line 339
    const/4 v1, 0x1

    move-object v3, v2

    move v2, v1

    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 340
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    iget-object v1, v1, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ag;->a()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v3

    .line 339
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 342
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 343
    invoke-direct {p0, p2}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->computeBound(Ljava/util/List;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v3

    .line 349
    :cond_6
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/am;->f()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 350
    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->getZoomToFit(Lcom/google/android/maps/driveabout/model/am;II)F

    move-result v2

    .line 349
    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/MapsRenderer;->jumpTo(Lcom/google/android/maps/driveabout/model/ab;F)V

    goto/16 :goto_0

    .line 346
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 347
    invoke-direct {p0, p2}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->computeBound(Ljava/util/List;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v3

    goto :goto_2

    .line 346
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 353
    :cond_9
    sget-object v1, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to compute viewport from request"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private static toPoint(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 4

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->getLat()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method private static toPolyline([Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/model/ag;
    .locals 4

    .prologue
    .line 385
    new-instance v1, Lcom/google/android/maps/driveabout/model/ai;

    array-length v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/model/ai;-><init>(I)V

    .line 386
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 387
    invoke-static {v3}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->toPoint(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/model/ai;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ai;->d()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->destroySurface()V

    .line 274
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->finish()V

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->navigationRenderer:Lcom/google/glass/maps/NavigationRenderer;

    .line 277
    return-void
.end method

.method public renderAlternateRoutes([Lcom/google/android/maps/driveabout/nav/w;ILcom/google/android/maps/driveabout/location/DriveAboutLocation;II)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 179
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 180
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 181
    mul-int v0, p4, p5

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 184
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p4, p5}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->getNavigationRenderer(Landroid/content/Context;II)Lcom/google/glass/maps/NavigationRenderer;

    move-result-object v3

    .line 187
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->a()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    .line 188
    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 189
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ag;->a()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    aget-object v2, p1, p2

    .line 197
    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-direct {v0, p3}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;-><init>(Landroid/location/Location;)V

    .line 200
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->l()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/m;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 201
    const/4 v5, 0x0

    aget-object v5, p1, v5

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/model/ab;I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v5

    .line 202
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    .line 203
    invoke-static {v5, v4}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)D

    move-result-wide v4

    .line 204
    double-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->setBearing(F)V

    move-object p3, v0

    .line 207
    :cond_1
    invoke-virtual {v3}, Lcom/google/glass/maps/NavigationRenderer;->disableTileFadeIn()V

    .line 208
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/glass/maps/NavigationRenderer;->setDimMap(Z)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/glass/maps/NavigationRenderer;->setDrawLineLabelsUnderPolyline(Z)V

    .line 210
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {v3, v0}, Lcom/google/glass/maps/NavigationRenderer;->setDimAmount(F)V

    .line 211
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/maps/NavigationRenderer;->setCameraAnimationDuration(J)V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/google/glass/maps/NavigationRenderer;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;Z)V

    .line 213
    invoke-virtual {v3, p3}, Lcom/google/glass/maps/NavigationRenderer;->setLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V

    .line 215
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->q()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Lcom/google/glass/maps/map/TrafficPolylineFactory;->makeColorPolyLine(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/glass/maps/NavigationRenderer;->setRoutePolyline(Lcom/google/glass/maps/map/ColorPolyline;)V

    .line 216
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/w;->r()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/glass/maps/NavigationRenderer;->setTrafficIncidents(Ljava/util/List;)V

    .line 219
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v4, v0, [Lcom/google/android/maps/driveabout/model/ag;

    .line 220
    const/4 v1, 0x0

    .line 221
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v0, p1

    if-ge v2, v0, :cond_2

    .line 222
    if-eq v2, p2, :cond_5

    .line 223
    add-int/lit8 v0, v1, 0x1

    aget-object v5, p1, v2

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v5

    aput-object v5, v4, v1

    .line 221
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 226
    :cond_2
    array-length v0, v4

    if-lez v0, :cond_3

    .line 227
    invoke-virtual {v3, v4}, Lcom/google/glass/maps/NavigationRenderer;->setAlternateRoutes([Lcom/google/android/maps/driveabout/model/ag;)V

    .line 231
    :cond_3
    const-wide/16 v0, 0x2710

    const/4 v2, 0x1

    new-array v2, v2, [J

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/glass/maps/NavigationRenderer;->drawStatic(J[J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 232
    sget-object v0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Timed out waiting for tiles to load"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->destroy()V

    :goto_3
    return-object v0

    .line 235
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->swap()I

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v9}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 239
    invoke-static {v9}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v5

    move v2, p4

    move v3, p5

    .line 238
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 242
    invoke-virtual {v6}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    add-int/lit8 v0, p5, -0x1

    mul-int v2, p4, v0

    neg-int v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 245
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 251
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 252
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 253
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 254
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-virtual {p0}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->destroy()V

    move-object v0, v8

    goto :goto_3

    .line 256
    :catch_0
    move-exception v0

    .line 257
    :try_start_2
    sget-object v1, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->destroy()V

    goto :goto_3

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    invoke-virtual {p0}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->destroy()V

    throw v0

    :cond_5
    move v0, v1

    goto/16 :goto_2

    .line 245
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public renderFrame(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;[J)Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 88
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getWidth()I

    move-result v3

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getHeight()I

    move-result v4

    .line 91
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 92
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->marker:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    array-length v5, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v7, v2, v1

    .line 94
    invoke-virtual {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->hasLocation()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 95
    new-instance v8, Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    invoke-virtual {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->getType()I

    move-result v9

    invoke-virtual {v7}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->getLocation()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->toPoint(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Lcom/google/glass/maps/MapsRenderer$MarkerInfo;-><init>(ILcom/google/android/maps/driveabout/model/ab;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 101
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 102
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->polyline:[Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;

    array-length v9, v7

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v9, :cond_5

    aget-object v10, v7, v5

    .line 103
    invoke-virtual {v10}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->hasWidth()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->getWidth()F

    move-result v1

    move v2, v1

    .line 104
    :goto_2
    invoke-virtual {v10}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->hasColorArgb()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v10}, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->getColorArgb()I

    move-result v1

    .line 106
    :goto_3
    iget-object v11, v10, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v11}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 107
    new-instance v11, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    iget-object v10, v10, Lcom/google/glass/proto/MapRenderingServiceNano$Polyline;->vertex:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-static {v10}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->toPolyline([Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v10

    invoke-direct {v11, v10, v2, v1}, Lcom/google/glass/maps/MapsRenderer$PolylineInfo;-><init>(Lcom/google/android/maps/driveabout/model/ag;FI)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 103
    :cond_3
    const/high16 v1, 0x41400000    # 12.0f

    move v2, v1

    goto :goto_2

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->context:Landroid/content/Context;

    .line 105
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v11, Lcom/google/glass/maps/R$color;->route_polyline_color:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_3

    .line 113
    :cond_5
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 114
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 115
    mul-int v1, v3, v4

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v7

    .line 118
    new-instance v2, Lcom/google/glass/maps/MapsRenderer;

    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->context:Landroid/content/Context;

    new-instance v5, Lcom/google/glass/maps/map/RenderUtil;

    invoke-direct {v5}, Lcom/google/glass/maps/map/RenderUtil;-><init>()V

    invoke-direct {v2, v1, v5, v3, v4}, Lcom/google/glass/maps/MapsRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;II)V

    .line 119
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->start()V

    .line 120
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v1, v3, v4}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->createSurface(II)Z

    .line 121
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    iget-object v1, v1, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 122
    iget-object v5, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    iget-object v5, v5, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v2, v1, v5}, Lcom/google/glass/maps/MapsRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 123
    invoke-virtual {v2, v1, v3, v4}, Lcom/google/glass/maps/MapsRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 126
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v6, v8, v2}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->setViewport(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Ljava/util/List;Ljava/util/List;Lcom/google/glass/maps/MapsRenderer;)V

    .line 129
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/glass/maps/MapsRenderer$MarkerInfo;

    invoke-virtual {v2, v1}, Lcom/google/glass/maps/MapsRenderer;->setMarkers([Lcom/google/glass/maps/MapsRenderer$MarkerInfo;)V

    .line 130
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/glass/maps/MapsRenderer$PolylineInfo;

    invoke-virtual {v2, v1}, Lcom/google/glass/maps/MapsRenderer;->setPolylines([Lcom/google/glass/maps/MapsRenderer$PolylineInfo;)V

    .line 133
    const-wide/16 v5, 0x2710

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v6, v0}, Lcom/google/glass/maps/MapsRenderer;->drawStatic(J[J)Z

    move-result v1

    if-nez v1, :cond_6

    .line 134
    sget-object v1, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Timed out waiting for tiles to load"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const/4 v1, 0x0

    .line 164
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v2}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->destroySurface()V

    .line 165
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v2}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->finish()V

    :goto_4
    return-object v1

    .line 137
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->swap()I

    .line 140
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v14}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 141
    invoke-static {v14}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 140
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 144
    invoke-virtual {v7}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v6

    add-int/lit8 v1, v4, -0x1

    mul-int v7, v3, v1

    neg-int v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v14

    move v11, v3

    move v12, v4

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 147
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 153
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 154
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 155
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v14, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->destroySurface()V

    .line 165
    iget-object v1, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v1}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->finish()V

    move-object v1, v13

    goto :goto_4

    .line 159
    :catch_0
    move-exception v1

    .line 160
    :try_start_2
    sget-object v2, Lcom/google/glass/maps/service/BackgroundMapRenderer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    const/4 v1, 0x0

    .line 164
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v2}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->destroySurface()V

    .line 165
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v2}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->finish()V

    goto :goto_4

    .line 164
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v2}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->destroySurface()V

    .line 165
    iget-object v2, p0, Lcom/google/glass/maps/service/BackgroundMapRenderer;->helper:Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;

    invoke-virtual {v2}, Lcom/google/glass/maps/service/BackgroundMapRenderer$EglHelper;->finish()V

    throw v1

    .line 147
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
