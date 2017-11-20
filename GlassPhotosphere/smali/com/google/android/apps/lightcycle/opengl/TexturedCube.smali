.class public Lcom/google/android/apps/lightcycle/opengl/TexturedCube;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "TexturedCube.java"


# static fields
.field private static final CUBE_ALPHA:F = 0.8f


# instance fields
.field private mNumIndices:I

.field private shader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

.field private texture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mNumIndices:I

    .line 48
    :try_start_0
    new-instance v1, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->shader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    new-instance v1, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->texture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->generateGeometry(Landroid/graphics/Bitmap;F)V

    .line 54
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method private generateGeometry(Landroid/graphics/Bitmap;F)V
    .locals 27
    .param p1, "texture"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F

    .prologue
    .line 111
    const/16 v22, 0x24

    .line 112
    .local v22, "numVertices":I
    const/16 v2, 0x24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mNumIndices:I

    .line 113
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mNumIndices:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2, v8}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->initGeometry(IIZ)V

    .line 116
    const/16 v2, 0x18

    new-array v0, v2, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    .line 121
    .local v26, "vertices":[F
    const/16 v2, 0x24

    new-array v0, v2, [S

    move-object/from16 v25, v0

    fill-array-data v25, :array_1

    .line 125
    .local v25, "vertOrder":[S
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 126
    aget-short v24, v25, v19

    .line 127
    .local v24, "vert":I
    mul-int/lit8 v20, v24, 0x3

    .line 128
    .local v20, "j":I
    aget v2, v26, v20

    mul-float v2, v2, p2

    add-int/lit8 v8, v20, 0x1

    aget v8, v26, v8

    mul-float v8, v8, p2

    add-int/lit8 v9, v20, 0x2

    aget v9, v26, v9

    mul-float v9, v9, p2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putVertex(IFFF)V

    .line 130
    move/from16 v0, v19

    int-to-short v2, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putIndex(IS)V

    .line 125
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 134
    .end local v20    # "j":I
    .end local v24    # "vert":I
    :cond_0
    const/high16 v10, 0x3e800000    # 0.25f

    .line 135
    .local v10, "cellHoriz":F
    const v11, 0x3eaaaaab

    .line 136
    .local v11, "cellVert":F
    const/16 v21, 0x0

    .line 137
    .local v21, "left":F
    move/from16 v23, v10

    .line 138
    .local v23, "right":F
    move v5, v11

    .line 139
    .local v5, "top":F
    add-float v7, v5, v11

    .line 140
    .local v7, "bot":F
    const/4 v3, 0x0

    .line 144
    .local v3, "index":I
    const/16 v19, 0x0

    :goto_1
    const/4 v2, 0x4

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    .line 145
    move/from16 v0, v19

    int-to-float v2, v0

    mul-float v4, v2, v10

    .line 146
    .local v4, "cellLeft":F
    add-float v6, v4, v10

    .local v6, "cellRight":F
    move-object/from16 v2, p0

    .line 147
    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putFaceTexCooords(IFFFF)I

    move-result v3

    .line 144
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 151
    .end local v4    # "cellLeft":F
    .end local v6    # "cellRight":F
    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v12, v10, v2

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putFaceTexCooords(IFFFF)I

    move-result v3

    .line 154
    const/high16 v2, 0x40400000    # 3.0f

    mul-float v15, v2, v11

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v16, v10, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v17, v2, v11

    move-object/from16 v12, p0

    move v13, v3

    move v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putFaceTexCooords(IFFFF)I

    move-result v3

    .line 159
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->texture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->loadBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_2
    return-void

    .line 160
    :catch_0
    move-exception v18

    .line 161
    .local v18, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_2

    .line 116
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 121
    :array_1
    .array-data 2
        0x0s
        0x7s
        0x3s
        0x0s
        0x4s
        0x7s
        0x4s
        0x6s
        0x7s
        0x4s
        0x5s
        0x6s
        0x5s
        0x2s
        0x6s
        0x5s
        0x1s
        0x2s
        0x1s
        0x3s
        0x2s
        0x1s
        0x0s
        0x3s
        0x3s
        0x6s
        0x7s
        0x3s
        0x2s
        0x6s
        0x4s
        0x1s
        0x0s
        0x4s
        0x5s
        0x1s
    .end array-data
.end method

.method private putFaceTexCooords(IFFFF)I
    .locals 0
    .param p1, "index"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bot"    # F

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putTexCoord(IFF)V

    .line 96
    add-int/lit8 p1, p1, 0x2

    .line 97
    invoke-direct {p0, p1, p4, p3}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putTexCoord(IFF)V

    .line 98
    add-int/lit8 p1, p1, 0x2

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putTexCoord(IFF)V

    .line 100
    add-int/lit8 p1, p1, 0x2

    .line 101
    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putTexCoord(IFF)V

    .line 102
    add-int/lit8 p1, p1, 0x2

    .line 103
    invoke-direct {p0, p1, p4, p5}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putTexCoord(IFF)V

    .line 104
    add-int/lit8 p1, p1, 0x2

    .line 105
    invoke-direct {p0, p1, p4, p3}, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->putTexCoord(IFF)V

    .line 106
    add-int/lit8 p1, p1, 0x2

    .line 107
    return p1
.end method

.method private putTexCoord(IFF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "u"    # F
    .param p3, "v"    # F

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mTexCoords:Ljava/nio/FloatBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 81
    return-void
.end method


# virtual methods
.method public drawObject([F)V
    .locals 4
    .param p1, "baseTransform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->shader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->bind()V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->shader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setAlpha(F)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->shader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->shader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->texture:Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->shader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->shader:Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/shaders/TransparencyShader;->setTransform([F)V

    .line 74
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mNumIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/opengl/TexturedCube;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 76
    return-void
.end method
