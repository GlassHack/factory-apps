.class public Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "PhotoCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$1;,
        Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
    }
.end annotation


# static fields
.field private static final BLEND_ANIMATION_FACTOR:F = 0.05f

.field private static final MAX_FRAME_COUNT:I = 0x1f4

.field private static final SLERP_ANIMATION_FACTOR:D = 0.05


# instance fields
.field private intrinsicsToCamera:[F

.field private mFrames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mvp:[F

.field private panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

.field private slerpAlpha:D

.field private tempQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

.field private tempRotation:[F

.field private tempTransform:[F

.field private textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;)V
    .locals 7
    .param p1, "panoramaFrameOverlay"    # Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x10

    .line 75
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 35
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempTransform:[F

    .line 36
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempRotation:[F

    .line 37
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->intrinsicsToCamera:[F

    .line 38
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    .line 39
    new-instance v0, Lcom/google/android/apps/lightcycle/math/Quaternion;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    .line 43
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    .line 76
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    .line 78
    :try_start_0
    new-instance v0, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    .line 79
    const-string v0, "photo collection"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->logError(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->intrinsicsToCamera:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->intrinsicsToCamera:[F

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 88
    return-void

    .line 80
    :catch_0
    move-exception v6

    .line 81
    .local v6, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v6}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method private static setRotation([F[F)V
    .locals 6
    .param p0, "rotationsArray"    # [F
    .param p1, "transform"    # [F

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 179
    aget v0, p0, v1

    aput v0, p1, v1

    .line 180
    aget v0, p0, v2

    aput v0, p1, v2

    .line 181
    aget v0, p0, v3

    aput v0, p1, v3

    .line 182
    aput v4, p1, v5

    .line 183
    const/4 v0, 0x4

    aget v1, p0, v5

    aput v1, p1, v0

    .line 184
    const/4 v0, 0x5

    const/4 v1, 0x4

    aget v1, p0, v1

    aput v1, p1, v0

    .line 185
    const/4 v0, 0x6

    const/4 v1, 0x5

    aget v1, p0, v1

    aput v1, p1, v0

    .line 186
    const/4 v0, 0x7

    aput v4, p1, v0

    .line 187
    const/16 v0, 0x8

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, p1, v0

    .line 188
    const/16 v0, 0x9

    const/4 v1, 0x7

    aget v1, p0, v1

    aput v1, p1, v0

    .line 189
    const/16 v0, 0xa

    const/16 v1, 0x8

    aget v1, p0, v1

    aput v1, p1, v0

    .line 190
    const/16 v0, 0xb

    const/16 v1, 0xc

    const/16 v2, 0xd

    const/16 v3, 0xe

    aput v4, p1, v3

    aput v4, p1, v2

    aput v4, p1, v1

    aput v4, p1, v0

    .line 191
    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v0

    .line 192
    return-void
.end method


# virtual methods
.method public addNewPhoto([F)I
    .locals 3
    .param p1, "cameraToWorld"    # [F

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;-><init>(Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$1;)V

    .line 99
    .local v0, "frame":Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToWorld:[F

    .line 102
    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToWorld:[F

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToGL:[F

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->computeWorldToGL([F[F)V

    .line 105
    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    .line 109
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    sget-object v2, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->Standard:Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>(Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;)V

    iput-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .line 112
    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CreateFrameTexture(I)V

    .line 114
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    sget-object v2, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->Standard:Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    invoke-direct {v1, v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>(Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;)V

    iput-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v1

    return v1
.end method

.method public computeWorldToGL([F[F)V
    .locals 6
    .param p1, "cameraToWorld"    # [F
    .param p2, "cameraToGL"    # [F

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempRotation:[F

    invoke-static {p1, v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->setRotation([F[F)V

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempTransform:[F

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->intrinsicsToCamera:[F

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempRotation:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempTransform:[F

    invoke-static {p2, v1, v0, v1}, Landroid/opengl/Matrix;->transposeM([FI[FI)V

    .line 248
    return-void
.end method

.method public drawObject([F)V
    .locals 21
    .param p1, "baseTransform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->getShader()Lcom/google/android/apps/lightcycle/opengl/Shader;

    move-result-object v15

    .line 263
    .local v15, "savedShader":Lcom/google/android/apps/lightcycle/opengl/Shader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->getDrawOutlineOnly()Z

    move-result v14

    .line 264
    .local v14, "savedOutlineOnly":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->getTextureId()I

    move-result v16

    .line 267
    .local v16, "savedTextureId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 270
    const/4 v9, 0x0

    .line 271
    .local v9, "finishSlerp":Z
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 272
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    move-wide/from16 v19, v0

    sub-double v4, v4, v19

    const-wide v19, 0x3fa999999999999aL    # 0.05

    mul-double v4, v4, v19

    add-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    .line 273
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 274
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    .line 275
    const/4 v9, 0x1

    .line 280
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 281
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v11, v2, :cond_a

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v2, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    .line 285
    .local v10, "frame":Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
    iget-boolean v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->visible:Z

    if-nez v2, :cond_2

    .line 281
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 289
    :cond_2
    iget v13, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    .line 290
    .local v13, "previewFadeInAlpha":F
    iget v8, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->count:I

    .line 294
    .local v8, "count":I
    iget-object v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-eqz v9, :cond_3

    iget-boolean v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailLoaded:Z

    if-eqz v2, :cond_3

    .line 296
    iget-object v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->recycle()V

    .line 300
    :cond_3
    iget-object v6, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToGL:[F

    .line 301
    .local v6, "cameraToGL":[F
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4

    .line 302
    iget-object v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->startQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    iget-object v3, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->endQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    invoke-static {v2, v3, v4, v5, v7}, Lcom/google/android/apps/lightcycle/math/Quaternion;->slerp(Lcom/google/android/apps/lightcycle/math/Quaternion;Lcom/google/android/apps/lightcycle/math/Quaternion;DLcom/google/android/apps/lightcycle/math/Quaternion;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempRotation:[F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/math/Quaternion;->toRotationMatrix([F)V

    .line 305
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->tempRotation:[F

    .line 307
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->bind()V

    .line 313
    iget-object v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v12

    .line 314
    .local v12, "prevewTextureId":I
    iget-object v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailTexture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v18

    .line 317
    .local v18, "thumbnailTextureId":I
    const/4 v2, -0x1

    if-eq v12, v2, :cond_7

    iget-boolean v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailLoaded:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_7

    .line 319
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v12}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v2, v13}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    .line 341
    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v13, v2

    if-gez v2, :cond_6

    .line 342
    const v2, 0x3f7d70a4    # 0.99f

    cmpl-float v2, v13, v2

    if-lez v2, :cond_9

    .line 343
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    .line 350
    :cond_6
    :goto_3
    const/16 v2, 0x1f4

    if-ge v8, v2, :cond_1

    .line 351
    iget v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->count:I

    goto/16 :goto_1

    .line 354
    .end local v6    # "cameraToGL":[F
    .end local v8    # "count":I
    .end local v10    # "frame":Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
    .end local v12    # "prevewTextureId":I
    .end local v13    # "previewFadeInAlpha":F
    .end local v18    # "thumbnailTextureId":I
    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 322
    .restart local v6    # "cameraToGL":[F
    .restart local v8    # "count":I
    .restart local v10    # "frame":Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
    .restart local v12    # "prevewTextureId":I
    .restart local v13    # "previewFadeInAlpha":F
    .restart local v18    # "thumbnailTextureId":I
    :cond_7
    const/4 v2, -0x1

    if-ne v12, v2, :cond_8

    .line 324
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    goto :goto_2

    .line 329
    :cond_8
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    double-to-float v0, v2

    move/from16 v17, v0

    .line 330
    .local v17, "slerpAlpha":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v12}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v17

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->bind()V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setTextureId(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->textureShader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mvp:[F

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    goto/16 :goto_2

    .line 345
    .end local v17    # "slerpAlpha":F
    :cond_9
    iget v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v13

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v10, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->previewFadeInAlpha:F

    goto/16 :goto_3

    .line 354
    .end local v6    # "cameraToGL":[F
    .end local v8    # "count":I
    .end local v10    # "frame":Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
    .end local v12    # "prevewTextureId":I
    .end local v13    # "previewFadeInAlpha":F
    .end local v18    # "thumbnailTextureId":I
    :cond_a
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v14}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->panoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v2, v15}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 359
    return-void
.end method

.method public getCameraToWorld(I)[F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToWorld:[F

    return-object v0
.end method

.method public getDisplayTransform(I)[F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToGL:[F

    return-object v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public setPhotoVisibility(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "visibility"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    iput-boolean p2, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->visible:Z

    .line 132
    :cond_0
    return-void
.end method

.method public showAllFrames()V
    .locals 3

    .prologue
    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->count:I

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    return-void
.end method

.method public thumbnailLoaded(I)V
    .locals 2
    .param p1, "imageIndex"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->thumbnailLoaded:Z

    .line 230
    return-void
.end method

.method public undoAddPhoto()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 142
    :cond_0
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateTransforms([F)V
    .locals 10
    .param p1, "rotationsArray"    # [F

    .prologue
    .line 202
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    monitor-enter v7

    .line 203
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PhotoCollection::updateTransforms length = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, p1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 206
    const/16 v4, 0x9

    .line 207
    .local v4, "kRotationLength":I
    array-length v6, p1

    div-int/lit8 v5, v6, 0x9

    .line 208
    .local v5, "numTransforms":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 209
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->mFrames:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;

    .line 210
    .local v1, "frame":Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
    mul-int/lit8 v0, v2, 0x9

    .line 211
    .local v0, "arrayOffset":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v6, 0x9

    if-ge v3, v6, :cond_0

    .line 212
    iget-object v6, v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToWorld:[F

    add-int v8, v0, v3

    aget v8, p1, v8

    aput v8, v6, v3

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    :cond_0
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->slerpAlpha:D

    .line 219
    iget-object v6, v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->startQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    iget-object v8, v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToGL:[F

    invoke-virtual {v6, v8}, Lcom/google/android/apps/lightcycle/math/Quaternion;->fromRotationMatrix([F)V

    .line 220
    iget-object v6, v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToWorld:[F

    iget-object v8, v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToGL:[F

    invoke-virtual {p0, v6, v8}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection;->computeWorldToGL([F[F)V

    .line 221
    iget-object v6, v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->endQuaternion:Lcom/google/android/apps/lightcycle/math/Quaternion;

    iget-object v8, v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;->cameraToGL:[F

    invoke-virtual {v6, v8}, Lcom/google/android/apps/lightcycle/math/Quaternion;->fromRotationMatrix([F)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "arrayOffset":I
    .end local v1    # "frame":Lcom/google/android/apps/lightcycle/panorama/PhotoCollection$PhotoFrame;
    .end local v3    # "j":I
    :cond_1
    monitor-exit v7

    .line 225
    return-void

    .line 224
    .end local v2    # "i":I
    .end local v4    # "kRotationLength":I
    .end local v5    # "numTransforms":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
