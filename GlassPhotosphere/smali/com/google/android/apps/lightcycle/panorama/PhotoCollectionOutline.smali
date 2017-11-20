.class public Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "PhotoCollectionOutline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$1;,
        Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;
    }
.end annotation


# static fields
.field private static final ANIMATION_FACTOR:F = 0.45f


# instance fields
.field private mFrames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mMVP:[F

.field private mModelView:[F

.field private mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

.field private mPanoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

.field private mTempTransform:[F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;)V
    .locals 6
    .param p1, "panoramaFrameOverlay"    # Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    .prologue
    const/16 v2, 0x10

    .line 46
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 28
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mTempTransform:[F

    .line 29
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mModelView:[F

    .line 30
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mMVP:[F

    .line 43
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    .line 47
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mPanoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    .line 49
    :try_start_0
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor(FFFF)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addNewPhotoFrame([F)V
    .locals 12
    .param p1, "transform"    # [F

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 57
    new-instance v11, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;

    const/4 v0, 0x0

    invoke-direct {v11, p0, v0}, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;-><init>(Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$1;)V

    .line 59
    .local v11, "frame":Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mModelView:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mModelView:[F

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 61
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mTempTransform:[F

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mModelView:[F

    move v6, v1

    move v8, v1

    move-object v9, p1

    move v10, v1

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 63
    iget-object v0, v11, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->transform:[F

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mTempTransform:[F

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/Matrix;->transposeM([FI[FI)V

    .line 64
    iput v4, v11, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->animationAlpha:F

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public drawObject([F)V
    .locals 13
    .param p1, "baseTransform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mPanoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->getOutlineShader()Lcom/google/android/apps/lightcycle/opengl/Shader;

    move-result-object v11

    .line 77
    .local v11, "savedShader":Lcom/google/android/apps/lightcycle/opengl/Shader;
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mPanoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->getDrawOutlineOnly()Z

    move-result v10

    .line 80
    .local v10, "savedOutlineOnly":Z
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mPanoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mPanoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setOutlineShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 84
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;

    iget v7, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->animationAlpha:F

    .line 86
    .local v7, "animationAlpha":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;

    iget v8, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->count:I

    .line 89
    .local v8, "count":I
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, v8

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 90
    .local v6, "alphaBlend":F
    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_0

    .line 91
    const/4 v6, 0x0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setColor(FFFF)V

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v7

    mul-float/2addr v1, v2

    add-float v12, v0, v1

    .line 97
    .local v12, "scale":F
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mMVP:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;

    iget-object v4, v2, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->transform:[F

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mMVP:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v12, v12, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mPanoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mMVP:[F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->draw([F)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->animationAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v7

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->animationAlpha:F

    .line 107
    float-to-double v0, v12

    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const/16 v0, 0x1f4

    if-ge v8, v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;

    iget v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->count:I

    .line 84
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 113
    .end local v6    # "alphaBlend":F
    .end local v7    # "animationAlpha":F
    .end local v8    # "count":I
    .end local v12    # "scale":F
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mPanoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0, v10}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setDrawOutlineOnly(Z)V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mPanoramaFrameOverlay:Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;

    invoke-virtual {v0, v11}, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->setOutlineShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 115
    return-void
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public showAllFrames()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline;->mFrames:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/apps/lightcycle/panorama/PhotoCollectionOutline$PhotoFrame;->count:I

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method
