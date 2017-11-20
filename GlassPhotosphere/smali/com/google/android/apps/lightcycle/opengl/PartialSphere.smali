.class public Lcom/google/android/apps/lightcycle/opengl/PartialSphere;
.super Lcom/google/android/apps/lightcycle/opengl/DrawableGL;
.source "PartialSphere.java"


# static fields
.field private static final MAX_ANGLE_STEP_RAD:F = 0.12f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private curvedTiles:[[Lcom/google/android/apps/lightcycle/opengl/CurvedTile;

.field private image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

.field private final radius:F

.field private tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/opengl/DrawableGL;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->radius:F

    .line 47
    return-void
.end method

.method private generateGeometry(F)V
    .locals 42
    .param p1, "radius"    # F

    .prologue
    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileSizeRad()F

    move-result v39

    const v40, 0x3df5c28f    # 0.12f

    div-float v39, v39, v40

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v39

    move-wide/from16 v0, v39

    double-to-int v0, v0

    move/from16 v26, v0

    .line 94
    .local v26, "tesselationFactor":I
    sget-object v39, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->TAG:Ljava/lang/String;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "tesselation factor: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getTileCountY()I

    move-result v39

    mul-int v39, v39, v26

    add-int/lit8 v14, v39, 0x1

    .line 99
    .local v14, "numLatitudes":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getTileCountX()I

    move-result v39

    mul-int v39, v39, v26

    add-int/lit8 v15, v39, 0x1

    .line 103
    .local v15, "numLongitudes":I
    mul-int v16, v14, v15

    .line 105
    .local v16, "numVertices":I
    add-int/lit8 v39, v14, -0x1

    add-int/lit8 v40, v15, -0x1

    mul-int v39, v39, v40

    mul-int/lit8 v13, v39, 0x6

    .line 106
    .local v13, "numIndices":I
    const/16 v39, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v39

    invoke-virtual {v0, v1, v13, v2}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->initGeometry(IIZ)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileSizeRad()F

    move-result v39

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v4, v39, v40

    .line 111
    .local v4, "angleStepLat":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileSizeRad()F

    move-result v39

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v6, v39, v40

    .line 115
    .local v6, "angleStepLon":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getLastRowHeightRad()F

    move-result v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileSizeRad()F

    move-result v40

    div-float v39, v39, v40

    mul-float v5, v4, v39

    .line 117
    .local v5, "angleStepLatEdge":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getLastColumnWidthRad()F

    move-result v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileSizeRad()F

    move-result v40

    div-float v39, v39, v40

    mul-float v7, v6, v39

    .line 122
    .local v7, "angleStepLonEdge":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getOffsetTopRad()F

    move-result v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getPanoHeightRad()F

    move-result v40

    add-float v39, v39, v40

    const v40, 0x3fc90fdb

    sub-float v17, v39, v40

    .line 124
    .local v17, "offsetLat":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getOffsetLeftRad()F

    move-result v39

    move/from16 v0, v39

    neg-float v0, v0

    move/from16 v39, v0

    const v40, 0x40490fdb    # (float)Math.PI

    sub-float v18, v39, v40

    .line 131
    .local v18, "offsetLon":F
    sub-int v39, v15, v26

    add-int/lit8 v23, v39, -0x1

    .line 132
    .local v23, "secondToLastTileEndColumn":I
    move/from16 v22, v26

    .line 135
    .local v22, "secondTileStartRow":I
    const/16 v32, 0x0

    .line 136
    .local v32, "vertIndex":I
    const/16 v27, 0x0

    .line 137
    .local v27, "texIndex":I
    const v19, 0x3fc90fdb

    .line 138
    .local v19, "piDiv2":F
    filled-new-array {v15, v14}, [I

    move-result-object v39

    const-class v40, Lcom/google/android/apps/lightcycle/opengl/Vertex;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [[Lcom/google/android/apps/lightcycle/opengl/Vertex;

    .line 139
    .local v33, "vertices":[[Lcom/google/android/apps/lightcycle/opengl/Vertex;
    const/16 v21, 0x0

    .local v21, "r":I
    :goto_0
    move/from16 v0, v21

    if-ge v0, v14, :cond_3

    .line 144
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 145
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v5

    sub-float v11, v39, v17

    .line 153
    .local v11, "lat":F
    :goto_1
    const/4 v8, 0x0

    .local v8, "c":I
    :goto_2
    if-ge v8, v15, :cond_2

    .line 155
    int-to-float v0, v8

    move/from16 v39, v0

    mul-float v12, v39, v6

    .line 159
    .local v12, "lon":F
    move/from16 v0, v23

    if-le v8, v0, :cond_0

    .line 162
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v20, v39, v6

    .line 166
    .local v20, "prevLon":F
    sub-int v39, v8, v23

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v7

    add-float v12, v20, v39

    .line 170
    .end local v20    # "prevLon":F
    :cond_0
    const v39, 0x3fc90fdb

    sub-float v39, v12, v39

    sub-float v12, v39, v18

    .line 173
    float-to-double v0, v11

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    move-wide/from16 v0, v39

    double-to-float v0, v0

    move/from16 v24, v0

    .line 174
    .local v24, "sinlat":F
    float-to-double v0, v12

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sin(D)D

    move-result-wide v39

    move-wide/from16 v0, v39

    double-to-float v0, v0

    move/from16 v25, v0

    .line 175
    .local v25, "sinlon":F
    float-to-double v0, v11

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->cos(D)D

    move-result-wide v39

    move-wide/from16 v0, v39

    double-to-float v9, v0

    .line 176
    .local v9, "coslat":F
    float-to-double v0, v12

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->cos(D)D

    move-result-wide v39

    move-wide/from16 v0, v39

    double-to-float v10, v0

    .line 178
    .local v10, "coslon":F
    mul-float v39, v9, v10

    mul-float v34, v39, p1

    .line 179
    .local v34, "x":F
    mul-float v36, v24, p1

    .line 180
    .local v36, "y":F
    mul-float v39, v9, v25

    mul-float v38, v39, p1

    .line 182
    .local v38, "z":F
    aget-object v39, v33, v8

    new-instance v40, Lcom/google/android/apps/lightcycle/opengl/Vertex;

    move-object/from16 v0, v40

    move/from16 v1, v34

    move/from16 v2, v36

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/opengl/Vertex;-><init>(FFF)V

    aput-object v40, v39, v21

    .line 153
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 149
    .end local v8    # "c":I
    .end local v9    # "coslat":F
    .end local v10    # "coslon":F
    .end local v11    # "lat":F
    .end local v12    # "lon":F
    .end local v24    # "sinlat":F
    .end local v25    # "sinlon":F
    .end local v34    # "x":F
    .end local v36    # "y":F
    .end local v38    # "z":F
    :cond_1
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v39, v0

    mul-float v39, v39, v4

    sub-float v39, v39, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileSizeRad()F

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getLastRowHeightRad()F

    move-result v41

    sub-float v40, v40, v41

    sub-float v11, v39, v40

    .restart local v11    # "lat":F
    goto/16 :goto_1

    .line 139
    .restart local v8    # "c":I
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 187
    .end local v8    # "c":I
    .end local v11    # "lat":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getTileCountX()I

    move-result v28

    .line 188
    .local v28, "textureCountX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getTileCountY()I

    move-result v29

    .line 191
    .local v29, "textureCountY":I
    filled-new-array/range {v28 .. v29}, [I

    move-result-object v39

    const-class v40, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [[Lcom/google/android/apps/lightcycle/opengl/CurvedTile;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->curvedTiles:[[Lcom/google/android/apps/lightcycle/opengl/CurvedTile;

    .line 192
    const/16 v36, 0x0

    .local v36, "y":I
    const/16 v31, 0x0

    .local v31, "v":I
    :goto_3
    move/from16 v0, v31

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 193
    const/16 v34, 0x0

    .local v34, "x":I
    const/16 v30, 0x0

    .local v30, "u":I
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->curvedTiles:[[Lcom/google/android/apps/lightcycle/opengl/CurvedTile;

    move-object/from16 v39, v0

    aget-object v39, v39, v30

    new-instance v40, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;

    mul-int v41, v30, v29

    add-int v41, v41, v31

    move-object/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;-><init>(II)V

    aput-object v40, v39, v31

    .line 200
    const/16 v37, 0x0

    .local v37, "yy":I
    :goto_5
    add-int/lit8 v39, v26, 0x1

    move/from16 v0, v37

    move/from16 v1, v39

    if-ge v0, v1, :cond_5

    .line 201
    const/16 v35, 0x0

    .local v35, "xx":I
    :goto_6
    add-int/lit8 v39, v26, 0x1

    move/from16 v0, v35

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->curvedTiles:[[Lcom/google/android/apps/lightcycle/opengl/CurvedTile;

    move-object/from16 v39, v0

    aget-object v39, v39, v30

    aget-object v39, v39, v31

    add-int v40, v34, v35

    aget-object v40, v33, v40

    add-int v41, v36, v37

    aget-object v40, v40, v41

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->putVertex(Lcom/google/android/apps/lightcycle/opengl/Vertex;)V

    .line 201
    add-int/lit8 v35, v35, 0x1

    goto :goto_6

    .line 200
    :cond_4
    add-int/lit8 v37, v37, 0x1

    goto :goto_5

    .line 193
    .end local v35    # "xx":I
    :cond_5
    add-int v34, v34, v26

    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 192
    .end local v37    # "yy":I
    :cond_6
    add-int v36, v36, v26

    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    .line 207
    .end local v30    # "u":I
    .end local v34    # "x":I
    :cond_7
    return-void
.end method


# virtual methods
.method public drawObject([F)V
    .locals 6
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/opengl/Shader;->bind()V

    .line 72
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->curvedTiles:[[Lcom/google/android/apps/lightcycle/opengl/CurvedTile;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->curvedTiles:[[Lcom/google/android/apps/lightcycle/opengl/CurvedTile;

    aget-object v0, v4, v2

    .line 74
    .local v0, "textureColumn":[Lcom/google/android/apps/lightcycle/opengl/CurvedTile;
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 75
    aget-object v1, v0, v3

    .line 77
    .local v1, "tile":Lcom/google/android/apps/lightcycle/opengl/CurvedTile;
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->mTextures:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget v5, v1, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->textureId:I

    if-le v4, v5, :cond_0

    .line 78
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->mTextures:Ljava/util/Vector;

    iget v5, v1, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->textureId:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->bind(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 80
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v4, p1}, Lcom/google/android/apps/lightcycle/opengl/Shader;->setTransform([F)V

    .line 81
    iget-object v4, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->mShader:Lcom/google/android/apps/lightcycle/opengl/Shader;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/lightcycle/opengl/CurvedTile;->draw(Lcom/google/android/apps/lightcycle/opengl/Shader;)V

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    .end local v1    # "tile":Lcom/google/android/apps/lightcycle/opengl/CurvedTile;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "textureColumn":[Lcom/google/android/apps/lightcycle/opengl/CurvedTile;
    .end local v3    # "y":I
    :cond_2
    return-void
.end method

.method public loadTextures()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 216
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    if-nez v7, :cond_1

    .line 217
    sget-object v7, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->TAG:Ljava/lang/String;

    const-string v8, "tile provider is null. Cannot load textures"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    :goto_0
    return v6

    .line 221
    :cond_1
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->mTextures:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    .line 222
    .local v2, "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->recycle()V

    goto :goto_1

    .line 224
    .end local v2    # "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    :cond_2
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->mTextures:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 226
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_2
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    invoke-interface {v7}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getTileCountX()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 227
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_3
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    invoke-interface {v7}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getTileCountY()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 228
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    iget-object v8, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    invoke-interface {v8}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getTileCountY()I

    move-result v8

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v4, v8}, Lcom/google/android/apps/lightcycle/viewer/TileProvider;->getTile(II)Lcom/google/android/apps/lightcycle/viewer/Tile;

    move-result-object v3

    .line 230
    .local v3, "tile":Lcom/google/android/apps/lightcycle/viewer/Tile;
    iget-object v7, v3, Lcom/google/android/apps/lightcycle/viewer/Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ltz v7, :cond_0

    iget-object v7, v3, Lcom/google/android/apps/lightcycle/viewer/Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ltz v7, :cond_0

    .line 233
    new-instance v2, Lcom/google/android/apps/lightcycle/opengl/GLTexture;

    sget-object v7, Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;->Standard:Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;

    invoke-direct {v2, v7}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;-><init>(Lcom/google/android/apps/lightcycle/opengl/GLTexture$TextureType;)V

    .line 235
    .restart local v2    # "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    :try_start_0
    iget-object v7, v3, Lcom/google/android/apps/lightcycle/viewer/Tile;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v7}, Lcom/google/android/apps/lightcycle/opengl/GLTexture;->loadBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/android/apps/lightcycle/opengl/OpenGLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    iget-object v7, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->mTextures:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "ex":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    sget-object v7, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not load texture ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 226
    .end local v0    # "ex":Lcom/google/android/apps/lightcycle/opengl/OpenGLException;
    .end local v2    # "texture":Lcom/google/android/apps/lightcycle/opengl/GLTexture;
    .end local v3    # "tile":Lcom/google/android/apps/lightcycle/viewer/Tile;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 243
    .end local v5    # "y":I
    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public setImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V
    .locals 2
    .param p1, "image"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileProvider()Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->image:Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->getTileProvider()Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->tileProvider:Lcom/google/android/apps/lightcycle/viewer/TileProvider;

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->loadTextures()Z

    move-result v0

    .line 62
    .local v0, "ok":Z
    invoke-virtual {p1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;->init()V

    .line 63
    iget v1, p0, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->radius:F

    invoke-direct {p0, v1}, Lcom/google/android/apps/lightcycle/opengl/PartialSphere;->generateGeometry(F)V

    .line 64
    return-void
.end method
