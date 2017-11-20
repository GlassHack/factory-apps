.class public Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "GroundPlaneDrawable.java"


# instance fields
.field private mInitialized:Z

.field private mNumIndices:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 23
    iput v0, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mNumIndices:I

    .line 24
    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public drawObject([F)V
    .locals 4
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mInitialized:Z

    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mIndices:Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 40
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mNumIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public generateGeometry(IIIF)V
    .locals 14
    .param p1, "columns"    # I
    .param p2, "rows"    # I
    .param p3, "yvalue"    # I
    .param p4, "scale"    # F

    .prologue
    .line 51
    mul-int v5, p1, p2

    .line 54
    .local v5, "numVertices":I
    mul-int/lit8 v12, v5, 0x3

    mul-int/lit8 v12, v12, 0x4

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mVertices:Ljava/nio/FloatBuffer;

    .line 56
    mul-int/lit8 v12, v5, 0x2

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mIndices:Ljava/nio/ShortBuffer;

    .line 60
    const/high16 v10, -0x40800000    # -1.0f

    .line 61
    .local v10, "z":F
    const/high16 v12, 0x40000000    # 2.0f

    add-int/lit8 v13, p1, -0x1

    int-to-float v13, v13

    div-float v9, v12, v13

    .line 62
    .local v9, "xStep":F
    const/high16 v12, 0x40000000    # 2.0f

    add-int/lit8 v13, p2, -0x1

    int-to-float v13, v13

    div-float v11, v12, v13

    .line 63
    .local v11, "zStep":F
    const/4 v3, 0x0

    .line 64
    .local v3, "index":I
    const/4 v6, 0x0

    .local v6, "r":I
    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_1

    .line 65
    const/high16 v8, -0x40800000    # -1.0f

    .line 66
    .local v8, "x":F
    const/4 v1, 0x0

    .local v1, "c":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_1
    if-ge v1, p1, :cond_0

    .line 67
    iget-object v12, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    mul-float v13, v8, p4

    invoke-virtual {v12, v4, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 68
    iget-object v12, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "index":I
    .restart local v4    # "index":I
    move/from16 v0, p3

    int-to-float v13, v0

    invoke-virtual {v12, v3, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 69
    iget-object v12, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mVertices:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    mul-float v13, v10, p4

    invoke-virtual {v12, v4, v13}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 70
    add-float/2addr v8, v9

    .line 66
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_1

    .line 72
    :cond_0
    add-float/2addr v10, v11

    .line 64
    add-int/lit8 v6, v6, 0x1

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 76
    .end local v1    # "c":I
    .end local v8    # "x":F
    :cond_1
    const/4 v3, 0x0

    .line 77
    const/4 v2, 0x1

    .line 78
    .local v2, "direction":I
    const/4 v7, 0x0

    .line 80
    .local v7, "vertex":I
    const/4 v6, 0x0

    :goto_2
    move/from16 v0, p2

    if-ge v6, v0, :cond_3

    .line 81
    const/4 v1, 0x0

    .restart local v1    # "c":I
    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :goto_3
    if-ge v1, p1, :cond_2

    .line 82
    iget-object v12, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    int-to-short v13, v7

    invoke-virtual {v12, v4, v13}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 83
    add-int/2addr v7, v2

    .line 81
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_3

    .line 85
    :cond_2
    sub-int/2addr v7, v2

    .line 86
    neg-int v2, v2

    .line 87
    add-int/2addr v7, p1

    .line 80
    add-int/lit8 v6, v6, 0x1

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_2

    .line 91
    .end local v1    # "c":I
    :cond_3
    const/4 v2, -0x1

    .line 92
    sub-int/2addr v7, p1

    .line 93
    const/4 v1, 0x0

    .restart local v1    # "c":I
    :goto_4
    if-ge v1, p1, :cond_5

    .line 94
    const/4 v6, 0x0

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    :goto_5
    move/from16 v0, p2

    if-ge v6, v0, :cond_4

    .line 95
    iget-object v12, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mIndices:Ljava/nio/ShortBuffer;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    int-to-short v13, v7

    invoke-virtual {v12, v4, v13}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 96
    mul-int v12, v2, p1

    add-int/2addr v7, v12

    .line 94
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_5

    .line 98
    :cond_4
    mul-int v12, v2, p1

    sub-int/2addr v7, v12

    .line 99
    neg-int v2, v2

    .line 100
    add-int/lit8 v7, v7, 0x1

    .line 93
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_4

    .line 102
    :cond_5
    add-int/lit8 v12, v3, -0x2

    iput v12, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mNumIndices:I

    .line 103
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/google/android/apps/lightcycle/viewer/GroundPlaneDrawable;->mInitialized:Z

    .line 104
    return-void
.end method
