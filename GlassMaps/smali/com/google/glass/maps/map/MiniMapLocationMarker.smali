.class public Lcom/google/glass/maps/map/MiniMapLocationMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SIZE_PX:I = 0x64

.field private static final MARKER_INDEX_BALL:I = 0x0

.field private static final MARKER_INDEX_CHEVRON:I = 0x1


# instance fields
.field private bearing:F

.field private bound:Lcom/google/android/maps/driveabout/model/l;

.field private interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

.field private location:Lcom/google/android/maps/driveabout/model/ab;

.field private sizePx:F

.field private final tmpBuffer:[F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->bearing:F

    .line 25
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->sizePx:F

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->tmpBuffer:[F

    .line 33
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    .line 34
    return-void
.end method

.method public static preparePass(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;)V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 82
    const-string v0, "MVP"

    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getMVPMatrix()[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformMatrix(Ljava/lang/String;[F)V

    .line 83
    const-string v0, "texture"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;I)V

    .line 84
    const-string v0, "displacement"

    sget-object v1, Lcom/google/glass/maps/map/RenderUtil;->CENTERED_SQUARE_DISPLACEMENT:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 85
    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/Texture;->bind()V

    .line 86
    return-void
.end method


# virtual methods
.method public animateLocation(JLcom/google/android/maps/driveabout/model/ab;J)V
    .locals 7

    .prologue
    .line 68
    new-instance v0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v1, :cond_0

    move-object v1, p3

    :goto_0
    move-object v2, p3

    move-wide v3, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;JJ)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    .line 70
    iput-object p3, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    .line 71
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    goto :goto_0
.end method

.method public draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;J)V
    .locals 8

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 122
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    invoke-virtual {v0, p3, p4}, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->getPosition(J)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    .line 124
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    .line 129
    :cond_0
    invoke-static {}, Lcom/google/glass/maps/map/PointPool;->getInstance()Lcom/google/glass/maps/map/PointPool;

    move-result-object v0

    iget-object v0, v0, Lcom/google/glass/maps/map/PointPool;->A0:Lcom/google/android/maps/driveabout/model/ab;

    .line 130
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/map/Camera;->getCenter(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 131
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScaleFactor()F

    move-result v6

    .line 132
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v2, v1, v6

    .line 133
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float v3, v1, v6

    .line 134
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    mul-float v4, v0, v6

    .line 135
    const-string v1, "center"

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FFFF)V

    .line 136
    const-string v0, "size"

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->sizePx:F

    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getPixelSize()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 138
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->bearing:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_1

    .line 139
    const-string v0, "theta"

    invoke-virtual {p2, v0, v7}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 140
    const-string v0, "markerIndex"

    invoke-virtual {p2, v0, v7}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 147
    :goto_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 148
    return-void

    .line 142
    :cond_1
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->bearing:F

    const v1, -0x3fb6f025

    mul-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    .line 143
    const-string v1, "theta"

    invoke-virtual {p2, v1, v0}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 144
    const-string v0, "markerIndex"

    invoke-virtual {p2, v0, v5}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->bearing:F

    return v0
.end method

.method public getBound()Lcom/google/android/maps/driveabout/model/an;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->bound:Lcom/google/android/maps/driveabout/model/l;

    return-object v0
.end method

.method public getLocation()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public getSizePx()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->sizePx:F

    return v0
.end method

.method public setBearing(F)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->bearing:F

    .line 46
    return-void
.end method

.method public setLocation(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    .line 38
    return-void
.end method

.method public setSizePx(F)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->sizePx:F

    .line 54
    return-void
.end method

.method public updateCamera(Lcom/google/glass/maps/map/Camera;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 90
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->getLocation()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/bg;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    :goto_0
    return v0

    .line 95
    :cond_0
    iget v2, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->sizePx:F

    neg-float v2, v2

    mul-float/2addr v2, v6

    .line 96
    iget v3, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->sizePx:F

    neg-float v3, v3

    mul-float/2addr v3, v6

    .line 97
    iget v4, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->sizePx:F

    mul-float/2addr v4, v6

    .line 98
    iget v5, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->sizePx:F

    mul-float/2addr v5, v6

    .line 102
    invoke-virtual {p0}, Lcom/google/glass/maps/map/MiniMapLocationMarker;->getLocation()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->tmpBuffer:[F

    invoke-virtual {p1, v6, v7}, Lcom/google/glass/maps/map/Camera;->getScreenCoordinatesWithBuffer(Lcom/google/android/maps/driveabout/model/ab;[F)V

    .line 103
    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->tmpBuffer:[F

    aget v0, v6, v0

    .line 104
    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->tmpBuffer:[F

    aget v6, v6, v1

    .line 105
    add-float/2addr v2, v0

    add-float/2addr v0, v4

    add-float/2addr v3, v6

    add-float v4, v6, v5

    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/google/glass/maps/map/Camera;->getGroundPlaneQuad(FFFF)Lcom/google/android/maps/driveabout/model/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapLocationMarker;->bound:Lcom/google/android/maps/driveabout/model/l;

    move v0, v1

    .line 107
    goto :goto_0
.end method
