.class public Lcom/google/android/apps/lightcycle/opengl/Sphere;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "Sphere.java"


# instance fields
.field private mLineDrawing:Z

.field private mLineIndices:Ljava/nio/ShortBuffer;

.field private mNumLineIndices:I

.field private mNumTriangleIndices:I


# direct methods
.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "numLatitudes"    # I
    .param p2, "numLongitudes"    # I
    .param p3, "radius"    # F

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mLineDrawing:Z

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->generateGeometry(IIF)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/opengl/DrawableGL;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/android/apps/lightcycle/opengl/DrawableGL;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>(Lcom/google/android/apps/lightcycle/opengl/DrawableGL;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mLineDrawing:Z

    .line 36
    return-void
.end method

.method private generateGeometry(IIF)V
    .locals 31
    .param p1, "numLatitudes"    # I
    .param p2, "numLongitudes"    # I
    .param p3, "radius"    # F

    .prologue
    .line 100
    mul-int v14, p1, p2

    .line 101
    .local v14, "numVertices":I
    add-int/lit8 v28, p1, -0x1

    add-int/lit8 v29, p2, -0x1

    mul-int v28, v28, v29

    mul-int/lit8 v13, v28, 0x6

    .line 102
    .local v13, "numIndices":I
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v14, v13, v1}, Lcom/google/android/apps/lightcycle/opengl/Sphere;->initGeometry(IIZ)V

    .line 103
    mul-int/lit8 v28, v14, 0x2

    mul-int/lit8 v28, v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mLineIndices:Ljava/nio/ShortBuffer;

    .line 107
    const v28, 0x40490fdb    # (float)Math.PI

    add-int/lit8 v29, p1, -0x1

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v3, v28, v29

    .line 108
    .local v3, "angleStepLat":F
    const v28, 0x40c90fdb

    add-int/lit8 v29, p2, -0x1

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v4, v28, v29

    .line 109
    .local v4, "angleStepLon":F
    const/16 v23, 0x0

    .line 110
    .local v23, "vertIndex":I
    const/16 v20, 0x0

    .line 111
    .local v20, "texIndex":I
    const v15, 0x3fc90fdb

    .line 112
    .local v15, "piDiv2":F
    const/16 v16, 0x0

    .local v16, "r":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 113
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v3

    const v29, 0x3fc90fdb

    sub-float v10, v28, v29

    .line 114
    .local v10, "lat":F
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v29, v0

    add-int/lit8 v30, p1, -0x1

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    sub-float v22, v28, v29

    .line 115
    .local v22, "v":F
    const/4 v5, 0x0

    .local v5, "c":I
    :goto_1
    move/from16 v0, p2

    if-ge v5, v0, :cond_0

    .line 118
    int-to-float v0, v5

    move/from16 v28, v0

    mul-float v28, v28, v4

    const v29, 0x3fc90fdb

    add-float v11, v28, v29

    .line 119
    .local v11, "lon":F
    invoke-static {v10}, Landroid/util/FloatMath;->sin(F)F

    move-result v19

    .line 120
    .local v19, "sinlat":F
    invoke-static {v10}, Landroid/util/FloatMath;->cos(F)F

    move-result v6

    .line 121
    .local v6, "coslat":F
    invoke-static {v11}, Landroid/util/FloatMath;->cos(F)F

    move-result v28

    mul-float v28, v28, v6

    mul-float v25, v28, p3

    .line 122
    .local v25, "x":F
    mul-float v26, v19, p3

    .line 123
    .local v26, "y":F
    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v28

    mul-float v28, v28, v6

    mul-float v27, v28, p3

    .line 124
    .local v27, "z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v29, v23, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v29, v23, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 127
    add-int/lit8 v23, v23, 0x3

    .line 130
    int-to-float v0, v5

    move/from16 v28, v0

    add-int/lit8 v29, p2, -0x1

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v21, v28, v29

    .line 131
    .local v21, "u":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mTexCoords:Ljava/nio/FloatBuffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mTexCoords:Ljava/nio/FloatBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v29, v20, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 133
    add-int/lit8 v20, v20, 0x2

    .line 115
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 112
    .end local v6    # "coslat":F
    .end local v11    # "lon":F
    .end local v19    # "sinlat":F
    .end local v21    # "u":F
    .end local v25    # "x":F
    .end local v26    # "y":F
    .end local v27    # "z":F
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 138
    .end local v5    # "c":I
    .end local v10    # "lat":F
    .end local v22    # "v":F
    :cond_1
    move/from16 v18, p2

    .line 139
    .local v18, "rowStride":I
    const/4 v8, 0x0

    .line 140
    .local v8, "index":I
    const/16 v16, 0x0

    :goto_2
    add-int/lit8 v28, p1, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 141
    mul-int v17, v16, v18

    .line 142
    .local v17, "rowIndex":I
    add-int/lit8 v28, v16, 0x1

    mul-int v12, v28, v18

    .line 143
    .local v12, "nextRowIndex":I
    const/4 v5, 0x0

    .restart local v5    # "c":I
    move v9, v8

    .end local v8    # "index":I
    .local v9, "index":I
    :goto_3
    add-int/lit8 v28, p2, -0x1

    move/from16 v0, v28

    if-ge v5, v0, :cond_2

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    add-int/lit8 v29, v12, 0x1

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    int-to-short v0, v12

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    add-int/lit8 v29, v17, 0x1

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .restart local v9    # "index":I
    add-int/lit8 v29, v12, 0x1

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 150
    add-int/lit8 v17, v17, 0x1

    .line 151
    add-int/lit8 v12, v12, 0x1

    .line 143
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 140
    :cond_2
    add-int/lit8 v16, v16, 0x1

    move v8, v9

    .end local v9    # "index":I
    .restart local v8    # "index":I
    goto/16 :goto_2

    .line 154
    .end local v5    # "c":I
    .end local v12    # "nextRowIndex":I
    .end local v17    # "rowIndex":I
    :cond_3
    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mNumTriangleIndices:I

    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v7, 0x1

    .line 159
    .local v7, "direction":I
    const/16 v24, 0x0

    .line 161
    .local v24, "vertex":I
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    .line 162
    const/4 v5, 0x0

    .restart local v5    # "c":I
    move v9, v8

    .end local v8    # "index":I
    .restart local v9    # "index":I
    :goto_5
    move/from16 v0, p2

    if-ge v5, v0, :cond_4

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mLineIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 164
    add-int v24, v24, v7

    .line 162
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "index":I
    .restart local v9    # "index":I
    goto :goto_5

    .line 166
    :cond_4
    sub-int v24, v24, v7

    .line 167
    neg-int v7, v7

    .line 168
    add-int v24, v24, p2

    .line 161
    add-int/lit8 v16, v16, 0x1

    move v8, v9

    .end local v9    # "index":I
    .restart local v8    # "index":I
    goto :goto_4

    .line 171
    .end local v5    # "c":I
    :cond_5
    const/4 v7, -0x1

    .line 172
    sub-int v24, v24, p2

    .line 173
    const/4 v5, 0x0

    .restart local v5    # "c":I
    :goto_6
    move/from16 v0, p2

    if-ge v5, v0, :cond_7

    .line 174
    const/16 v16, 0x0

    move v9, v8

    .end local v8    # "index":I
    .restart local v9    # "index":I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mLineIndices:Ljava/nio/ShortBuffer;

    move-object/from16 v28, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "index":I
    .restart local v8    # "index":I
    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v9, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 176
    mul-int v28, v7, p2

    add-int v24, v24, v28

    .line 174
    add-int/lit8 v16, v16, 0x1

    move v9, v8

    .end local v8    # "index":I
    .restart local v9    # "index":I
    goto :goto_7

    .line 178
    :cond_6
    mul-int v28, v7, p2

    sub-int v24, v24, v28

    .line 179
    neg-int v7, v7

    .line 180
    add-int/lit8 v24, v24, 0x1

    .line 173
    add-int/lit8 v5, v5, 0x1

    move v8, v9

    .end local v9    # "index":I
    .restart local v8    # "index":I
    goto :goto_6

    .line 182
    :cond_7
    add-int/lit8 v28, v8, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mNumLineIndices:I

    .line 183
    return-void
.end method


# virtual methods
.method public createTexture(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mTextures:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 56
    new-instance v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>()V

    .line 57
    .local v0, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->setIndex(I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mTextures:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public drawObject([F)V
    .locals 4
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1403

    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 71
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mLineDrawing:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTexCoords(Ljava/nio/FloatBuffer;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mTextures:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mLineIndices:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mLineDrawing:Z

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mNumLineIndices:I

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mLineIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mNumTriangleIndices:I

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public getTexture()Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mTextures:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    return-object v0
.end method

.method public getTextureId()I
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mTextures:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->getIndex()I

    move-result v0

    return v0
.end method

.method public setLineDrawing(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/opengl/Sphere;->mLineDrawing:Z

    .line 52
    return-void
.end method
