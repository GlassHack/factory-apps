.class public Lcom/google/glass/maps/map/MiniMapMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final MARKER_PULSE_MS:I = 0x3e8

.field private static final STATE_GONE:I = 0x3

.field private static final STATE_HIDING:I = 0x2

.field private static final STATE_SHOWING:I = 0x0

.field private static final STATE_SHOWN:I = 0x1


# instance fields
.field private animation:Lcom/google/glass/maps/map/Animations$MarkerAnimation;

.field private animationState:I

.field private final base:Lcom/google/android/maps/driveabout/model/ab;

.field private index:I

.field private interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

.field private layOnGround:Z

.field private layer:I

.field private location:Lcom/google/android/maps/driveabout/model/ab;

.field private pulse:Z

.field private scale:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ab;IIZ)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->scale:F

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animationState:I

    .line 36
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->base:Lcom/google/android/maps/driveabout/model/ab;

    .line 48
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    .line 49
    iput p2, p0, Lcom/google/glass/maps/map/MiniMapMarker;->index:I

    .line 50
    iput p3, p0, Lcom/google/glass/maps/map/MiniMapMarker;->layer:I

    .line 51
    iput-boolean p4, p0, Lcom/google/glass/maps/map/MiniMapMarker;->pulse:Z

    .line 52
    return-void
.end method

.method private static getPulseFactor(J)F
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const v2, 0x3f4ccccd    # 0.8f

    .line 240
    const-wide/16 v0, 0x3e8

    rem-long v0, p0, v0

    long-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v1

    .line 244
    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 245
    div-float/2addr v0, v3

    .line 247
    :goto_0
    return v0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    sub-float v0, v1, v0

    goto :goto_0
.end method

.method public static preparePass(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;J)V
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/Texture;->getDataWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/Texture;->getDataHeight()I

    move-result v1

    div-int/2addr v0, v1

    .line 164
    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/Texture;->getMaxTexX()F

    move-result v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 165
    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/Texture;->getMaxTexY()F

    move-result v1

    .line 167
    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 168
    const-string v2, "MVP"

    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getMVPMatrix()[F

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/maps/opengl/Program;->setUniformMatrix(Ljava/lang/String;[F)V

    .line 169
    const-string v2, "markerTexCoordSize"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FF)V

    .line 170
    const-string v0, "pulseFactor"

    invoke-static {p3, p4}, Lcom/google/glass/maps/map/MiniMapMarker;->getPulseFactor(J)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 171
    const-string v0, "markerTexture"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;I)V

    .line 172
    const-string v0, "displacement"

    sget-object v1, Lcom/google/glass/maps/map/RenderUtil;->CENTERED_SQUARE_DISPLACEMENT:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 173
    invoke-virtual {p2}, Lcom/google/glass/maps/opengl/Texture;->bind()V

    .line 174
    return-void
.end method


# virtual methods
.method public animateLocation(JLcom/google/android/maps/driveabout/model/ab;J)V
    .locals 7

    .prologue
    .line 108
    new-instance v0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v1, :cond_0

    move-object v1, p3

    :goto_0
    move-object v2, p3

    move-wide v3, p1

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;JJ)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    .line 110
    iput-object p3, p0, Lcom/google/glass/maps/map/MiniMapMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    .line 111
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    goto :goto_0
.end method

.method public compareTo(Lcom/google/glass/maps/map/MiniMapMarker;)I
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->layer:I

    iget v1, p1, Lcom/google/glass/maps/map/MiniMapMarker;->layer:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/google/glass/maps/map/MiniMapMarker;

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/map/MiniMapMarker;->compareTo(Lcom/google/glass/maps/map/MiniMapMarker;)I

    move-result v0

    return v0
.end method

.method public draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;J)V
    .locals 7

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    invoke-virtual {v0, p4, p5}, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->getPosition(J)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    .line 186
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->interpolator:Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScaleFactor()F

    move-result v6

    .line 192
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->base:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {p1, v0}, Lcom/google/glass/maps/map/Camera;->getCenter(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 193
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->base:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v2, v0, v6

    .line 194
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->base:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v3, v0, v6

    .line 195
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->base:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v4, v0, v6

    .line 196
    const-string v1, "location"

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FFFF)V

    .line 197
    const-string v0, "markerType"

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->index:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 198
    const-string v1, "isPulse"

    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->pulse:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v1, v0}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 199
    const-string v1, "layOnGround"

    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->layOnGround:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2, v1, v0}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;I)V

    .line 203
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->layOnGround:Z

    if-eqz v0, :cond_5

    .line 206
    invoke-virtual {p3}, Lcom/google/glass/maps/opengl/Texture;->getDataHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getPixelSize()F

    move-result v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v6

    move v1, v0

    .line 212
    :goto_2
    const-string v2, "markerSize"

    invoke-virtual {p2, v2, v1, v0}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FF)V

    .line 214
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 215
    const-string v0, "markerScale"

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->scale:F

    iget v2, p0, Lcom/google/glass/maps/map/MiniMapMarker;->scale:F

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FF)V

    .line 229
    :cond_1
    :goto_3
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 230
    :cond_2
    return-void

    .line 198
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 209
    :cond_5
    invoke-virtual {p3}, Lcom/google/glass/maps/opengl/Texture;->getDataHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 210
    invoke-virtual {p3}, Lcom/google/glass/maps/opengl/Texture;->getDataHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_2

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animation:Lcom/google/glass/maps/map/Animations$MarkerAnimation;

    if-eqz v0, :cond_2

    .line 217
    const-string v0, "markerScale"

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->scale:F

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animation:Lcom/google/glass/maps/map/Animations$MarkerAnimation;

    invoke-virtual {v2, p4, p5}, Lcom/google/glass/maps/map/Animations$MarkerAnimation;->getScale(J)F

    move-result v2

    iget v3, p0, Lcom/google/glass/maps/map/MiniMapMarker;->scale:F

    mul-float/2addr v2, v3

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FF)V

    .line 218
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animation:Lcom/google/glass/maps/map/Animations$MarkerAnimation;

    invoke-virtual {v0, p4, p5}, Lcom/google/glass/maps/map/Animations$MarkerAnimation;->isDone(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animation:Lcom/google/glass/maps/map/Animations$MarkerAnimation;

    .line 220
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animationState:I

    if-nez v0, :cond_7

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animationState:I

    goto :goto_3

    .line 223
    :cond_7
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animationState:I

    goto :goto_3
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->layer:I

    return v0
.end method

.method public getLocation()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animationState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPulse()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->pulse:Z

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->index:I

    .line 116
    return-void
.end method

.method public setLayOnGround(Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->layOnGround:Z

    .line 93
    return-void
.end method

.method public setLayer(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->layer:I

    .line 132
    return-void
.end method

.method public setLocation(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->location:Lcom/google/android/maps/driveabout/model/ab;

    .line 84
    return-void
.end method

.method public setPulse(Z)V
    .locals 0

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->pulse:Z

    .line 142
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/google/glass/maps/map/MiniMapMarker;->scale:F

    .line 98
    return-void
.end method

.method public startHideAnimation(J)V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animationState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animationState:I

    .line 67
    new-instance v0, Lcom/google/glass/maps/map/Animations$FallDown;

    invoke-direct {v0, p1, p2}, Lcom/google/glass/maps/map/Animations$FallDown;-><init>(J)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animation:Lcom/google/glass/maps/map/Animations$MarkerAnimation;

    .line 69
    :cond_1
    return-void
.end method

.method public startShowAnimation(J)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animationState:I

    .line 57
    new-instance v0, Lcom/google/glass/maps/map/Animations$PopUp;

    invoke-direct {v0, p1, p2}, Lcom/google/glass/maps/map/Animations$PopUp;-><init>(J)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapMarker;->animation:Lcom/google/glass/maps/map/Animations$MarkerAnimation;

    .line 58
    return-void
.end method
