.class public Lcom/google/glass/maps/map/MiniMapPolyline;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLIP_EXPANSION_RATIO:I = 0x4

.field private static final DEFAULT_COLOR_ARGB:I = -0x10000

.field private static final DISTANCE_RATIO_FOR_BUFFER_REGEN:F = 1.25f

.field private static final DISTANCE_RATIO_FOR_RECLIP:F = 2.0f


# instance fields
.field private final clippedColorLines:Ljava/util/ArrayList;

.field private colorARGB:I

.field private colorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private forceBufferRegen:Z

.field private final fullColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

.field private indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

.field private lastBufferRegenDistance:F

.field private lastClipBound:Lcom/google/android/maps/driveabout/model/am;

.field private lastClipDistance:F

.field private final lineWidth:F

.field private final mvpMatrix:[F

.field private final renderUtil:Lcom/google/glass/maps/map/RenderUtil;

.field private final roadGenerator:Lcom/google/glass/maps/map/RoadGenerator;

.field private showColorSegments:Z

.field private texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

.field private zoom10ColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

.field private zoom6ColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;


# direct methods
.method public constructor <init>(Lcom/google/glass/maps/map/RenderUtil;Lcom/google/glass/maps/map/ColorPolyline;F)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->colorARGB:I

    .line 57
    new-instance v0, Lcom/google/glass/maps/map/RoadGenerator;

    invoke-direct {v0}, Lcom/google/glass/maps/map/RoadGenerator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->roadGenerator:Lcom/google/glass/maps/map/RoadGenerator;

    .line 61
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->mvpMatrix:[F

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->clippedColorLines:Ljava/util/ArrayList;

    .line 93
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    .line 94
    iput-object p2, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->fullColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

    .line 95
    iput p3, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lineWidth:F

    .line 96
    return-void
.end method

.method private clipLine(Lcom/google/glass/maps/map/Camera;)V
    .locals 7

    .prologue
    const v6, 0x1fffffff

    const/high16 v5, -0x20000000

    .line 259
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->clippedColorLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 260
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getZoom()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/map/MiniMapPolyline;->getPolyline(F)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v0

    .line 264
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/bg;->b()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/am;->g()I

    move-result v2

    .line 267
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/am;->h()I

    move-result v3

    .line 268
    const v4, 0x71c71c7

    .line 269
    if-gt v2, v4, :cond_0

    if-le v3, v4, :cond_1

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->clippedColorLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v0, Lcom/google/android/maps/driveabout/model/am;

    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v1, v5, v5}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2, v6, v6}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipBound:Lcom/google/android/maps/driveabout/model/am;

    .line 286
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getZoom()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/glass/maps/map/MiniMapPolyline;->getSimplificationTolerance(I)I

    move-result v2

    .line 287
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->clippedColorLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 288
    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->clippedColorLines:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->clippedColorLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/ColorPolyline;

    int-to-float v4, v2

    invoke-virtual {v0, v4}, Lcom/google/glass/maps/map/ColorPolyline;->simplify(F)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 287
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 275
    :cond_1
    new-instance v4, Lcom/google/android/maps/driveabout/model/ab;

    mul-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v3, 0x4

    invoke-direct {v4, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 276
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/model/ab;->f(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 277
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/am;->e()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/model/ab;->e(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 278
    invoke-virtual {v2, v2}, Lcom/google/android/maps/driveabout/model/ab;->i(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 279
    invoke-virtual {v1, v1}, Lcom/google/android/maps/driveabout/model/ab;->i(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 280
    new-instance v3, Lcom/google/android/maps/driveabout/model/am;

    invoke-direct {v3, v2, v1}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    iput-object v3, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipBound:Lcom/google/android/maps/driveabout/model/am;

    .line 281
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->clippedColorLines:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipBound:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/map/ColorPolyline;->clip(Lcom/google/android/maps/driveabout/model/am;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getDistance()F

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipDistance:F

    .line 291
    return-void
.end method

.method private createSimplifiedDataIfMissing()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->zoom10ColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->fullColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/glass/maps/map/MiniMapPolyline;->getSimplificationTolerance(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/ColorPolyline;->simplify(F)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->zoom10ColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

    .line 311
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->zoom10ColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/glass/maps/map/MiniMapPolyline;->getSimplificationTolerance(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/map/ColorPolyline;->simplify(F)Lcom/google/glass/maps/map/ColorPolyline;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->zoom6ColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

    .line 313
    :cond_0
    return-void
.end method

.method private getPolyline(F)Lcom/google/glass/maps/map/ColorPolyline;
    .locals 1

    .prologue
    .line 295
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->fullColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

    .line 302
    :goto_0
    return-object v0

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/maps/map/MiniMapPolyline;->createSimplifiedDataIfMissing()V

    .line 299
    const/high16 v0, 0x40c00000    # 6.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->zoom10ColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->zoom6ColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

    goto :goto_0
.end method

.method private static getSimplificationTolerance(I)I
    .locals 2

    .prologue
    .line 317
    const/4 v0, 0x2

    rsub-int/lit8 v1, p0, 0x1e

    shl-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method public static preparePass(Lcom/google/glass/maps/opengl/Program;Lcom/google/glass/maps/opengl/Texture;)V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/glass/maps/opengl/Program;->useProgram()V

    .line 134
    const-string v0, "fillWidth"

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 135
    const-string v0, "roadTexture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {p1}, Lcom/google/glass/maps/opengl/Texture;->bind()V

    .line 137
    return-void
.end method

.method private regenerateBuffers(Lcom/google/glass/maps/map/Camera;)V
    .locals 12

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 184
    .line 186
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->clippedColorLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/map/ColorPolyline;

    .line 187
    invoke-virtual {v0}, Lcom/google/glass/maps/map/ColorPolyline;->getCenterline()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/maps/map/RoadGenerator;->maxVerticesForExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;)I

    move-result v4

    add-int/2addr v2, v4

    .line 188
    invoke-virtual {v0}, Lcom/google/glass/maps/map/ColorPolyline;->getCenterline()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/map/RoadGenerator;->indicesForExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 189
    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v5, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 193
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 194
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-direct {v0, v5, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->colorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    .line 195
    new-instance v0, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    invoke-direct {v0, v8, v1}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    .line 197
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipBound:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    .line 198
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipBound:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/am;->g()I

    move-result v10

    .line 199
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getPixelSize()F

    move-result v0

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lineWidth:F

    mul-float v2, v0, v1

    .line 200
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->clippedColorLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/glass/maps/map/ColorPolyline;

    .line 201
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->roadGenerator:Lcom/google/glass/maps/map/RoadGenerator;

    invoke-virtual {v9}, Lcom/google/glass/maps/map/ColorPolyline;->getCenterline()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v1

    int-to-float v4, v10

    iget-object v5, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    iget-object v6, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    iget-object v7, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/maps/map/RoadGenerator;->addExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;FLcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;Z)V

    .line 203
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->colorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v9, v0}, Lcom/google/glass/maps/map/ColorPolyline;->populateColorBuffer(Lcom/google/glass/maps/opengl/GLBuffer$Float;)V

    goto :goto_1

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 206
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 207
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->colorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->finish()V

    .line 208
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    invoke-virtual {v0}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->finish()V

    .line 210
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getDistance()F

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastBufferRegenDistance:F

    .line 211
    return-void
.end method

.method private shouldReclipLine(Lcom/google/glass/maps/map/Camera;)Z
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x1

    .line 236
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipBound:Lcom/google/android/maps/driveabout/model/am;

    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getDistance()F

    move-result v1

    .line 242
    iget v2, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipDistance:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipDistance:F

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipBound:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getFrustumProjection()Lcom/google/android/maps/driveabout/model/bg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/bg;->c()Lcom/google/android/maps/driveabout/model/an;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldRegenerateBuffers(Lcom/google/glass/maps/map/Camera;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3fa00000    # 1.25f

    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    iget-boolean v2, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->forceBufferRegen:Z

    if-eqz v2, :cond_1

    .line 220
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->forceBufferRegen:Z

    .line 221
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    monitor-exit p0

    .line 224
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getDistance()F

    move-result v2

    .line 225
    iget v3, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastBufferRegenDistance:F

    mul-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastBufferRegenDistance:F

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    .line 229
    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public draw(Lcom/google/glass/maps/map/Camera;Lcom/google/glass/maps/opengl/Program;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipBound:Lcom/google/android/maps/driveabout/model/am;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/MiniMapPolyline;->clipLine(Lcom/google/glass/maps/map/Camera;)V

    .line 159
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/MiniMapPolyline;->shouldRegenerateBuffers(Lcom/google/glass/maps/map/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/MiniMapPolyline;->regenerateBuffers(Lcom/google/glass/maps/map/Camera;)V

    .line 163
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->showColorSegments:Z

    if-eqz v0, :cond_2

    .line 164
    const-string v0, "baseColor"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformColorARGB(Ljava/lang/String;I)V

    .line 165
    const-string v0, "ignoreColorBuffer"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    .line 171
    :goto_0
    const-string v0, "MVP"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->mvpMatrix:[F

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformMatrix(Ljava/lang/String;[F)V

    .line 172
    const-string v0, "position"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->vertexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 173
    const-string v0, "texCoord"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->texCoordBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 174
    const-string v0, "color"

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->colorBuffer:Lcom/google/glass/maps/opengl/GLBuffer$Float;

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setAttribute(Ljava/lang/String;Lcom/google/glass/maps/opengl/GLBuffer;)V

    .line 175
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->indexBuffer:Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->drawElements(I)V

    .line 176
    return-void

    .line 167
    :cond_2
    const-string v0, "baseColor"

    iget v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->colorARGB:I

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniformColorARGB(Ljava/lang/String;I)V

    .line 168
    const-string v0, "ignoreColorBuffer"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/opengl/Program;->setUniform(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public getColorPolyline()Lcom/google/glass/maps/map/ColorPolyline;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->fullColorPolyline:Lcom/google/glass/maps/map/ColorPolyline;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lineWidth:F

    return v0
.end method

.method public getShowColorSegments()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->showColorSegments:Z

    return v0
.end method

.method public setColorARGB(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->colorARGB:I

    .line 114
    return-void
.end method

.method public setShowColorSegments(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->showColorSegments:Z

    .line 119
    return-void
.end method

.method public updateCamera(Lcom/google/glass/maps/map/Camera;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/MiniMapPolyline;->shouldReclipLine(Lcom/google/glass/maps/map/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/google/glass/maps/map/MiniMapPolyline;->clipLine(Lcom/google/glass/maps/map/Camera;)V

    .line 143
    monitor-enter p0

    .line 144
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->forceBufferRegen:Z

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/maps/map/Camera;->getMVPMatrix()[F

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->mvpMatrix:[F

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->mvpMatrix:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v0, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->renderUtil:Lcom/google/glass/maps/map/RenderUtil;

    iget-object v1, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->mvpMatrix:[F

    iget-object v2, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipBound:Lcom/google/android/maps/driveabout/model/am;

    .line 150
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/map/MiniMapPolyline;->lastClipBound:Lcom/google/android/maps/driveabout/model/am;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/am;->g()I

    move-result v3

    int-to-float v3, v3

    .line 149
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/glass/maps/map/RenderUtil;->setUpLocalCoordinateSystem([FLcom/google/glass/maps/map/Camera;Lcom/google/android/maps/driveabout/model/ab;F)V

    .line 151
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
