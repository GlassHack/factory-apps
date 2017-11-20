.class public Lcom/google/glass/maps/opengl/Texture;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_ID:I

.field private static final REQUIRE_POWER2_TEXTURE:Z


# instance fields
.field private dataHeight:I

.field private dataWidth:I

.field private generateMipMaps:Z

.field private maxTexX:F

.field private maxTexY:F

.field private refCount:I

.field private repeatS:Z

.field private repeatT:Z

.field private target:I

.field private final textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;

.field private textureId:I

.field private useLinearFilter:Z


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/opengl/TextureAllocator;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    .line 48
    iput-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->repeatS:Z

    .line 49
    iput-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->repeatT:Z

    .line 50
    iput-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->generateMipMaps:Z

    .line 51
    iput-boolean v1, p0, Lcom/google/glass/maps/opengl/Texture;->useLinearFilter:Z

    .line 64
    iput-object p1, p0, Lcom/google/glass/maps/opengl/Texture;->textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;

    .line 65
    iput v1, p0, Lcom/google/glass/maps/opengl/Texture;->refCount:I

    .line 66
    return-void
.end method

.method static copyIntoPowerOf2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 326
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 327
    invoke-static {v0}, Lcom/google/glass/maps/opengl/Texture;->getNextPowerOf2(I)I

    move-result v0

    .line 328
    invoke-static {v1}, Lcom/google/glass/maps/opengl/Texture;->getNextPowerOf2(I)I

    move-result v1

    .line 330
    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 332
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 333
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 334
    return-object v0
.end method

.method public static getNextPowerOf2(I)I
    .locals 2

    .prologue
    .line 298
    add-int/lit8 v0, p0, -0x1

    .line 299
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 300
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 301
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 302
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 303
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 304
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static hasPowerOf2Edges(II)Z
    .locals 1

    .prologue
    .line 318
    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPowerOf2Edges(Landroid/graphics/Bitmap;)Z
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/maps/opengl/Texture;->hasPowerOf2Edges(II)Z

    move-result v0

    return v0
.end method

.method public static loadBitmapUnscaled(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 283
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 284
    iput-object p2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 285
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 286
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 287
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addRef()V
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/opengl/Texture;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bind()V
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->target:I

    iget v1, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 78
    :cond_0
    return-void
.end method

.method public getDataHeight()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->dataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->dataWidth:I

    return v0
.end method

.method public getGenerateMipMaps()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->generateMipMaps:Z

    return v0
.end method

.method public getMaxTexX()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->maxTexX:F

    return v0
.end method

.method public getMaxTexY()F
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->maxTexY:F

    return v0
.end method

.method getRefCount()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->refCount:I

    return v0
.end method

.method public getRepeatS()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->repeatS:Z

    return v0
.end method

.method public getRepeatT()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->repeatT:Z

    return v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    return v0
.end method

.method public getUseLinearFilter()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->useLinearFilter:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V
    .locals 3

    .prologue
    .line 85
    invoke-static {p1, p2, p3}, Lcom/google/glass/maps/opengl/Texture;->loadBitmapUnscaled(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/maps/opengl/Texture;->load(Landroid/graphics/Bitmap;II)V

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    return-void
.end method

.method public load(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/maps/opengl/Texture;->load(Landroid/graphics/Bitmap;II)V

    .line 96
    return-void
.end method

.method public load(Landroid/graphics/Bitmap;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    .line 119
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/maps/opengl/Texture;->maxTexX:F

    .line 120
    int-to-float v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/glass/maps/opengl/Texture;->maxTexY:F

    .line 121
    iput p2, p0, Lcom/google/glass/maps/opengl/Texture;->dataWidth:I

    .line 122
    iput p3, p0, Lcom/google/glass/maps/opengl/Texture;->dataHeight:I

    .line 124
    const/16 v0, 0xde1

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/opengl/Texture;->setUpTexture(I)V

    .line 125
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->target:I

    invoke-static {v0, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 127
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->generateMipMaps:Z

    if-eqz v0, :cond_0

    .line 128
    const v0, 0x8192

    const/16 v1, 0x1102

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glHint(II)V

    .line 129
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->target:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public load(Lcom/google/glass/maps/opengl/TextureBitmap;)V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/TextureBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/TextureBitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/TextureBitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/maps/opengl/Texture;->load(Landroid/graphics/Bitmap;II)V

    .line 104
    return-void
.end method

.method public loadEmpty(Landroid/graphics/Bitmap$Config;II)V
    .locals 9

    .prologue
    const/16 v2, 0x1908

    const/16 v7, 0x1401

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 145
    iput v3, p0, Lcom/google/glass/maps/opengl/Texture;->maxTexX:F

    .line 146
    iput v3, p0, Lcom/google/glass/maps/opengl/Texture;->maxTexY:F

    .line 147
    iput p2, p0, Lcom/google/glass/maps/opengl/Texture;->dataWidth:I

    .line 148
    iput p3, p0, Lcom/google/glass/maps/opengl/Texture;->dataHeight:I

    .line 152
    sget-object v3, Lcom/google/glass/maps/opengl/Texture$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 170
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/glass/maps/opengl/Texture;->setUpTexture(I)V

    .line 171
    const/4 v8, 0x0

    move v3, p2

    move v4, p3

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 172
    return-void

    .line 154
    :pswitch_0
    const/16 v2, 0x1906

    .line 156
    goto :goto_0

    .line 158
    :pswitch_1
    const/16 v2, 0x1907

    .line 159
    const v7, 0x8363

    .line 160
    goto :goto_0

    .line 163
    :pswitch_2
    const v7, 0x8033

    .line 164
    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized releaseRef()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 268
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/glass/maps/opengl/Texture;->refCount:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 269
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/maps/opengl/Texture;->refCount:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;

    iget v1, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/TextureAllocator;->deleteTexture(I)V

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_1
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setGenerateMipMaps(Z)V
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/google/glass/maps/opengl/Texture;->generateMipMaps:Z

    .line 212
    return-void
.end method

.method public setRepeatS(Z)V
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/google/glass/maps/opengl/Texture;->repeatS:Z

    .line 200
    return-void
.end method

.method public setRepeatT(Z)V
    .locals 0

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/google/glass/maps/opengl/Texture;->repeatT:Z

    .line 204
    return-void
.end method

.method declared-synchronized setUpTexture(I)V
    .locals 2

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/TextureAllocator;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    .line 347
    :cond_0
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 350
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->repeatS:Z

    if-eqz v0, :cond_1

    .line 351
    const/16 v0, 0x2802

    const v1, 0x46240400    # 10497.0f

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 355
    :goto_0
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->repeatT:Z

    if-eqz v0, :cond_2

    .line 356
    const/16 v0, 0x2803

    const v1, 0x46240400    # 10497.0f

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 361
    :goto_1
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->useLinearFilter:Z

    if-eqz v0, :cond_4

    .line 362
    iget-boolean v0, p0, Lcom/google/glass/maps/opengl/Texture;->generateMipMaps:Z

    if-eqz v0, :cond_3

    .line 363
    const/16 v0, 0x2801

    const v1, 0x461c0c00    # 9987.0f

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 368
    :goto_2
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 373
    :goto_3
    iput p1, p0, Lcom/google/glass/maps/opengl/Texture;->target:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 353
    :cond_1
    const/16 v0, 0x2802

    const v1, 0x47012f00    # 33071.0f

    :try_start_1
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 358
    :cond_2
    const/16 v0, 0x2803

    const v1, 0x47012f00    # 33071.0f

    :try_start_2
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    goto :goto_1

    .line 366
    :cond_3
    const/16 v0, 0x2801

    const v1, 0x46180400    # 9729.0f

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    goto :goto_2

    .line 370
    :cond_4
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 371
    const/16 v0, 0x2800

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public setUseLinearFilter(Z)V
    .locals 0

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/glass/maps/opengl/Texture;->useLinearFilter:Z

    .line 220
    return-void
.end method

.method public unload()V
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureAllocator:Lcom/google/glass/maps/opengl/TextureAllocator;

    iget v1, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/TextureAllocator;->deleteTexture(I)V

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/opengl/Texture;->textureId:I

    .line 183
    :cond_0
    return-void
.end method
