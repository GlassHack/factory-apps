.class public Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "TiledGroundPlaneDrawable.java"


# instance fields
.field private final gapSize:F

.field private numIndices:I

.field private final planeHeight:F

.field private shader:Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;

.field private final tileDim:F

.field private final tilesPerSide:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 17
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->numIndices:I

    .line 21
    const/16 v1, 0xf

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->tilesPerSide:I

    .line 24
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->tileDim:F

    .line 27
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->gapSize:F

    .line 30
    const/high16 v1, -0x3ee00000    # -10.0f

    iput v1, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->planeHeight:F

    .line 37
    :try_start_0
    new-instance v1, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;

    invoke-direct {v1}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->shader:Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;

    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->generateGeometry()V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/opengl/OpenGLException;->printStackTrace()V

    goto :goto_0
.end method

.method private generateGeometry()V
    .locals 25

    .prologue
    .line 57
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v22, 0xf

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v13, v22, 0xf

    .line 58
    .local v13, "numTiles":I
    mul-int/lit8 v14, v13, 0x4

    .line 59
    .local v14, "numVertices":I
    mul-int/lit8 v12, v13, 0x6

    .line 60
    .local v12, "numIndices":I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v14, v12, v1}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->initGeometry(IIZ)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v22, 0x40800000    # 4.0f

    const/high16 v23, 0x40000000    # 2.0f

    div-float v5, v22, v23

    .line 64
    .local v5, "halfDim":F
    const/high16 v16, 0x40900000    # 4.5f

    .line 65
    .local v16, "step":F
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40e00000    # 7.0f

    mul-float v15, v22, v23

    .line 66
    .local v15, "start":F
    move/from16 v20, v15

    .line 67
    .local v20, "x":F
    const/16 v18, 0x0

    .line 68
    .local v18, "vertIndex":S
    const/4 v7, 0x0

    .line 69
    .local v7, "indexIndex":S
    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v9, v0, [S

    fill-array-data v9, :array_0

    .line 71
    .local v9, "indexOffsets":[S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v22, 0xf

    move/from16 v0, v22

    if-ge v6, v0, :cond_2

    .line 72
    move/from16 v21, v15

    .line 73
    .local v21, "z":F
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v22, 0xf

    move/from16 v0, v22

    if-ge v10, v0, :cond_1

    .line 74
    move/from16 v17, v18

    .line 77
    .local v17, "tileVertIndex":S
    add-int/lit8 v22, v18, 0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v19, v0

    .end local v18    # "vertIndex":S
    .local v19, "vertIndex":S
    sub-float v22, v20, v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v23, -0x3ee00000    # -10.0f

    sub-float v24, v21, v5

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->putVertex(IFFF)V

    .line 78
    add-int/lit8 v22, v19, 0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v18, v0

    .end local v19    # "vertIndex":S
    .restart local v18    # "vertIndex":S
    add-float v22, v20, v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v23, -0x3ee00000    # -10.0f

    sub-float v24, v21, v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->putVertex(IFFF)V

    .line 79
    add-int/lit8 v22, v18, 0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v19, v0

    .end local v18    # "vertIndex":S
    .restart local v19    # "vertIndex":S
    add-float v22, v20, v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v23, -0x3ee00000    # -10.0f

    add-float v24, v21, v5

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->putVertex(IFFF)V

    .line 80
    add-int/lit8 v22, v19, 0x1

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v18, v0

    .end local v19    # "vertIndex":S
    .restart local v18    # "vertIndex":S
    sub-float v22, v20, v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v23, -0x3ee00000    # -10.0f

    add-float v24, v21, v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->putVertex(IFFF)V

    .line 83
    const/4 v11, 0x0

    .local v11, "k":I
    move v8, v7

    .end local v7    # "indexIndex":S
    .local v8, "indexIndex":S
    :goto_2
    const/16 v22, 0x6

    move/from16 v0, v22

    if-ge v11, v0, :cond_0

    .line 84
    add-int/lit8 v22, v8, 0x1

    move/from16 v0, v22

    int-to-short v7, v0

    .end local v8    # "indexIndex":S
    .restart local v7    # "indexIndex":S
    aget-short v22, v9, v11

    add-int v22, v22, v17

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->putIndex(IS)V

    .line 83
    add-int/lit8 v11, v11, 0x1

    move v8, v7

    .end local v7    # "indexIndex":S
    .restart local v8    # "indexIndex":S
    goto :goto_2

    .line 86
    :cond_0
    add-float v21, v21, v16

    .line 73
    add-int/lit8 v10, v10, 0x1

    move v7, v8

    .end local v8    # "indexIndex":S
    .restart local v7    # "indexIndex":S
    goto/16 :goto_1

    .line 88
    .end local v11    # "k":I
    .end local v17    # "tileVertIndex":S
    :cond_1
    add-float v20, v20, v16

    .line 71
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 90
    .end local v10    # "j":I
    .end local v21    # "z":F
    :cond_2
    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->numIndices:I

    .line 91
    return-void

    .line 69
    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
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
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->shader:Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->bind()V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->shader:Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;

    sget-object v1, Lcom/google/android/apps/lightcycle/Constants;->GROUND_PLANE_COLOR:[F

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->setColor([F)V

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->shader:Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->mVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->shader:Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/lightcycle/shaders/GroundPlaneShader;->setTransform([F)V

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->mIndices:Ljava/nio/ShortBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->numIndices:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/panorama/TiledGroundPlaneDrawable;->mIndices:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 53
    return-void
.end method
