.class public Lcom/google/glass/maps/NavigationRenderer;
.super Lcom/google/glass/maps/map/MiniMapRenderer;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CAMERA_ANIMATION_DURATION_MS:J = 0x3e8L

.field private static final DEFAULT_MAP_DIM_AMOUNT:F = 0.3f

.field private static final FAR_MODE_ENTRY_SPEED_THRESHOLD_MPS:F = 20.0f

.field private static final FAR_MODE_EXIT_SPEED_THRESHOLD_MPS:F = 15.0f

.field public static final LIVE_CARD_OVERLAY_INDEX:I = 0x1

.field private static final LOCATION_MARKER_SIZE_FAR_DP:F = 40.0f

.field private static final LOCATION_MARKER_SIZE_NEAR_DP:F = 65.0f

.field private static final MARKER_DESTINATION:I = 0x0

.field private static final MARKER_DESTINATION_LEVEL:I = 0x0

.field private static final MARKER_MEASLE:I = 0x1

.field private static final MARKER_MEASLE_LEVEL:I = -0x1

.field private static final MAX_DISTANCE_TO_ANIMATE:I

.field private static final MEASLE_OVERHEAD_SCALE:F = 0.5f

.field private static final MINI_MAP_FAR_ZOOM:F = 16.5f

.field private static final MINI_MAP_LOOKAHEAD:F = 0.7f

.field private static final MINI_MAP_NEAR_ZOOM:F = 17.25f

.field private static final MINI_MAP_NO_GPS_ZOOM:F = 16.5f

.field private static final MINI_MAP_OVERHEAD_MAX_ZOOM:F = 16.0f

.field private static final MINI_MAP_OVERHEAD_ZOOM_MARGIN:F = 0.25f

.field private static final MINI_MAP_VIEWING_ANGLE:I = 0x3c

.field private static final MIN_DISTANCE_FOR_FAR_MODE_METERS:F = 400.0f

.field private static final ROUTE_LINE_WIDTH_FAR_DP:F = 6.0f

.field private static final ROUTE_LINE_WIDTH_NEAR_DP:F = 16.0f

.field public static final SPOTLIGHT_OVERLAY_INDEX:I = 0x0

.field private static final ZOOM_THRESHOLD_FOR_SIZE:F = 16.0f


# instance fields
.field private accuracyCircle:Lcom/google/glass/maps/map/MiniMapCircle;

.field private final alternateMiniMapPolylines:Ljava/util/List;

.field private alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

.field private alwaysAnimateWhenZooming:Z

.field private cameraAnimationDuration:J

.field private destinationMarker:Lcom/google/glass/maps/map/MiniMapMarker;

.field private destinationMeasle:Lcom/google/glass/maps/map/MiniMapMarker;

.field private final externalState:Lcom/google/glass/maps/NavigationRenderer$State;

.field private locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

.field private locationMarkerTarget:Lcom/google/android/maps/driveabout/model/ab;

.field private miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

.field private final renderState:Lcom/google/glass/maps/NavigationRenderer$State;

.field private final screenDensity:F

.field private usingFarZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    const-wide v2, 0x4046800000000000L    # 45.0

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/google/glass/maps/NavigationRenderer;->MAX_DISTANCE_TO_ANIMATE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 190
    new-instance v2, Lcom/google/glass/maps/map/RenderUtil;

    invoke-direct {v2}, Lcom/google/glass/maps/map/RenderUtil;-><init>()V

    invoke-static {}, Lcom/google/glass/maps/NavigationRenderer;->createTheme()Lcom/google/glass/maps/map/MiniMapTheme;

    move-result-object v5

    sget v6, Lcom/google/glass/maps/R$drawable;->nav_markers:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/maps/map/MiniMapRenderer;-><init>(Landroid/content/Context;Lcom/google/glass/maps/map/RenderUtil;IILcom/google/glass/maps/map/MiniMapTheme;I)V

    .line 160
    new-instance v0, Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-direct {v0, v7}, Lcom/google/glass/maps/NavigationRenderer$State;-><init>(Lcom/google/glass/maps/NavigationRenderer$1;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    .line 163
    new-instance v0, Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-direct {v0, v7}, Lcom/google/glass/maps/NavigationRenderer$State;-><init>(Lcom/google/glass/maps/NavigationRenderer$1;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->renderState:Lcom/google/glass/maps/NavigationRenderer$State;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->alternateMiniMapPolylines:Ljava/util/List;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer;->alwaysAnimateWhenZooming:Z

    .line 187
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/google/glass/maps/NavigationRenderer;->cameraAnimationDuration:J

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/glass/maps/NavigationRenderer;->screenDensity:F

    .line 193
    return-void
.end method

.method private static createTheme()Lcom/google/glass/maps/map/MiniMapTheme;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/google/glass/maps/map/MiniMapTheme;

    invoke-direct {v0}, Lcom/google/glass/maps/map/MiniMapTheme;-><init>()V

    .line 198
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/glass/maps/map/MiniMapTheme;->roadOutlineColor:I

    .line 199
    const v1, -0x5f5f60

    iput v1, v0, Lcom/google/glass/maps/map/MiniMapTheme;->roadFillColor:I

    .line 200
    const v1, 0x3f59999a    # 0.85f

    iput v1, v0, Lcom/google/glass/maps/map/MiniMapTheme;->roadWidthScaleFactor:F

    .line 201
    return-object v0
.end method

.method private getLocationMarkerSize(F)F
    .locals 2

    .prologue
    .line 570
    const/high16 v0, 0x41800000    # 16.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x42200000    # 40.0f

    .line 572
    :goto_0
    iget v1, p0, Lcom/google/glass/maps/NavigationRenderer;->screenDensity:F

    mul-float/2addr v0, v1

    return v0

    .line 570
    :cond_0
    const/high16 v0, 0x42820000    # 65.0f

    goto :goto_0
.end method

.method private getMeasleScale(Lcom/google/glass/maps/map/CameraPosition;)F
    .locals 2

    .prologue
    .line 578
    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getRouteLineWidthForZoom(F)F
    .locals 2

    .prologue
    const/high16 v0, 0x41800000    # 16.0f

    .line 563
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 v0, 0x40c00000    # 6.0f

    .line 565
    :cond_0
    iget v1, p0, Lcom/google/glass/maps/NavigationRenderer;->screenDensity:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getZoomLevel(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)F
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x418a0000    # 17.25f

    const/high16 v3, 0x41840000    # 16.5f

    .line 594
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iput-boolean v1, p0, Lcom/google/glass/maps/NavigationRenderer;->usingFarZoom:Z

    .line 616
    :goto_0
    return v3

    .line 600
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 601
    iget-object v5, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v5}, Lcom/google/glass/maps/NavigationRenderer$State;->access$800(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 602
    iget-object v5, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v5}, Lcom/google/glass/maps/NavigationRenderer$State;->access$800(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v5

    .line 603
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v6

    double-to-float v0, v6

    div-float v0, v5, v0

    .line 604
    const/high16 v5, 0x43c80000    # 400.0f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 605
    iput-boolean v2, p0, Lcom/google/glass/maps/NavigationRenderer;->usingFarZoom:Z

    move v3, v4

    .line 606
    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 612
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer;->usingFarZoom:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x41700000    # 15.0f

    .line 614
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getSpeed()F

    move-result v5

    cmpl-float v0, v5, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer;->usingFarZoom:Z

    .line 616
    :cond_2
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationRenderer;->usingFarZoom:Z

    if-eqz v0, :cond_5

    move v0, v3

    :goto_3
    move v3, v0

    goto :goto_0

    .line 612
    :cond_3
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_1

    :cond_4
    move v0, v2

    .line 614
    goto :goto_2

    :cond_5
    move v0, v4

    .line 616
    goto :goto_3
.end method

.method private setCameraPosition(Lcom/google/glass/maps/map/CameraPosition;)V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/NavigationRenderer;->setCameraPosition(Lcom/google/glass/maps/map/CameraPosition;Z)V

    .line 621
    return-void
.end method

.method private setCameraPosition(Lcom/google/glass/maps/map/CameraPosition;Z)V
    .locals 3

    .prologue
    .line 624
    monitor-enter p0

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/map/CameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1402(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/glass/maps/map/CameraPosition;)Lcom/google/glass/maps/map/CameraPosition;

    .line 627
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    .line 628
    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMap;->getController()Lcom/google/glass/maps/map/MiniMapController;

    move-result-object v0

    .line 630
    if-eqz p2, :cond_1

    .line 631
    iget-wide v1, p0, Lcom/google/glass/maps/NavigationRenderer;->cameraAnimationDuration:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/glass/maps/map/MiniMapController;->animateTo(Lcom/google/glass/maps/map/CameraPosition;J)V

    .line 637
    :cond_0
    :goto_0
    monitor-exit p0

    .line 638
    return-void

    .line 633
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMapController;->jumpTo(Lcom/google/glass/maps/map/CameraPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldShowColorSegments(Lcom/google/glass/maps/NavigationRenderer$State;)Z
    .locals 2

    .prologue
    .line 583
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 584
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$500(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$500(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/map/ColorPolyline;->hasColorSegments()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldUpdateRoutePolyline(Lcom/google/glass/maps/NavigationRenderer$State;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 527
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$500(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v0

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    .line 531
    invoke-virtual {v1}, Lcom/google/glass/maps/map/MiniMapPolyline;->getColorPolyline()Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v1

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$500(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    if-eqz v1, :cond_3

    .line 535
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/glass/maps/NavigationRenderer;->getRouteLineWidthForZoom(F)F

    move-result v1

    .line 536
    iget-object v2, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    invoke-virtual {v2}, Lcom/google/glass/maps/map/MiniMapPolyline;->getLineWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 540
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized snapshotState()Lcom/google/glass/maps/NavigationRenderer$State;
    .locals 2

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->renderState:Lcom/google/glass/maps/NavigationRenderer$State;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/NavigationRenderer$State;->snapshotFrom(Lcom/google/glass/maps/NavigationRenderer$State;)V

    .line 647
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->renderState:Lcom/google/glass/maps/NavigationRenderer$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateMiniMap(Lcom/google/glass/maps/NavigationRenderer$State;J)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 418
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$100(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    .line 419
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v8

    .line 420
    if-eqz v3, :cond_0

    .line 421
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    if-nez v0, :cond_2

    .line 422
    new-instance v0, Lcom/google/glass/maps/map/MiniMapLocationMarker;

    invoke-direct {v0, v3}, Lcom/google/glass/maps/map/MiniMapLocationMarker;-><init>(Lcom/google/android/maps/driveabout/model/ab;)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    .line 423
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    invoke-virtual {v8, v0}, Lcom/google/glass/maps/map/MiniMap;->setLocationMarker(Lcom/google/glass/maps/map/MiniMapLocationMarker;)V

    .line 424
    new-instance v0, Lcom/google/glass/maps/map/MiniMapCircle;

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$200(Lcom/google/glass/maps/NavigationRenderer$State;)F

    move-result v1

    .line 425
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/google/glass/maps/R$color;->accuracy_circle_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v3, v1, v2}, Lcom/google/glass/maps/map/MiniMapCircle;-><init>(Lcom/google/android/maps/driveabout/model/ab;FI)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->accuracyCircle:Lcom/google/glass/maps/map/MiniMapCircle;

    .line 426
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->accuracyCircle:Lcom/google/glass/maps/map/MiniMapCircle;

    invoke-virtual {v8, v0}, Lcom/google/glass/maps/map/MiniMap;->addCircle(Lcom/google/glass/maps/map/MiniMapCircle;)V

    .line 440
    :goto_0
    iput-object v3, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarkerTarget:Lcom/google/android/maps/driveabout/model/ab;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    .line 446
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMapPolyline;->getColorPolyline()Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/map/ColorPolyline;->getCenterline()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ag;->c()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 447
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMarker:Lcom/google/glass/maps/map/MiniMapMarker;

    if-nez v1, :cond_4

    .line 448
    new-instance v1, Lcom/google/glass/maps/map/MiniMapMarker;

    invoke-direct {v1, v0, v7, v7, v7}, Lcom/google/glass/maps/map/MiniMapMarker;-><init>(Lcom/google/android/maps/driveabout/model/ab;IIZ)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMarker:Lcom/google/glass/maps/map/MiniMapMarker;

    .line 450
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMarker:Lcom/google/glass/maps/map/MiniMapMarker;

    invoke-virtual {v8, v1}, Lcom/google/glass/maps/map/MiniMap;->addMarker(Lcom/google/glass/maps/map/MiniMapMarker;)V

    .line 455
    :goto_1
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMeasle:Lcom/google/glass/maps/map/MiniMapMarker;

    if-nez v1, :cond_5

    .line 457
    new-instance v1, Lcom/google/glass/maps/map/MiniMapMarker;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v9, v2, v7}, Lcom/google/glass/maps/map/MiniMapMarker;-><init>(Lcom/google/android/maps/driveabout/model/ab;IIZ)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMeasle:Lcom/google/glass/maps/map/MiniMapMarker;

    .line 459
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMeasle:Lcom/google/glass/maps/map/MiniMapMarker;

    invoke-virtual {v0, v9}, Lcom/google/glass/maps/map/MiniMapMarker;->setLayOnGround(Z)V

    .line 460
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMeasle:Lcom/google/glass/maps/map/MiniMapMarker;

    invoke-virtual {v8, v0}, Lcom/google/glass/maps/map/MiniMap;->addMarker(Lcom/google/glass/maps/map/MiniMapMarker;)V

    .line 464
    :goto_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMeasle:Lcom/google/glass/maps/map/MiniMapMarker;

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/maps/NavigationRenderer;->getMeasleScale(Lcom/google/glass/maps/map/CameraPosition;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMapMarker;->setScale(F)V

    .line 466
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationRenderer;->shouldShowColorSegments(Lcom/google/glass/maps/NavigationRenderer$State;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMapPolyline;->setShowColorSegments(Z)V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$600(Lcom/google/glass/maps/NavigationRenderer$State;)[Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    if-eq v0, v1, :cond_8

    .line 471
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$600(Lcom/google/glass/maps/NavigationRenderer$State;)[Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

    .line 473
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->alternateMiniMapPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/MiniMapPolyline;

    .line 474
    invoke-virtual {v8, v0}, Lcom/google/glass/maps/map/MiniMap;->removePolyline(Lcom/google/glass/maps/map/MiniMapPolyline;)V

    goto :goto_3

    .line 428
    :cond_2
    sget v0, Lcom/google/glass/maps/NavigationRenderer;->MAX_DISTANCE_TO_ANIMATE:I

    sget v1, Lcom/google/glass/maps/NavigationRenderer;->MAX_DISTANCE_TO_ANIMATE:I

    mul-int/2addr v0, v1

    .line 429
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarkerTarget:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    .line 430
    invoke-virtual {v1}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->getLocation()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/model/ab;->d(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v1

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    .line 431
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->animateLocation(JLcom/google/android/maps/driveabout/model/ab;J)V

    .line 432
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->accuracyCircle:Lcom/google/glass/maps/map/MiniMapCircle;

    move-wide v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/map/MiniMapCircle;->animateCenter(JLcom/google/android/maps/driveabout/model/ab;J)V

    .line 437
    :goto_4
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/glass/maps/NavigationRenderer;->getLocationMarkerSize(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->setSizePx(F)V

    .line 438
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->accuracyCircle:Lcom/google/glass/maps/map/MiniMapCircle;

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$200(Lcom/google/glass/maps/NavigationRenderer$State;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMapCircle;->setRadius(F)V

    goto/16 :goto_0

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->setLocation(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 435
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->accuracyCircle:Lcom/google/glass/maps/map/MiniMapCircle;

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/map/MiniMapCircle;->setCenter(Lcom/google/android/maps/driveabout/model/ab;)V

    goto :goto_4

    .line 452
    :cond_4
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMarker:Lcom/google/glass/maps/map/MiniMapMarker;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/map/MiniMapMarker;->setLocation(Lcom/google/android/maps/driveabout/model/ab;)V

    goto/16 :goto_1

    .line 462
    :cond_5
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMeasle:Lcom/google/glass/maps/map/MiniMapMarker;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/map/MiniMapMarker;->setLocation(Lcom/google/android/maps/driveabout/model/ab;)V

    goto/16 :goto_2

    .line 476
    :cond_6
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->alternateMiniMapPolylines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 478
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

    if-eqz v0, :cond_7

    .line 479
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->alternatePolylines:[Lcom/google/android/maps/driveabout/model/ag;

    array-length v2, v1

    move v0, v7

    :goto_5
    if-ge v0, v2, :cond_7

    aget-object v3, v1, v0

    .line 480
    new-instance v4, Lcom/google/glass/maps/map/MiniMapPolyline;

    iget-object v5, p0, Lcom/google/glass/maps/NavigationRenderer;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    const/4 v7, 0x0

    .line 481
    invoke-static {v3, v7}, Lcom/google/glass/maps/map/TrafficPolylineFactory;->makeColorPolyLine(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v3

    .line 482
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v7

    invoke-direct {p0, v7}, Lcom/google/glass/maps/NavigationRenderer;->getRouteLineWidthForZoom(F)F

    move-result v7

    invoke-direct {v4, v5, v3, v7}, Lcom/google/glass/maps/map/MiniMapPolyline;-><init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/maps/map/ColorPolyline;F)V

    .line 484
    const v3, -0x444445

    invoke-virtual {v4, v3}, Lcom/google/glass/maps/map/MiniMapPolyline;->setColorARGB(I)V

    .line 486
    invoke-virtual {v8, v4}, Lcom/google/glass/maps/map/MiniMap;->addPolyline(Lcom/google/glass/maps/map/MiniMapPolyline;)V

    .line 487
    iget-object v3, p0, Lcom/google/glass/maps/NavigationRenderer;->alternateMiniMapPolylines:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 492
    :cond_7
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    if-eqz v0, :cond_8

    .line 493
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMap;->removePolyline(Lcom/google/glass/maps/map/MiniMapPolyline;)V

    .line 494
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMap;->addPolyline(Lcom/google/glass/maps/map/MiniMapPolyline;)V

    .line 499
    :cond_8
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    if-eqz v0, :cond_9

    .line 500
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$300(Lcom/google/glass/maps/NavigationRenderer$State;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->setBearing(F)V

    .line 504
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationRenderer;->shouldUpdateRoutePolyline(Lcom/google/glass/maps/NavigationRenderer$State;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 505
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationRenderer;->updateRoutePolyline(Lcom/google/glass/maps/NavigationRenderer$State;)V

    .line 508
    :cond_a
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$700(Lcom/google/glass/maps/NavigationRenderer$State;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 509
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$700(Lcom/google/glass/maps/NavigationRenderer$State;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;

    .line 511
    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/model/traffic/TrafficIncident;->a(Z)Lcom/google/android/maps/driveabout/model/ac;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 513
    :cond_b
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMap;->setFeatures(Ljava/util/List;)V

    .line 516
    :cond_c
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1000(Lcom/google/glass/maps/NavigationRenderer$State;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1200(Lcom/google/glass/maps/NavigationRenderer$State;)F

    move-result v0

    :goto_7
    invoke-virtual {v8, v0}, Lcom/google/glass/maps/map/MiniMap;->setDimMapAmount(F)V

    .line 517
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1100(Lcom/google/glass/maps/NavigationRenderer$State;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1200(Lcom/google/glass/maps/NavigationRenderer$State;)F

    move-result v6

    :cond_d
    invoke-virtual {v8, v6}, Lcom/google/glass/maps/map/MiniMap;->setDimLabelsAmount(F)V

    .line 518
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1300(Lcom/google/glass/maps/NavigationRenderer$State;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/google/glass/maps/map/MiniMap;->setDrawLineLabelsUnderPolyline(Z)V

    .line 519
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$400(Lcom/google/glass/maps/NavigationRenderer$State;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/google/glass/maps/map/MiniMap;->setSuppressLabels(Z)V

    .line 520
    return-void

    :cond_e
    move v0, v6

    .line 516
    goto :goto_7
.end method

.method private updateRoutePolyline(Lcom/google/glass/maps/NavigationRenderer$State;)V
    .locals 5

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMap;->removePolyline(Lcom/google/glass/maps/map/MiniMapPolyline;)V

    .line 552
    :cond_0
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$500(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$color;->route_polyline_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 554
    new-instance v1, Lcom/google/glass/maps/map/MiniMapPolyline;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationRenderer;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$500(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v3

    .line 555
    invoke-static {p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/glass/maps/NavigationRenderer;->getRouteLineWidthForZoom(F)F

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/maps/map/MiniMapPolyline;-><init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/maps/map/ColorPolyline;F)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    .line 556
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/map/MiniMapPolyline;->setColorARGB(I)V

    .line 557
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMap;->addPolyline(Lcom/google/glass/maps/map/MiniMapPolyline;)V

    .line 559
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized clearCurTurnLocation()V
    .locals 2

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$802(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearNextTurnLocation()V
    .locals 2

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$902(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearRoute()V
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$502(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/glass/maps/map/ColorPolyline;)Lcom/google/glass/maps/map/ColorPolyline;

    .line 296
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$802(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    .line 297
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$902(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;)V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/maps/NavigationRenderer;->moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;Z)V

    .line 244
    return-void
.end method

.method public moveCameraOverhead(Lcom/google/android/maps/driveabout/model/am;Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->g()I

    move-result v0

    int-to-float v0, v0

    .line 253
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMapWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/glass/maps/NavigationRenderer;->screenDensity:F

    div-float/2addr v1, v2

    .line 252
    invoke-static {v0, v1}, Lcom/google/glass/maps/map/Camera;->getZoomToFitModelSize(FF)F

    move-result v0

    .line 254
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->h()I

    move-result v1

    int-to-float v1, v1

    .line 255
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMapHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/google/glass/maps/NavigationRenderer;->screenDensity:F

    div-float/2addr v2, v4

    .line 254
    invoke-static {v1, v2}, Lcom/google/glass/maps/map/Camera;->getZoomToFitModelSize(FF)F

    move-result v1

    .line 256
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    sub-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 258
    new-instance v0, Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->f()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/CameraPosition;-><init>(Lcom/google/android/maps/driveabout/model/ab;FFFF)V

    invoke-direct {p0, v0, p2}, Lcom/google/glass/maps/NavigationRenderer;->setCameraPosition(Lcom/google/glass/maps/map/CameraPosition;Z)V

    .line 259
    return-void
.end method

.method public moveCameraToFollow(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 219
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 224
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getBearing()F

    move-result v4

    .line 226
    const/high16 v3, 0x42700000    # 60.0f

    .line 227
    const v5, 0x3f333333    # 0.7f

    .line 234
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationRenderer;->getZoomLevel(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)F

    move-result v2

    .line 235
    new-instance v0, Lcom/google/glass/maps/map/CameraPosition;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/CameraPosition;-><init>(Lcom/google/android/maps/driveabout/model/ab;FFFF)V

    .line 236
    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationRenderer;->setCameraPosition(Lcom/google/glass/maps/map/CameraPosition;)V

    .line 237
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationRenderer$State;->access$300(Lcom/google/glass/maps/NavigationRenderer$State;)F

    move-result v4

    move v3, v5

    .line 231
    goto :goto_0
.end method

.method public onPrepareFrame(J)V
    .locals 2

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationRenderer;->snapshotState()Lcom/google/glass/maps/NavigationRenderer$State;

    move-result-object v0

    .line 407
    invoke-static {v0}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v1

    if-nez v1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/google/glass/maps/NavigationRenderer;->updateMiniMap(Lcom/google/glass/maps/NavigationRenderer$State;J)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-super {p0, p1}, Lcom/google/glass/maps/map/MiniMapRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 360
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMarker:Lcom/google/glass/maps/map/MiniMapMarker;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMarker:Lcom/google/glass/maps/map/MiniMapMarker;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMap;->removeMarker(Lcom/google/glass/maps/map/MiniMapMarker;)V

    .line 363
    iput-object v2, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMarker:Lcom/google/glass/maps/map/MiniMapMarker;

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMeasle:Lcom/google/glass/maps/map/MiniMapMarker;

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMeasle:Lcom/google/glass/maps/map/MiniMapMarker;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/MiniMap;->removeMarker(Lcom/google/glass/maps/map/MiniMapMarker;)V

    .line 368
    iput-object v2, p0, Lcom/google/glass/maps/NavigationRenderer;->destinationMeasle:Lcom/google/glass/maps/map/MiniMapMarker;

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    if-eqz v1, :cond_2

    .line 372
    invoke-virtual {v0, v2}, Lcom/google/glass/maps/map/MiniMap;->setLocationMarker(Lcom/google/glass/maps/map/MiniMapLocationMarker;)V

    .line 373
    iput-object v2, p0, Lcom/google/glass/maps/NavigationRenderer;->locationMarker:Lcom/google/glass/maps/map/MiniMapLocationMarker;

    .line 376
    :cond_2
    iput-object v2, p0, Lcom/google/glass/maps/NavigationRenderer;->accuracyCircle:Lcom/google/glass/maps/map/MiniMapCircle;

    .line 377
    iput-object v2, p0, Lcom/google/glass/maps/NavigationRenderer;->miniMapRoutePolyline:Lcom/google/glass/maps/map/MiniMapPolyline;

    .line 379
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->alternateMiniMapPolylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 382
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMap;->getController()Lcom/google/glass/maps/map/MiniMapController;

    move-result-object v1

    .line 383
    iget-boolean v2, p0, Lcom/google/glass/maps/NavigationRenderer;->alwaysAnimateWhenZooming:Z

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/map/MiniMapController;->setAlwaysAnimateWhenZooming(Z)V

    .line 384
    new-instance v2, Lcom/google/glass/maps/NavigationRenderer$1;

    invoke-direct {v2, p0}, Lcom/google/glass/maps/NavigationRenderer$1;-><init>(Lcom/google/glass/maps/NavigationRenderer;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/maps/map/MiniMapController;->setOrientationInterpolator(Landroid/view/animation/Interpolator;)V

    .line 390
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/map/MiniMap;->setSuppressLabels(Z)V

    .line 393
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1400(Lcom/google/glass/maps/NavigationRenderer$State;)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/glass/maps/map/MiniMapController;->jumpTo(Lcom/google/glass/maps/map/CameraPosition;)V

    .line 396
    :cond_3
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .prologue
    .line 400
    invoke-virtual {p0, p2}, Lcom/google/glass/maps/NavigationRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 401
    return-void
.end method

.method public declared-synchronized setAlternateRoutes([Lcom/google/android/maps/driveabout/model/ag;)V
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$602(Lcom/google/glass/maps/NavigationRenderer$State;[Lcom/google/android/maps/driveabout/model/ag;)[Lcom/google/android/maps/driveabout/model/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAlwaysAnimateWhenZooming(Z)V
    .locals 1

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationRenderer;->alwaysAnimateWhenZooming:Z

    .line 344
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMap;->getController()Lcom/google/glass/maps/map/MiniMapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMapController;->setAlwaysAnimateWhenZooming(Z)V

    .line 348
    :cond_0
    return-void
.end method

.method public setBearing(F)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$302(Lcom/google/glass/maps/NavigationRenderer$State;F)F

    .line 267
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationRenderer;->getMiniMap()Lcom/google/glass/maps/map/MiniMap;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/google/glass/maps/map/MiniMap;->getController()Lcom/google/glass/maps/map/MiniMapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/map/MiniMapController;->overrideBearing(F)V

    .line 271
    :cond_0
    return-void
.end method

.method public setCameraAnimationDuration(J)V
    .locals 0

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/google/glass/maps/NavigationRenderer;->cameraAnimationDuration:J

    .line 353
    return-void
.end method

.method public declared-synchronized setCurTurnLocation(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$802(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDimAmount(F)V
    .locals 1

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1202(Lcom/google/glass/maps/NavigationRenderer$State;F)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDimLabels(Z)V
    .locals 1

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1102(Lcom/google/glass/maps/NavigationRenderer$State;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDimMap(Z)V
    .locals 1

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1002(Lcom/google/glass/maps/NavigationRenderer$State;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDrawLineLabelsUnderPolyline(Z)V
    .locals 1

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$1302(Lcom/google/glass/maps/NavigationRenderer$State;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLocation(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)V
    .locals 4

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v1, v0}, Lcom/google/glass/maps/NavigationRenderer$State;->access$102(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    .line 210
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getAccuracy()F

    move-result v1

    .line 211
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    .line 210
    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$202(Lcom/google/glass/maps/NavigationRenderer$State;F)F

    .line 212
    iget-object v1, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getBearing()F

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/glass/maps/NavigationRenderer$State;->access$302(Lcom/google/glass/maps/NavigationRenderer$State;F)F

    .line 213
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    return-void

    .line 212
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNextTurnLocation(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$902(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRoutePolyline(Lcom/google/glass/maps/map/ColorPolyline;)V
    .locals 1

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$502(Lcom/google/glass/maps/NavigationRenderer$State;Lcom/google/glass/maps/map/ColorPolyline;)Lcom/google/glass/maps/map/ColorPolyline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSuppressLabels(Z)V
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$402(Lcom/google/glass/maps/NavigationRenderer$State;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrafficIncidents(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationRenderer;->externalState:Lcom/google/glass/maps/NavigationRenderer$State;

    invoke-static {v0, p1}, Lcom/google/glass/maps/NavigationRenderer$State;->access$702(Lcom/google/glass/maps/NavigationRenderer$State;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
