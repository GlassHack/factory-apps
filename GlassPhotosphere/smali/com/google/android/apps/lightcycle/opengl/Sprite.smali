.class public Lcom/google/android/apps/lightcycle/opengl/Sprite;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "Sprite.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LightCycle"


# instance fields
.field private mDepth:F

.field private mHalfX:F

.field private mHalfY:F

.field private mImageDim:Landroid/graphics/Point;

.field private mInitialized:Z

.field private mNumIndices:I

.field private mNumVertices:I

.field private mObjectTransform:[F

.field private mTransform:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 26
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    .line 28
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    .line 30
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    .line 31
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mObjectTransform:[F

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    return-void
.end method

.method protected static computeScale(Landroid/content/Context;IFI)F
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # I
    .param p2, "pctWidth"    # F
    .param p3, "surfaceWidth"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 453
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 454
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 458
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    int-to-float v5, p3

    mul-float/2addr v5, p2

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 460
    .local v2, "scale":F
    const v3, 0x3dcccccd    # 0.1f

    .line 461
    .local v3, "tolerance":F
    sub-float v5, v4, v3

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    add-float v5, v4, v3

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    move v2, v4

    .end local v2    # "scale":F
    :cond_0
    return v2
.end method

.method protected static computeScale(Landroid/graphics/Bitmap;FI)F
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pctWidth"    # F
    .param p2, "surfaceWidth"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 467
    int-to-float v3, p2

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 470
    .local v0, "scale":F
    const v1, 0x3dcccccd    # 0.1f

    .line 471
    .local v1, "tolerance":F
    sub-float v3, v2, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    add-float v3, v2, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    move v0, v2

    .end local v0    # "scale":F
    :cond_0
    return v0
.end method

.method public static create2dScaled(Landroid/content/Context;IFII)Lcom/google/android/apps/lightcycle/opengl/Sprite;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # I
    .param p2, "pctWidth"    # F
    .param p3, "surfaceWidth"    # I
    .param p4, "depth"    # I

    .prologue
    .line 489
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->computeScale(Landroid/content/Context;IFI)F

    move-result v0

    .line 490
    .local v0, "scale":F
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/Sprite;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/opengl/Sprite;-><init>()V

    .line 491
    .local v1, "sprite":Lcom/google/android/apps/lightcycle/opengl/Sprite;
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, p0, p1, v2, v0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->init2D(Landroid/content/Context;IFF)Z

    .line 492
    return-object v1
.end method

.method private createRenderData()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/high16 v5, 0x40000000    # 2.0f

    .line 58
    iput v6, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumIndices:I

    .line 59
    const/4 v3, 0x4

    iput v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumVertices:I

    .line 62
    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumVertices:I

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    .line 64
    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumVertices:I

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    .line 66
    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumIndices:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    .line 69
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 70
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 71
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 73
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    .line 74
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    .line 77
    const/16 v3, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 79
    .local v2, "texCoordData":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    aget v4, v2, v0

    invoke-virtual {v3, v0, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    new-array v1, v6, [S

    fill-array-data v1, :array_1

    .line 85
    .local v1, "indices":[S
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    aget-short v4, v1, v0

    invoke-virtual {v3, v0, v4}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mObjectTransform:[F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 91
    return-void

    .line 77
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 84
    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method private initFromBitmap(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 124
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>()V

    .line 125
    .local v1, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v2, v3, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 126
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->loadBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->createRenderData()V

    .line 136
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    move v2, v3

    .line 131
    goto :goto_0
.end method

.method private initFromDrawable(Landroid/content/Context;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # I

    .prologue
    const/4 v4, 0x0

    .line 95
    new-instance v3, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-direct {v3}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>()V

    .line 96
    .local v3, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    iget-object v5, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v5, v4, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 99
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 100
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "bitmap1":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 119
    :goto_0
    return v4

    .line 107
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 110
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->loadBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->createRenderData()V

    .line 119
    const/4 v4, 0x1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public draw([FFF)V
    .locals 7
    .param p1, "transform"    # [F
    .param p2, "u"    # F
    .param p3, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    if-nez v0, :cond_0

    .line 291
    const-string v0, "LightCycle"

    const-string v2, "Sprite not initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 299
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    add-float v4, p2, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    add-float v5, p3, v2

    const/4 v6, 0x0

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 306
    const-string v0, "Error : no textures defined for Sprite"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 313
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public drawNoBinding([F)V
    .locals 6
    .param p1, "globalTransform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    if-nez v0, :cond_0

    .line 427
    const-string v0, "LightCycle"

    const-string v1, "Sprite not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 433
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 434
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 435
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 436
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mObjectTransform:[F

    move-object v2, p1

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 437
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 439
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 440
    const-string v0, "Error : no textures defined for Sprite2d"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 447
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public drawObject([F)V
    .locals 0
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 276
    return-void
.end method

.method public drawRotated([FFFFF)V
    .locals 9
    .param p1, "transform"    # [F
    .param p2, "u"    # F
    .param p3, "v"    # F
    .param p4, "rotationAngleDegrees"    # F
    .param p5, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 332
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    if-nez v0, :cond_0

    .line 333
    const-string v0, "LightCycle"

    const-string v1, "Sprite not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    if-nez v0, :cond_1

    .line 339
    const-string v0, "The shader does not exist."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 345
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    move-object v2, p1

    move v3, v1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 350
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    move v4, v1

    move v5, p4

    move v7, v6

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 351
    cmpl-float v0, p5, v8

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    invoke-static {v0, v1, p5, p5, p5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 356
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 357
    const-string v0, "Error : no textures defined for Sprite"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 364
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public drawRotatedCentered([FFFF)V
    .locals 7
    .param p1, "transform"    # [F
    .param p2, "u"    # F
    .param p3, "v"    # F
    .param p4, "rotationAngleDegrees"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 384
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    if-nez v0, :cond_0

    .line 385
    const-string v0, "LightCycle"

    const-string v1, "Sprite not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    if-nez v0, :cond_1

    .line 391
    const-string v0, "The shader does not exist."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 398
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 399
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    add-float v4, p2, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    add-float v5, p3, v2

    move-object v2, p1

    move v3, v1

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    const/high16 v5, 0x3f800000    # 1.0f

    move v2, p4

    move v3, v6

    move v4, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTransform:[F

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 406
    const-string v0, "Error : no textures defined for Sprite"

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 413
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mNumIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public init2D(IIF)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "depth"    # F

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    .line 214
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 215
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->createRenderData()V

    .line 218
    int-to-float v2, p1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    .line 219
    int-to-float v2, p2

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    .line 220
    iput p3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    .line 221
    const/16 v2, 0xc

    new-array v1, v2, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v3, v3

    aput v3, v1, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v2, v1, v4

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    .line 224
    .local v1, "vertexData":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    aget v3, v1, v0

    invoke-virtual {v2, v0, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    .line 228
    return-void
.end method

.method public init2D(Landroid/content/Context;IFF)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # I
    .param p3, "depth"    # F
    .param p4, "scale"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->initFromDrawable(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 175
    :goto_0
    return v2

    .line 165
    :cond_0
    iput p3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    .line 166
    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    mul-float/2addr v4, p4

    iput v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    .line 167
    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    mul-float/2addr v4, p4

    iput v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    .line 168
    const/16 v4, 0xc

    new-array v1, v4, [F

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v4, v4

    aput v4, v1, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v2, v1, v3

    const/4 v2, 0x2

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v4, v1, v2

    const/4 v2, 0x3

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v4, v1, v2

    const/4 v2, 0x4

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v4, v1, v2

    const/4 v2, 0x5

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v4, v1, v2

    const/4 v2, 0x6

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v4, v1, v2

    const/4 v2, 0x7

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v4, v4

    aput v4, v1, v2

    const/16 v2, 0x8

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v4, v1, v2

    const/16 v2, 0x9

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v4, v4

    aput v4, v1, v2

    const/16 v2, 0xa

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v4, v4

    aput v4, v1, v2

    const/16 v2, 0xb

    iget v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v4, v1, v2

    .line 171
    .local v1, "vertexData":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 172
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    aget v4, v1, v0

    invoke-virtual {v2, v0, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    move v2, v3

    .line 175
    goto :goto_0
.end method

.method public init2D(Landroid/graphics/Bitmap;FF)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "depth"    # F
    .param p3, "scale"    # F

    .prologue
    const/4 v4, 0x1

    .line 190
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->initFromBitmap(Landroid/graphics/Bitmap;)Z

    .line 191
    iput p2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    .line 192
    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    mul-float/2addr v2, p3

    iput v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    .line 193
    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    mul-float/2addr v2, p3

    iput v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    .line 194
    const/16 v2, 0xc

    new-array v1, v2, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v3, v3

    aput v3, v1, v2

    iget v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v2, v1, v4

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    const/16 v2, 0x9

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfX:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xa

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mHalfY:F

    neg-float v3, v3

    aput v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v3, v1, v2

    .line 197
    .local v1, "vertexData":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    aget v3, v1, v0

    invoke-virtual {v2, v0, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iput-boolean v4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    .line 201
    return v4
.end method

.method public init3D(Landroid/content/Context;IFF)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # I
    .param p3, "largestDimension"    # F
    .param p4, "depth"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v7, 0x1

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/opengl/Sprite;->initFromDrawable(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 267
    :goto_0
    return v6

    .line 249
    :cond_0
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_1

    .line 250
    move v3, p3

    .line 251
    .local v3, "xdim":F
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, p3

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 257
    .local v5, "ydim":F
    :goto_1
    iput p4, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    .line 258
    div-float v2, v3, v10

    .line 259
    .local v2, "x2":F
    div-float v4, v5, v10

    .line 260
    .local v4, "y2":F
    const/16 v8, 0xc

    new-array v1, v8, [F

    neg-float v8, v2

    aput v8, v1, v6

    aput v4, v1, v7

    const/4 v6, 0x2

    iget v8, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v8, v1, v6

    const/4 v6, 0x3

    aput v2, v1, v6

    const/4 v6, 0x4

    aput v4, v1, v6

    const/4 v6, 0x5

    iget v8, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v8, v1, v6

    const/4 v6, 0x6

    aput v2, v1, v6

    const/4 v6, 0x7

    neg-float v8, v4

    aput v8, v1, v6

    const/16 v6, 0x8

    iget v8, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v8, v1, v6

    const/16 v6, 0x9

    neg-float v8, v2

    aput v8, v1, v6

    const/16 v6, 0xa

    neg-float v8, v4

    aput v8, v1, v6

    const/16 v6, 0xb

    iget v8, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mDepth:F

    aput v8, v1, v6

    .line 263
    .local v1, "vertexData":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v6, v1

    if-ge v0, v6, :cond_2

    .line 264
    iget-object v6, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mVertices:Ljava/nio/FloatBuffer;

    aget v8, v1, v0

    invoke-virtual {v6, v0, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 253
    .end local v0    # "i":I
    .end local v1    # "vertexData":[F
    .end local v2    # "x2":F
    .end local v3    # "xdim":F
    .end local v4    # "y2":F
    .end local v5    # "ydim":F
    :cond_1
    move v5, p3

    .line 254
    .restart local v5    # "ydim":F
    iget-object v8, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, p3

    iget-object v9, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mImageDim:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .restart local v3    # "xdim":F
    goto :goto_1

    .line 266
    .restart local v0    # "i":I
    .restart local v1    # "vertexData":[F
    .restart local v2    # "x2":F
    .restart local v4    # "y2":F
    :cond_2
    iput-boolean v7, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mInitialized:Z

    move v6, v7

    .line 267
    goto :goto_0
.end method

.method public setTexture(Lcom/google/android/apps/lightcycle/opengl/GLTexture;)V
    .locals 2
    .param p1, "texture"    # Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTransform([F)V
    .locals 0
    .param p1, "transform"    # [F

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/opengl/Sprite;->mObjectTransform:[F

    .line 146
    return-void
.end method
