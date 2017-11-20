.class public Lcom/google/glass/maps/map/MiniMapScreenLabel;
.super Lcom/google/glass/maps/map/MiniMapLabel;
.source "SourceFile"


# static fields
.field private static final LARGE_ICON_SCALE_FACTOR:F = 0.25f


# instance fields
.field private alternateCenter:Lcom/google/android/maps/driveabout/model/ab;

.field private animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

.field private bound:Lcom/google/android/maps/driveabout/model/l;

.field private center:Lcom/google/android/maps/driveabout/model/ab;

.field private initialized:Z

.field final texHeight:I

.field final texWidth:I

.field private final textureProvider:Lcom/google/glass/maps/map/TextureProvider;

.field private final tmpBuffer:[F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/j;Ljava/lang/String;ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;ZFLcom/google/glass/maps/map/TextureProvider;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3e800000    # 0.25f

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/maps/map/MiniMapLabel;-><init>(Lcom/google/android/maps/driveabout/model/j;Ljava/lang/String;I)V

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->tmpBuffer:[F

    .line 112
    iput-object p4, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->center:Lcom/google/android/maps/driveabout/model/ab;

    .line 113
    iput-object p5, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->alternateCenter:Lcom/google/android/maps/driveabout/model/ab;

    .line 114
    iput-object p8, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->textureProvider:Lcom/google/glass/maps/map/TextureProvider;

    .line 116
    invoke-virtual {p8}, Lcom/google/glass/maps/map/TextureProvider;->getDataWidth()I

    move-result v1

    .line 117
    invoke-virtual {p8}, Lcom/google/glass/maps/map/TextureProvider;->getDataHeight()I

    move-result v0

    .line 118
    if-eqz p6, :cond_1

    .line 119
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/util/l;->x()I

    move-result v2

    .line 120
    :goto_0
    if-le v0, v2, :cond_0

    .line 121
    int-to-float v1, v1

    mul-float v2, v3, p7

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 122
    int-to-float v0, v0

    mul-float v2, v3, p7

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 124
    :cond_0
    iput v1, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->texWidth:I

    .line 125
    iput v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->texHeight:I

    .line 126
    return-void

    .line 119
    :cond_1
    const v2, 0x7fffffff

    goto :goto_0
.end method

.method public static forPoi(Lcom/google/android/maps/driveabout/model/ac;Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/map/MiniMapTheme;Lcom/google/glass/maps/map/TextGenerator;Lcom/google/glass/maps/opengl/TextureAllocator;)Lcom/google/glass/maps/map/MiniMapScreenLabel;
    .locals 9

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 55
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ac;->e()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ac;->b()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aq;->e()Lcom/google/android/maps/driveabout/model/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/au;->b()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 57
    iget-object v3, p2, Lcom/google/glass/maps/map/MiniMapTheme;->poiLabels:Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

    .line 58
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScreenDensity()F

    move-result v6

    move-object v0, p4

    move-object v1, p3

    .line 57
    invoke-static/range {v0 .. v6}, Lcom/google/glass/maps/map/TextTextureProvider;->create(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/glass/maps/map/TextGenerator;Ljava/lang/String;Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;FFF)Lcom/google/glass/maps/map/TextTextureProvider;

    move-result-object v8

    .line 59
    new-instance v0, Lcom/google/glass/maps/map/MiniMapScreenLabel;

    const-string v1, "P|"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ac;->d()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ac;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScreenDensity()F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/maps/map/MiniMapScreenLabel;-><init>(Lcom/google/android/maps/driveabout/model/j;Ljava/lang/String;ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;ZFLcom/google/glass/maps/map/TextureProvider;)V

    return-object v0

    .line 59
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static forShield(Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/android/maps/driveabout/model/ao;Ljava/lang/String;Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/map/MiniMapTheme;Landroid/graphics/Bitmap;)Lcom/google/glass/maps/map/MiniMapScreenLabel;
    .locals 9

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ao;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(F)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 97
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ao;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(F)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    .line 98
    new-instance v8, Lcom/google/glass/maps/map/IconTextureProvider;

    invoke-direct {v8, p0, p5}, Lcom/google/glass/maps/map/IconTextureProvider;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;Landroid/graphics/Bitmap;)V

    .line 99
    new-instance v0, Lcom/google/glass/maps/map/MiniMapScreenLabel;

    const-string v1, "I|"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ao;->d()I

    move-result v3

    const/4 v6, 0x1

    .line 100
    invoke-virtual {p3}, Lcom/google/glass/maps/map/Camera;->getScreenDensity()F

    move-result v7

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/maps/map/MiniMapScreenLabel;-><init>(Lcom/google/android/maps/driveabout/model/j;Ljava/lang/String;ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;ZFLcom/google/glass/maps/map/TextureProvider;)V

    return-object v0

    .line 99
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static forTrafficIncident(Lcom/google/android/maps/driveabout/model/ac;Lcom/google/glass/maps/opengl/TextureAllocator;Lcom/google/glass/maps/map/Camera;Landroid/graphics/Bitmap;)Lcom/google/glass/maps/map/MiniMapScreenLabel;
    .locals 9

    .prologue
    .line 73
    new-instance v8, Lcom/google/glass/maps/map/IconTextureProvider;

    invoke-direct {v8, p1, p3}, Lcom/google/glass/maps/map/IconTextureProvider;-><init>(Lcom/google/glass/maps/opengl/TextureAllocator;Landroid/graphics/Bitmap;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ac;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "T|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    new-instance v0, Lcom/google/glass/maps/map/MiniMapScreenLabel;

    .line 78
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ac;->d()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ac;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 79
    invoke-virtual {p2}, Lcom/google/glass/maps/map/Camera;->getScreenDensity()F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/maps/map/MiniMapScreenLabel;-><init>(Lcom/google/android/maps/driveabout/model/j;Ljava/lang/String;ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;ZFLcom/google/glass/maps/map/TextureProvider;)V

    return-object v0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/glass/maps/map/MiniMapScreenLabel;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    invoke-direct {v0}, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    .line 221
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->initialized:Z

    .line 222
    return-void
.end method

.method public static preparePass(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;)V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 172
    const-string v0, "MVP"

    invoke-virtual {p0}, Lcom/google/glass/maps/map/Camera;->getMVPMatrix()[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformMatrix(Ljava/lang/String;[F)V

    .line 173
    const-string v0, "texture"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;I)V

    .line 174
    const-string v0, "displacement"

    sget-object v1, Lcom/google/glass/maps/map/RenderUtil;->CENTERED_SQUARE_DISPLACEMENT:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 175
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->textureProvider:Lcom/google/glass/maps/map/TextureProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/TextureProvider;->destroy()V

    .line 131
    return-void
.end method

.method public draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;J)V
    .locals 8

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 179
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->initialized:Z

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMapScreenLabel;->initialize()V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->textureProvider:Lcom/google/glass/maps/map/TextureProvider;

    invoke-virtual {v0}, Lcom/google/glass/maps/map/TextureProvider;->getTexture()Lcom/google/glass/maps/opengl/Texture;

    move-result-object v7

    .line 184
    if-nez v7, :cond_1

    .line 212
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    invoke-virtual {v0, p3, p4}, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;->getOpacity(J)F

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    invoke-virtual {v1}, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->animation:Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;

    :cond_2
    move v6, v0

    .line 196
    :goto_1
    invoke-static {}, Lcom/google/glass/maps/map/PointPool;->getInstance()Lcom/google/glass/maps/map/PointPool;

    move-result-object v0

    iget-object v0, v0, Lcom/google/glass/maps/map/PointPool;->A0:Lcom/google/android/maps/driveabout/model/ab;

    .line 197
    invoke-virtual {p1, v0}, Lcom/google/glass/maps/map/Camera;->getCenter(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 198
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScaleFactor()F

    move-result v1

    .line 199
    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->center:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 200
    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->center:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    .line 201
    iget-object v4, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->center:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v0

    sub-int v0, v4, v0

    int-to-float v0, v0

    mul-float v4, v0, v1

    .line 203
    const-string v1, "pos"

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FFFF)V

    .line 204
    const-string v0, "size"

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->texWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->texHeight:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FF)V

    .line 205
    const-string v0, "viewSize"

    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    .line 206
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    .line 205
    invoke-virtual {p2, v0, v1, v2}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FF)V

    .line 207
    const-string v0, "maxTex"

    invoke-virtual {v7}, Lcom/google/glass/maps/opengl/Texture;->getMaxTexX()F

    move-result v1

    invoke-virtual {v7}, Lcom/google/glass/maps/opengl/Texture;->getMaxTexY()F

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;FF)V

    .line 208
    const-string v0, "alpha"

    invoke-virtual {p2, v0, v6}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 210
    invoke-virtual {v7}, Lcom/google/glass/maps/opengl/Texture;->bind()V

    .line 211
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0

    :cond_3
    move v6, v5

    goto :goto_1
.end method

.method public getBound()Lcom/google/android/maps/driveabout/model/an;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->bound:Lcom/google/android/maps/driveabout/model/l;

    return-object v0
.end method

.method public tryAlternateCandidate(Lcom/google/glass/maps/map/Camera;)Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->alternateCenter:Lcom/google/android/maps/driveabout/model/ab;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->alternateCenter:Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->center:Lcom/google/android/maps/driveabout/model/ab;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->alternateCenter:Lcom/google/android/maps/driveabout/model/ab;

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/map/MiniMapScreenLabel;->updateCamera(Lcom/google/glass/maps/map/Camera;)Z

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCamera(Lcom/google/glass/maps/map/Camera;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 145
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->center:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/bg;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    :goto_0
    return v0

    .line 150
    :cond_0
    iget v2, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->texWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    .line 151
    iget v3, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->texHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    .line 152
    iget v4, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->texWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    .line 153
    iget v5, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->texHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    .line 156
    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->center:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v7, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->tmpBuffer:[F

    invoke-virtual {p1, v6, v7}, Lcom/google/glass/maps/map/Camera;->getScreenCoordinatesWithBuffer(Lcom/google/android/maps/driveabout/model/ab;[F)V

    .line 157
    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->tmpBuffer:[F

    aget v0, v6, v0

    .line 158
    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->tmpBuffer:[F

    aget v6, v6, v1

    .line 159
    add-float/2addr v2, v0

    add-float/2addr v0, v4

    add-float/2addr v3, v6

    add-float v4, v6, v5

    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/google/glass/maps/map/Camera;->getGroundPlaneQuad(FFFF)Lcom/google/android/maps/driveabout/model/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapScreenLabel;->bound:Lcom/google/android/maps/driveabout/model/l;

    move v0, v1

    .line 161
    goto :goto_0
.end method
