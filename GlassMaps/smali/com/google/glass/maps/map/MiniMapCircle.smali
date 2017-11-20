.class public Lcom/google/glass/maps/map/MiniMapCircle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final base:Lcom/google/android/maps/driveabout/model/ab;

.field private center:Lcom/google/android/maps/driveabout/model/ab;

.field private final color:I

.field private interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

.field private radius:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ab;FI)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->base:Lcom/google/android/maps/driveabout/model/ab;

    .line 30
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapCircle;->center:Lcom/google/android/maps/driveabout/model/ab;

    .line 31
    iput p2, p0, Lcom/google/glass/maps/map/MiniMapCircle;->radius:F

    .line 32
    iput p3, p0, Lcom/google/glass/maps/map/MiniMapCircle;->color:I

    .line 33
    return-void
.end method

.method public static preparePass(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;)V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 65
    const-string v0, "MVP"

    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getMVPMatrix()[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformMatrix(Ljava/lang/String;[F)V

    .line 66
    const-string v0, "pos"

    sget-object v1, Lcom/google/glass/maps/map/RenderUtil;->CENTERED_SQUARE_DISPLACEMENT:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getScreenDensity()F

    move-result v1

    div-float/2addr v0, v1

    .line 69
    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getScreenDensity()F

    move-result v2

    div-float/2addr v1, v2

    .line 70
    const-string v2, "viewSize"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FF)V

    .line 71
    return-void
.end method


# virtual methods
.method public animateCenter(JLcom/google/android/maps/driveabout/model/ab;J)V
    .locals 7

    .prologue
    .line 48
    new-instance v0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapCircle;->center:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v1, :cond_0

    move-object v1, p3

    :goto_0
    move-object v2, p3

    move-wide v3, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;JJ)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    .line 50
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapCircle;->center:Lcom/google/android/maps/driveabout/model/ab;

    goto :goto_0
.end method

.method public draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;J)V
    .locals 7

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    invoke-virtual {v0, p3, p4}, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->getPosition(J)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->center:Lcom/google/android/maps/driveabout/model/ab;

    .line 83
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->base:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/map/Camera;->getCenter(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScaleFactor()F

    move-result v6

    .line 90
    const-string v1, "center"

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->center:Lcom/google/android/maps/driveabout/model/ab;

    .line 91
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapCircle;->base:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v2, v0, v6

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->center:Lcom/google/android/maps/driveabout/model/ab;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v0

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapCircle;->base:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float v3, v0, v6

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapCircle;->center:Lcom/google/android/maps/driveabout/model/ab;

    .line 93
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v0

    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapCircle;->base:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    mul-float v4, v0, v6

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p2

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FFFF)V

    .line 94
    const-string v0, "radius"

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapCircle;->radius:F

    mul-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 95
    const-string v0, "color"

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapCircle;->color:I

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformColorARGB(Ljava/lang/String;I)V

    .line 96
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 97
    return-void
.end method

.method public setCenter(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapCircle;->center:Lcom/google/android/maps/driveabout/model/ab;

    .line 38
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/google/glass/maps/map/MiniMapCircle;->radius:F

    .line 55
    return-void
.end method
