.class public Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "Pano2dPreviewOverlay.java"


# static fields
.field private static final NUM_OUTLINE_VERTICES:I = 0x14

.field private static final OUTLINECOLS:I = 0x5

.field private static final OUTLINEROWS:I = 0x5

.field private static final PREVIEW_ASPECT_RATIO:F = 2.5f

.field private static final PREVIEW_BORDER_PAD_PCT:F = 0.05f

.field private static final RENDER_DEPTH:F = -0.5f


# instance fields
.field private mBackgroundSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mDisplayFlatMode:Z

.field private mHeight:F

.field private mInitialized:Z

.field private mLandscapeCenter:Landroid/graphics/PointF;

.field private mLineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

.field private mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

.field private mOutlineCoords:[F

.field private mOutlineIndices:Ljava/nio/ShortBuffer;

.field private mOutlineVertices:Ljava/nio/FloatBuffer;

.field private mPortraitCenter:Landroid/graphics/PointF;

.field private mPreviewSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

.field private mValidEstimate:Z

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x28

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mInitialized:Z

    .line 45
    iput-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    .line 46
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineCoords:[F

    .line 48
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mValidEstimate:Z

    .line 50
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mDisplayFlatMode:Z

    .line 56
    iput-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 97
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    .line 99
    const/16 v0, 0xf0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineVertices:Ljava/nio/FloatBuffer;

    .line 101
    return-void
.end method

.method private updateCurrentFrameOutlineLandscape()V
    .locals 13

    .prologue
    const/4 v10, 0x5

    const/high16 v12, 0x40000000    # 2.0f

    .line 154
    invoke-static {v10, v10}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetFramePanoOutline(II)[F

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineCoords:[F

    .line 156
    const/4 v6, 0x0

    .line 157
    .local v6, "vertIndex":I
    const/4 v1, 0x0

    .line 158
    .local v1, "coordIndex":I
    const/4 v4, 0x0

    .line 160
    .local v4, "indexIndex":I
    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLandscapeCenter:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mWidth:F

    div-float/2addr v11, v12

    sub-float v5, v10, v11

    .line 161
    .local v5, "left":F
    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLandscapeCenter:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mHeight:F

    div-float/2addr v11, v12

    sub-float v0, v10, v11

    .line 164
    .local v0, "bot":F
    const/4 v3, 0x0

    .local v3, "i":I
    move v2, v1

    .end local v1    # "coordIndex":I
    .local v2, "coordIndex":I
    move v7, v6

    .end local v6    # "vertIndex":I
    .local v7, "vertIndex":I
    :goto_0
    const/16 v10, 0x14

    if-ge v3, v10, :cond_0

    .line 165
    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineCoords:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "coordIndex":I
    .restart local v1    # "coordIndex":I
    aget v10, v10, v2

    iget v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mWidth:F

    mul-float/2addr v10, v11

    add-float v8, v5, v10

    .line 166
    .local v8, "x":F
    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineCoords:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "coordIndex":I
    .restart local v2    # "coordIndex":I
    aget v10, v10, v1

    iget v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mHeight:F

    mul-float/2addr v10, v11

    add-float v9, v0, v10

    .line 167
    .local v9, "y":F
    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "vertIndex":I
    .restart local v6    # "vertIndex":I
    invoke-virtual {v10, v7, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 168
    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "vertIndex":I
    .restart local v7    # "vertIndex":I
    invoke-virtual {v10, v6, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 169
    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "vertIndex":I
    .restart local v6    # "vertIndex":I
    const/high16 v11, -0x41000000    # -0.5f

    invoke-virtual {v10, v7, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 170
    iget-object v10, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    int-to-short v11, v3

    invoke-virtual {v10, v3, v11}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 164
    add-int/lit8 v3, v3, 0x1

    move v7, v6

    .end local v6    # "vertIndex":I
    .restart local v7    # "vertIndex":I
    goto :goto_0

    .line 173
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_0
    return-void
.end method

.method private updateCurrentFrameOutlinePortrait()V
    .locals 14

    .prologue
    const/4 v11, 0x5

    const/high16 v13, 0x40000000    # 2.0f

    .line 131
    invoke-static {v11, v11}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetFramePanoOutline(II)[F

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineCoords:[F

    .line 133
    const/4 v7, 0x0

    .line 134
    .local v7, "vertIndex":I
    const/4 v1, 0x0

    .line 135
    .local v1, "coordIndex":I
    const/4 v4, 0x0

    .line 137
    .local v4, "indexIndex":I
    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPortraitCenter:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget v12, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mHeight:F

    div-float/2addr v12, v13

    sub-float v5, v11, v12

    .line 138
    .local v5, "left":F
    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPortraitCenter:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget v12, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mHeight:F

    div-float/2addr v12, v13

    add-float v6, v11, v12

    .line 139
    .local v6, "right":F
    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPortraitCenter:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    iget v12, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mWidth:F

    div-float/2addr v12, v13

    sub-float v0, v11, v12

    .line 142
    .local v0, "bot":F
    const/4 v3, 0x0

    .local v3, "i":I
    move v2, v1

    .end local v1    # "coordIndex":I
    .local v2, "coordIndex":I
    move v8, v7

    .end local v7    # "vertIndex":I
    .local v8, "vertIndex":I
    :goto_0
    const/16 v11, 0x14

    if-ge v3, v11, :cond_0

    .line 143
    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineCoords:[F

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "coordIndex":I
    .restart local v1    # "coordIndex":I
    aget v11, v11, v2

    iget v12, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mWidth:F

    mul-float/2addr v11, v12

    add-float v10, v0, v11

    .line 144
    .local v10, "y":F
    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineCoords:[F

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "coordIndex":I
    .restart local v2    # "coordIndex":I
    aget v11, v11, v1

    iget v12, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mHeight:F

    mul-float/2addr v11, v12

    sub-float v9, v6, v11

    .line 145
    .local v9, "x":F
    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "vertIndex":I
    .restart local v7    # "vertIndex":I
    invoke-virtual {v11, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 146
    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "vertIndex":I
    .restart local v8    # "vertIndex":I
    invoke-virtual {v11, v7, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 147
    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "vertIndex":I
    .restart local v7    # "vertIndex":I
    const/high16 v12, -0x41000000    # -0.5f

    invoke-virtual {v11, v8, v12}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 148
    iget-object v11, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    int-to-short v12, v3

    invoke-virtual {v11, v3, v12}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 142
    add-int/lit8 v3, v3, 0x1

    move v8, v7

    .end local v7    # "vertIndex":I
    .restart local v8    # "vertIndex":I
    goto :goto_0

    .line 151
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method public drawObject([F)V
    .locals 5
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb71

    const/4 v2, 0x0

    .line 200
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mInitialized:Z

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 205
    const-string v0, "No textures defined!"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mBackgroundSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 211
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mBackgroundSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setTexture(Lcom/google/android/apps/lightcycle/opengl/GLTexture;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mBackgroundSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V

    .line 214
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPreviewSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setTexture(Lcom/google/android/apps/lightcycle/opengl/GLTexture;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPreviewSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPreviewSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->draw([F)V

    .line 219
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mValidEstimate:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->updateCurrentFrameOutline()V

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->bind()V

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;->setTransform([F)V

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 229
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 230
    const/4 v0, 0x2

    const/16 v1, 0x14

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 232
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0
.end method

.method public getFlatDisplayMode()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mDisplayFlatMode:Z

    return v0
.end method

.method public init(Landroid/content/Context;FFFFLcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aspectRatio"    # F
    .param p3, "surfaceWidth"    # F
    .param p4, "surfaceHeight"    # F
    .param p5, "widthPct"    # F
    .param p6, "orientationDetector"    # Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 179
    mul-float v1, p5, p3

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mWidth:F

    .line 180
    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mWidth:F

    const/high16 v2, 0x40200000    # 2.5f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mHeight:F

    .line 181
    iput-object p6, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    .line 183
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-direct {v1, p6}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPreviewSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 184
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPreviewSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mWidth:F

    float-to-int v2, v2

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mHeight:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(IIF)V

    .line 185
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    invoke-direct {v1, p6}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;-><init>(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mBackgroundSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    .line 186
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mBackgroundSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mWidth:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mHeight:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->init2D(IIF)V

    .line 187
    const v1, 0x3d4ccccd    # 0.05f

    mul-float v0, v1, p3

    .line 188
    .local v0, "pad":F
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mWidth:F

    div-float/2addr v2, v4

    add-float/2addr v2, v0

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mHeight:F

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPortraitCenter:Landroid/graphics/PointF;

    .line 189
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mHeight:F

    div-float/2addr v2, v4

    add-float/2addr v2, v0

    iget v3, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mWidth:F

    div-float/2addr v3, v4

    sub-float v3, p4, v3

    sub-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLandscapeCenter:Landroid/graphics/PointF;

    .line 191
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPreviewSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLandscapeCenter:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPortraitCenter:Landroid/graphics/PointF;

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 193
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mBackgroundSprite:Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLandscapeCenter:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mPortraitCenter:Landroid/graphics/PointF;

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/lightcycle/opengl/DeviceOrientedSprite;->setPositions(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mInitialized:Z

    .line 196
    return-void
.end method

.method public initialized()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mInitialized:Z

    return v0
.end method

.method public pointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mDisplayFlatMode:Z

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayFlatMode(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mDisplayFlatMode:Z

    .line 65
    return-void
.end method

.method public setLineShader(Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;)V
    .locals 0
    .param p1, "shader"    # Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mLineShader:Lcom/google/android/apps/lightcycle/opengl/SingleColorShader;

    .line 93
    return-void
.end method

.method public setTextureId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 110
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>()V

    .line 111
    .local v0, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->setIndex(I)V

    .line 113
    return-void
.end method

.method public setValidEstimate(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mValidEstimate:Z

    .line 83
    return-void
.end method

.method public updateCurrentFrameOutline()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->mOrientationDetector:Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;->getOrientation()Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector$DeviceOrientation;->isOrientationChanged90()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->updateCurrentFrameOutlineLandscape()V

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/Pano2dPreviewOverlay;->updateCurrentFrameOutlinePortrait()V

    goto :goto_0
.end method
