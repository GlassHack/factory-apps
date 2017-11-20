.class public Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "PanoramaFrameOverlay.java"


# instance fields
.field private mDrawOutlineOnly:Z

.field private mInitialized:Z

.field private mNumIndices:I

.field private mNumOutlineIndices:I

.field private mOutlineIndices:Ljava/nio/ShortBuffer;

.field private mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 30
    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumIndices:I

    .line 31
    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumOutlineIndices:I

    .line 32
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mInitialized:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 35
    iput-boolean v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mDrawOutlineOnly:Z

    return-void
.end method


# virtual methods
.method public createTexture(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 45
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>()V

    .line 46
    .local v0, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 47
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->setIndex(I)V

    .line 48
    return-void
.end method

.method public drawObject([F)V
    .locals 5
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1403

    const/4 v3, 0x0

    .line 164
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mInitialized:Z

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mDrawOutlineOnly:Z

    if-nez v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumIndices:I

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v4, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 193
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumOutlineIndices:I

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v4, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public generateGeometry([FIIF)V
    .locals 18
    .param p1, "vertices"    # [F
    .param p2, "columns"    # I
    .param p3, "rows"    # I
    .param p4, "radius"    # F

    .prologue
    .line 86
    mul-int v8, p2, p3

    .line 87
    .local v8, "numVertices":I
    add-int/lit8 v15, p3, -0x1

    add-int/lit8 v16, p2, -0x1

    mul-int v15, v15, v16

    mul-int/lit8 v15, v15, 0x6

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumIndices:I

    .line 90
    mul-int/lit8 v15, v8, 0x3

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mVertices:Ljava/nio/FloatBuffer;

    .line 92
    mul-int/lit8 v15, v8, 0x2

    mul-int/lit8 v15, v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTexCoords:Ljava/nio/FloatBuffer;

    .line 94
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumIndices:I

    mul-int/lit8 v15, v15, 0x2

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mIndices:Ljava/nio/ShortBuffer;

    .line 96
    mul-int/lit8 v15, p3, 0x2

    mul-int/lit8 v16, p2, 0x2

    add-int v7, v15, v16

    .line 97
    .local v7, "numOutlineIndices":I
    mul-int/lit8 v15, v7, 0x2

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    .line 101
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    mul-int/lit8 v15, v8, 0x3

    if-ge v2, v15, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mVertices:Ljava/nio/FloatBuffer;

    aget v16, p1, v2

    mul-float v16, v16, p4

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    const/4 v12, 0x0

    .line 107
    .local v12, "texIndex":I
    const/4 v9, 0x0

    .local v9, "r":I
    :goto_1
    move/from16 v0, p3

    if-ge v9, v0, :cond_2

    .line 108
    int-to-float v15, v9

    add-int/lit8 v16, p3, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v14, v15, v16

    .line 109
    .local v14, "v":F
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_2
    move/from16 v0, p2

    if-ge v1, v0, :cond_1

    .line 110
    int-to-float v15, v1

    add-int/lit8 v16, p2, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 111
    .local v13, "u":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v15, v12, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTexCoords:Ljava/nio/FloatBuffer;

    add-int/lit8 v16, v12, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 113
    add-int/lit8 v12, v12, 0x2

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 107
    .end local v13    # "u":F
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 118
    .end local v1    # "c":I
    .end local v14    # "v":F
    :cond_2
    const/4 v3, 0x0

    .line 119
    .local v3, "index":I
    move/from16 v11, p2

    .line 120
    .local v11, "rowStride":I
    const/4 v9, 0x0

    :goto_3
    add-int/lit8 v15, p3, -0x1

    if-ge v9, v15, :cond_4

    .line 121
    mul-int v10, v9, v11

    .line 122
    .local v10, "rowIndex":I
    add-int/lit8 v15, v9, 0x1

    mul-int v6, v15, v11

    .line 123
    .local v6, "nextRowIndex":I
    const/4 v1, 0x0

    .restart local v1    # "c":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_4
    add-int/lit8 v15, p2, -0x1

    if-ge v1, v15, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    int-to-short v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v16, v6, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    int-to-short v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    int-to-short v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v16, v10, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v16, v6, 0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 130
    add-int/lit8 v10, v10, 0x1

    .line 131
    add-int/lit8 v6, v6, 0x1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 120
    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_3

    .line 136
    .end local v1    # "c":I
    .end local v6    # "nextRowIndex":I
    .end local v10    # "rowIndex":I
    :cond_4
    const/4 v3, 0x0

    .line 137
    move/from16 v11, p2

    .line 139
    const/4 v1, 0x0

    .restart local v1    # "c":I
    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :goto_5
    move/from16 v0, p2

    if-ge v1, v0, :cond_5

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    int-to-short v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 139
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_5

    .line 143
    :cond_5
    const/4 v9, 0x0

    :goto_6
    move/from16 v0, p3

    if-ge v9, v0, :cond_6

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v16, p2, -0x1

    mul-int v17, v9, v11

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 143
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_6

    .line 147
    :cond_6
    add-int/lit8 v15, p3, -0x1

    mul-int v5, v15, v11

    .line 148
    .local v5, "lastRow":I
    add-int/lit8 v1, p2, -0x1

    :goto_7
    if-ltz v1, :cond_7

    .line 149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int v16, v5, v1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 148
    add-int/lit8 v1, v1, -0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_7

    .line 152
    :cond_7
    add-int/lit8 v9, p3, -0x1

    :goto_8
    if-ltz v9, :cond_8

    .line 153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    mul-int v16, v9, v11

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 152
    add-int/lit8 v9, v9, -0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_8

    .line 155
    :cond_8
    add-int/lit8 v15, v4, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mNumOutlineIndices:I

    .line 157
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mInitialized:Z

    .line 158
    return-void
.end method

.method public getDrawOutlineOnly()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mDrawOutlineOnly:Z

    return v0
.end method

.method public getOutlineShader()Lcom/google/android/apps/lightcycle/opengl/Shader;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    return-object v0
.end method

.method public getTexture()Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTextures:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    return-object v0
.end method

.method public getTextureId()I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTextures:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v0

    return v0
.end method

.method public setDrawOutlineOnly(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mDrawOutlineOnly:Z

    .line 64
    return-void
.end method

.method public setOutlineShader(Lcom/google/android/apps/lightcycle/opengl/Shader;)V
    .locals 0
    .param p1, "shader"    # Lcom/google/android/apps/lightcycle/opengl/Shader;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mOutlineShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    .line 72
    return-void
.end method

.method public setTextureId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "PanoramaFrameOverlay Texture does not exist."

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/PanoramaFrameOverlay;->mTextures:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->setIndex(I)V

    goto :goto_0
.end method
