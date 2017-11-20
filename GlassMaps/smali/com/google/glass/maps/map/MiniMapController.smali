.class public Lcom/google/glass/maps/map/MiniMapController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LN_TO_LOG2:D

.field private static final MAX_TILES_TO_ANIMATE:I = 0x2

.field private static final MAX_ZOOMS_TO_ANIMATE:F = 3.0f


# instance fields
.field private alwaysAnimateWhenZooming:Z

.field private animationDurationMs:J

.field private animationStartPosition:Lcom/google/glass/maps/map/CameraPosition;

.field private animationStartTime:J

.field private animationTarget:Lcom/google/glass/maps/map/CameraPosition;

.field private final clock:Lcom/google/glass/time/Clock;

.field private orientationInterpolator:Landroid/view/animation/Interpolator;

.field private position:Lcom/google/glass/maps/map/CameraPosition;

.field private positionInterpolator:Landroid/view/animation/Interpolator;

.field private final renderUtil:Lcom/google/glass/maps/map/RenderUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lcom/google/glass/maps/map/MiniMapController;->LN_TO_LOG2:D

    return-void
.end method

.method constructor <init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/time/Clock;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->positionInterpolator:Landroid/view/animation/Interpolator;

    .line 33
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->orientationInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapController;->alwaysAnimateWhenZooming:Z

    .line 40
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapController;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 41
    iput-object p2, p0, Lcom/google/glass/maps/map/MiniMapController;->clock:Lcom/google/glass/time/Clock;

    .line 42
    sget-object v0, Lcom/google/glass/maps/map/Camera;->DEFAULT_POSITION:Lcom/google/glass/maps/map/CameraPosition;

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->position:Lcom/google/glass/maps/map/CameraPosition;

    .line 43
    return-void
.end method

.method private static getPositionWithBearing(Lcom/google/glass/maps/map/CameraPosition;F)Lcom/google/glass/maps/map/CameraPosition;
    .locals 6

    .prologue
    .line 211
    new-instance v0, Lcom/google/glass/maps/map/CameraPosition;

    invoke-virtual {p0}, Lcom/google/glass/maps/map/CameraPosition;->getTarget()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v3

    .line 212
    invoke-virtual {p0}, Lcom/google/glass/maps/map/CameraPosition;->getLookAhead()F

    move-result v5

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/CameraPosition;-><init>(Lcom/google/android/maps/driveabout/model/ab;FFFF)V

    return-object v0
.end method

.method private static interpolate(DDF)D
    .locals 4

    .prologue
    .line 202
    sub-double v0, p2, p0

    float-to-double v2, p4

    mul-double/2addr v0, v2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static interpolate(FFF)F
    .locals 1

    .prologue
    .line 206
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private interpolate(Lcom/google/glass/maps/map/CameraPosition;Lcom/google/glass/maps/map/CameraPosition;F)Lcom/google/glass/maps/map/CameraPosition;
    .locals 11

    .prologue
    const/high16 v9, 0x43340000    # 180.0f

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/high16 v10, 0x43b40000    # 360.0f

    .line 153
    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 154
    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getTarget()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/glass/maps/map/CameraPosition;->getTarget()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapController;->orientationInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    invoke-interface {v2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;F)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->orientationInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 173
    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v0

    neg-float v0, v0

    float-to-double v2, v0

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v0

    neg-float v0, v0

    float-to-double v4, v0

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/glass/maps/map/MiniMapController;->interpolate(DDF)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    neg-double v2, v2

    sget-wide v4, Lcom/google/glass/maps/map/MiniMapController;->LN_TO_LOG2:D

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 176
    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/glass/maps/map/CameraPosition;->getViewingAngle()F

    move-result v3

    invoke-static {v0, v3, v6}, Lcom/google/glass/maps/map/MiniMapController;->interpolate(FFF)F

    move-result v3

    .line 177
    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getLookAhead()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/glass/maps/map/CameraPosition;->getLookAhead()F

    move-result v4

    invoke-static {v0, v4, v6}, Lcom/google/glass/maps/map/MiniMapController;->interpolate(FFF)F

    move-result v5

    .line 181
    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getBearing()F

    move-result v4

    .line 182
    invoke-virtual {p2}, Lcom/google/glass/maps/map/CameraPosition;->getBearing()F

    move-result v0

    .line 183
    cmpl-float v7, v4, v0

    if-lez v7, :cond_3

    .line 184
    sub-float v7, v4, v0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    .line 185
    sub-float/2addr v4, v10

    .line 192
    :cond_0
    :goto_1
    invoke-static {v4, v0, v6}, Lcom/google/glass/maps/map/MiniMapController;->interpolate(FFF)F

    move-result v4

    .line 193
    float-to-double v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v0, v6, v8

    if-gez v0, :cond_1

    .line 194
    add-float/2addr v4, v10

    .line 197
    :cond_1
    new-instance v0, Lcom/google/glass/maps/map/CameraPosition;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/CameraPosition;-><init>(Lcom/google/android/maps/driveabout/model/ab;FFFF)V

    return-object v0

    .line 157
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getTarget()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/glass/maps/map/CameraPosition;->getTarget()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapController;->positionInterpolator:Landroid/view/animation/Interpolator;

    .line 158
    invoke-interface {v2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;F)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_3
    sub-float v7, v0, v4

    cmpl-float v7, v7, v9

    if-lez v7, :cond_0

    .line 189
    sub-float/2addr v0, v10

    goto :goto_1
.end method

.method private shouldJump(Lcom/google/glass/maps/map/CameraPosition;Lcom/google/glass/maps/map/CameraPosition;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 120
    iget-boolean v2, p0, Lcom/google/glass/maps/map/MiniMapController;->alwaysAnimateWhenZooming:Z

    if-eqz v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v0, v1

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p2}, Lcom/google/glass/maps/map/CameraPosition;->getTarget()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getTarget()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->d(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v2

    .line 129
    invoke-virtual {p2}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v3

    invoke-virtual {p1}, Lcom/google/glass/maps/map/CameraPosition;->getZoom()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    .line 130
    rsub-int/lit8 v3, v3, 0x1e

    shl-int v3, v1, v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 131
    mul-float/2addr v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v0, v1

    .line 132
    goto :goto_0
.end method


# virtual methods
.method declared-synchronized animate(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapController;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/RenderUtil;->checkOnRenderThread()V

    .line 104
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartPosition:Lcom/google/glass/maps/map/CameraPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 115
    :goto_0
    monitor-exit p0

    return v0

    .line 107
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartTime:J

    iget-wide v3, p0, Lcom/google/glass/maps/map/MiniMapController;->animationDurationMs:J

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapController;->animationTarget:Lcom/google/glass/maps/map/CameraPosition;

    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMapController;->position:Lcom/google/glass/maps/map/CameraPosition;

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMapController;->animationTarget:Lcom/google/glass/maps/map/CameraPosition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_1
    :try_start_2
    iget-wide v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartTime:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/google/glass/maps/map/MiniMapController;->animationDurationMs:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 114
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartPosition:Lcom/google/glass/maps/map/CameraPosition;

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapController;->animationTarget:Lcom/google/glass/maps/map/CameraPosition;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/glass/maps/map/MiniMapController;->interpolate(Lcom/google/glass/maps/map/CameraPosition;Lcom/google/glass/maps/map/CameraPosition;F)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->position:Lcom/google/glass/maps/map/CameraPosition;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized animateTo(Lcom/google/glass/maps/map/CameraPosition;J)V
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->position:Lcom/google/glass/maps/map/CameraPosition;

    invoke-direct {p0, v0, p1}, Lcom/google/glass/maps/map/MiniMapController;->shouldJump(Lcom/google/glass/maps/map/CameraPosition;Lcom/google/glass/maps/map/CameraPosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/map/MiniMapController;->jumpTo(Lcom/google/glass/maps/map/CameraPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->position:Lcom/google/glass/maps/map/CameraPosition;

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 74
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapController;->animationTarget:Lcom/google/glass/maps/map/CameraPosition;

    .line 75
    iput-wide p2, p0, Lcom/google/glass/maps/map/MiniMapController;->animationDurationMs:J

    .line 76
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPosition()Lcom/google/glass/maps/map/CameraPosition;
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->position:Lcom/google/glass/maps/map/CameraPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAnimating()Z
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartPosition:Lcom/google/glass/maps/map/CameraPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized jumpTo(Lcom/google/glass/maps/map/CameraPosition;)V
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapController;->position:Lcom/google/glass/maps/map/CameraPosition;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationTarget:Lcom/google/glass/maps/map/CameraPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized overrideBearing(F)V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->position:Lcom/google/glass/maps/map/CameraPosition;

    invoke-static {v0, p1}, Lcom/google/glass/maps/map/MiniMapController;->getPositionWithBearing(Lcom/google/glass/maps/map/CameraPosition;F)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->position:Lcom/google/glass/maps/map/CameraPosition;

    .line 82
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartPosition:Lcom/google/glass/maps/map/CameraPosition;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartPosition:Lcom/google/glass/maps/map/CameraPosition;

    invoke-static {v0, p1}, Lcom/google/glass/maps/map/MiniMapController;->getPositionWithBearing(Lcom/google/glass/maps/map/CameraPosition;F)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationStartPosition:Lcom/google/glass/maps/map/CameraPosition;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationTarget:Lcom/google/glass/maps/map/CameraPosition;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationTarget:Lcom/google/glass/maps/map/CameraPosition;

    invoke-static {v0, p1}, Lcom/google/glass/maps/map/MiniMapController;->getPositionWithBearing(Lcom/google/glass/maps/map/CameraPosition;F)Lcom/google/glass/maps/map/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapController;->animationTarget:Lcom/google/glass/maps/map/CameraPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAlwaysAnimateWhenZooming(Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/google/glass/maps/map/MiniMapController;->alwaysAnimateWhenZooming:Z

    .line 58
    return-void
.end method

.method public setOrientationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapController;->orientationInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    return-void
.end method

.method public setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapController;->positionInterpolator:Landroid/view/animation/Interpolator;

    .line 48
    return-void
.end method
