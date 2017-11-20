.class public Lcom/google/glass/maps/map/RoadGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COORD_ENDCAP_END:F = 1.0f

.field private static final COORD_ENDCAP_NONE:F = 0.25f

.field private static final COORD_ENDCAP_START:F = 0.5f

.field private static final END_ENDCAP_TEXCOORDS:[F

.field private static final FALLBACK_TURN_TEXCOORDS:[F

.field private static final NORMAL_TURN_TEXCOORDS:[F

.field private static final START_ENDCAP_TEXCOORDS:[F

.field public static final VERTICES_PER_EXTRUDED_CONNECTED_SEGMENT:I = 0x5

.field public static final VERTICES_PER_EXTRUDED_SEGMENT:I = 0x4


# instance fields
.field private final point0:Lcom/google/android/maps/driveabout/model/ab;

.field private final point1:Lcom/google/android/maps/driveabout/model/ab;

.field private final point2:Lcom/google/android/maps/driveabout/model/ab;

.field private final point3:Lcom/google/android/maps/driveabout/model/ab;

.field private final point4:Lcom/google/android/maps/driveabout/model/ab;

.field private final point5:Lcom/google/android/maps/driveabout/model/ab;

.field private final point6:Lcom/google/android/maps/driveabout/model/ab;

.field private final point7:Lcom/google/android/maps/driveabout/model/ab;

.field private final point8:Lcom/google/android/maps/driveabout/model/ab;

.field private final point9:Lcom/google/android/maps/driveabout/model/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 61
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/maps/map/RoadGenerator;->START_ENDCAP_TEXCOORDS:[F

    .line 69
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/glass/maps/map/RoadGenerator;->END_ENDCAP_TEXCOORDS:[F

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/glass/maps/map/RoadGenerator;->NORMAL_TURN_TEXCOORDS:[F

    .line 83
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/glass/maps/map/RoadGenerator;->FALLBACK_TURN_TEXCOORDS:[F

    return-void

    .line 61
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 69
    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 77
    :array_2
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
    .end array-data

    .line 83
    :array_3
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RoadGenerator;->point0:Lcom/google/android/maps/driveabout/model/ab;

    .line 40
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RoadGenerator;->point1:Lcom/google/android/maps/driveabout/model/ab;

    .line 41
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RoadGenerator;->point2:Lcom/google/android/maps/driveabout/model/ab;

    .line 42
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RoadGenerator;->point3:Lcom/google/android/maps/driveabout/model/ab;

    .line 43
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RoadGenerator;->point4:Lcom/google/android/maps/driveabout/model/ab;

    .line 44
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RoadGenerator;->point5:Lcom/google/android/maps/driveabout/model/ab;

    .line 45
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RoadGenerator;->point6:Lcom/google/android/maps/driveabout/model/ab;

    .line 46
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RoadGenerator;->point7:Lcom/google/android/maps/driveabout/model/ab;

    .line 47
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RoadGenerator;->point8:Lcom/google/android/maps/driveabout/model/ab;

    .line 48
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/map/RoadGenerator;->point9:Lcom/google/android/maps/driveabout/model/ab;

    .line 49
    return-void
.end method

.method private addSingleExtrudedRoadSegment(Lcom/google/android/maps/driveabout/model/ag;FLcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;)V
    .locals 11

    .prologue
    .line 287
    invoke-virtual/range {p5 .. p5}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->position()I

    move-result v1

    .line 290
    iget-object v2, p0, Lcom/google/glass/maps/map/RoadGenerator;->point0:Lcom/google/android/maps/driveabout/model/ab;

    .line 291
    iget-object v3, p0, Lcom/google/glass/maps/map/RoadGenerator;->point1:Lcom/google/android/maps/driveabout/model/ab;

    .line 292
    iget-object v4, p0, Lcom/google/glass/maps/map/RoadGenerator;->point2:Lcom/google/android/maps/driveabout/model/ab;

    .line 293
    iget-object v5, p0, Lcom/google/glass/maps/map/RoadGenerator;->point3:Lcom/google/android/maps/driveabout/model/ab;

    .line 294
    iget-object v6, p0, Lcom/google/glass/maps/map/RoadGenerator;->point4:Lcom/google/android/maps/driveabout/model/ab;

    .line 295
    iget-object v7, p0, Lcom/google/glass/maps/map/RoadGenerator;->point5:Lcom/google/android/maps/driveabout/model/ab;

    .line 296
    iget-object v8, p0, Lcom/google/glass/maps/map/RoadGenerator;->point6:Lcom/google/android/maps/driveabout/model/ab;

    .line 299
    const/4 v9, 0x0

    invoke-virtual {p1, v9, p3, v2}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 300
    const/4 v9, 0x1

    invoke-virtual {p1, v9, p3, v3}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 305
    invoke-static {v3, v2, v4}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 306
    invoke-static {v4, p2, v5}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 307
    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 310
    invoke-static {v2, v6, v2}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 311
    invoke-static {v3, v6, v3}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 314
    invoke-static {v2, v5, v8}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 315
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, p4

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v9, v10}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 316
    invoke-static {v2, v5, v8}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 317
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, p4

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v9, v10}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 319
    invoke-static {v2, v3, v7}, Lcom/google/android/maps/driveabout/model/ae;->e(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 320
    invoke-static {v7, v5, v8}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 321
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, p4

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v6, v9}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 322
    invoke-static {v7, v5, v8}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 323
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p4

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v6, v7}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 325
    invoke-static {v3, v5, v8}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 326
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p4

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v6, v7}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 327
    invoke-static {v3, v5, v8}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 328
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p4

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p4

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v5}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 333
    const/high16 v2, -0x41800000    # -0.25f

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->i()F

    move-result v3

    div-float/2addr v3, p2

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    .line 334
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 335
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 336
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 337
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 338
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 339
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FF)V

    .line 342
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->addQuadIndices(IIII)V

    .line 343
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x3

    add-int/lit8 v4, v1, 0x4

    add-int/lit8 v1, v1, 0x5

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->addQuadIndices(IIII)V

    .line 344
    return-void
.end method

.method public static indicesForExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;)I
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 368
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 370
    const/16 v0, 0xc

    .line 373
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static maxVerticesForExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;)I
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 352
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 354
    const/4 v0, 0x6

    .line 359
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addExtrudedRoad(Lcom/google/android/maps/driveabout/model/ag;FLcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;Z)V
    .locals 23

    .prologue
    .line 112
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v6, v2, p4

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v10

    .line 117
    const/4 v2, 0x2

    if-ne v10, v2, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 118
    invoke-direct/range {v2 .. v9}, Lcom/google/glass/maps/map/RoadGenerator;->addSingleExtrudedRoadSegment(Lcom/google/android/maps/driveabout/model/ag;FLcom/google/android/maps/driveabout/model/ab;FLcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$Float;Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;)V

    goto :goto_0

    .line 121
    :cond_2
    const/4 v2, 0x2

    if-lt v10, v2, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/maps/map/RoadGenerator;->point0:Lcom/google/android/maps/driveabout/model/ab;

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/maps/map/RoadGenerator;->point1:Lcom/google/android/maps/driveabout/model/ab;

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/maps/map/RoadGenerator;->point2:Lcom/google/android/maps/driveabout/model/ab;

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/maps/map/RoadGenerator;->point3:Lcom/google/android/maps/driveabout/model/ab;

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/maps/map/RoadGenerator;->point4:Lcom/google/android/maps/driveabout/model/ab;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/maps/map/RoadGenerator;->point5:Lcom/google/android/maps/driveabout/model/ab;

    move-object/from16 v16, v0

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/maps/map/RoadGenerator;->point6:Lcom/google/android/maps/driveabout/model/ab;

    move-object/from16 v17, v0

    .line 133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/glass/maps/map/RoadGenerator;->point7:Lcom/google/android/maps/driveabout/model/ab;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/maps/map/RoadGenerator;->point8:Lcom/google/android/maps/driveabout/model/ab;

    move-object/from16 v18, v0

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/maps/map/RoadGenerator;->point9:Lcom/google/android/maps/driveabout/model/ab;

    .line 138
    invoke-virtual/range {p5 .. p5}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->position()I

    move-result v2

    .line 141
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v11}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 142
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v12}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 147
    invoke-static {v12, v11, v14}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 148
    move/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 149
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 153
    invoke-static {v11, v5, v11}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 154
    move-object/from16 v0, v16

    invoke-static {v11, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 155
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v7, v8}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 156
    move-object/from16 v0, v16

    invoke-static {v11, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 157
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v7, v8}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 158
    invoke-static {v11, v5, v11}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 159
    move-object/from16 v0, v16

    invoke-static {v11, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 160
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v7, v8}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 161
    move-object/from16 v0, v16

    invoke-static {v11, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 162
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v7, v8}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 163
    sget-object v3, Lcom/google/glass/maps/map/RoadGenerator;->START_ENDCAP_TEXCOORDS:[F

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 167
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v7, v2, 0x2

    add-int/lit8 v8, v2, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->addQuadIndices(IIII)V

    .line 168
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v7, v2, 0x3

    add-int/lit8 v8, v2, 0x4

    add-int/lit8 v9, v2, 0x5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v7, v8, v9}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->addQuadIndices(IIII)V

    .line 169
    add-int/lit8 v8, v2, 0x4

    .line 178
    mul-float v19, p2, p2

    .line 179
    const/4 v2, 0x1

    move v9, v2

    :goto_1
    add-int/lit8 v2, v10, -0x1

    if-ge v9, v2, :cond_6

    .line 181
    add-int/lit8 v2, v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1, v13}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 182
    invoke-static {v13, v12, v15}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 183
    move/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 184
    invoke-static {v14, v15}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)J

    move-result-wide v2

    const-wide/16 v20, 0x0

    cmp-long v2, v2, v20

    if-lez v2, :cond_3

    const/4 v2, 0x1

    .line 187
    :goto_2
    const/4 v7, 0x1

    .line 188
    invoke-static/range {v16 .. v18}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 189
    invoke-static/range {v17 .. v18}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v3

    .line 193
    if-nez p8, :cond_8

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v20, v3, v20

    if-lez v20, :cond_8

    .line 195
    invoke-static {v14, v15}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_8

    .line 196
    div-float v3, v19, v3

    .line 197
    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 203
    move-object/from16 v0, v18

    invoke-static {v12, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 204
    move-object/from16 v0, v18

    invoke-static {v12, v0, v5}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 208
    if-eqz v2, :cond_4

    move-object v3, v4

    .line 209
    :goto_3
    invoke-static {v12, v11, v3}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v20

    const/high16 v21, 0x3f000000    # 0.5f

    cmpg-float v20, v20, v21

    if-gez v20, :cond_8

    .line 210
    invoke-static {v12, v13, v3}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v3

    const/high16 v20, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v20

    if-gez v3, :cond_8

    .line 215
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    .line 216
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v6

    .line 215
    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v3, v7, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 217
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    .line 218
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v6

    .line 217
    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v3, v7, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 219
    sget-object v3, Lcom/google/glass/maps/map/RoadGenerator;->NORMAL_TURN_TEXCOORDS:[F

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 220
    add-int/lit8 v3, v8, 0x1

    add-int/lit8 v7, v8, 0x2

    add-int/lit8 v20, v8, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v20

    invoke-virtual {v0, v8, v3, v7, v1}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->addQuadIndices(IIII)V

    .line 221
    add-int/lit8 v7, v8, 0x2

    .line 222
    const/4 v3, 0x0

    move/from16 v22, v3

    move v3, v7

    move/from16 v7, v22

    .line 225
    :goto_4
    if-eqz v7, :cond_7

    .line 228
    move-object/from16 v0, v16

    invoke-static {v12, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 229
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v6

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v7, v8, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 230
    move-object/from16 v0, v16

    invoke-static {v12, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 231
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v6

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v7, v8, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 232
    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v6

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v7, v8, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 233
    move-object/from16 v0, v17

    invoke-static {v12, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 234
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v6

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v7, v8, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 235
    move-object/from16 v0, v17

    invoke-static {v12, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 236
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v6

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v7, v8, v1}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 237
    sget-object v7, Lcom/google/glass/maps/map/RoadGenerator;->FALLBACK_TURN_TEXCOORDS:[F

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 238
    if-eqz v2, :cond_5

    .line 239
    add-int/lit8 v2, v3, 0x2

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v3, 0x4

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v7, v8}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->addTriangleIndices(III)V

    .line 243
    :goto_5
    add-int/lit8 v2, v3, 0x3

    add-int/lit8 v7, v3, 0x4

    add-int/lit8 v8, v3, 0x5

    add-int/lit8 v20, v3, 0x6

    move-object/from16 v0, p7

    move/from16 v1, v20

    invoke-virtual {v0, v2, v7, v8, v1}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->addQuadIndices(IIII)V

    .line 244
    add-int/lit8 v2, v3, 0x5

    .line 248
    :goto_6
    invoke-virtual/range {v16 .. v17}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 249
    invoke-virtual {v14, v15}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 250
    invoke-virtual {v11, v12}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 251
    invoke-virtual {v12, v13}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 179
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v8, v2

    goto/16 :goto_1

    .line 184
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_4
    move-object v3, v5

    .line 208
    goto/16 :goto_3

    .line 241
    :cond_5
    add-int/lit8 v2, v3, 0x0

    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v3, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v7, v8}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->addTriangleIndices(III)V

    goto :goto_5

    .line 255
    :cond_6
    move-object/from16 v0, v17

    invoke-static {v13, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 256
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v7}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 257
    move-object/from16 v0, v17

    invoke-static {v13, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 258
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v7}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 259
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 260
    invoke-static {v13, v5, v13}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 261
    move-object/from16 v0, v17

    invoke-static {v13, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->c(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 262
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v5}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 263
    move-object/from16 v0, v17

    invoke-static {v13, v0, v4}, Lcom/google/android/maps/driveabout/model/ae;->d(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    .line 264
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add(FFF)V

    .line 265
    sget-object v2, Lcom/google/glass/maps/map/RoadGenerator;->END_ENDCAP_TEXCOORDS:[F

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/google/glass/maps/opengl/GLBuffer$Float;->add([F)V

    .line 268
    add-int/lit8 v2, v8, 0x1

    add-int/lit8 v3, v8, 0x2

    add-int/lit8 v4, v8, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v8, v2, v3, v4}, Lcom/google/glass/maps/opengl/GLBuffer$UnsignedInt;->addQuadIndices(IIII)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto/16 :goto_6

    :cond_8
    move v3, v8

    goto/16 :goto_4
.end method
