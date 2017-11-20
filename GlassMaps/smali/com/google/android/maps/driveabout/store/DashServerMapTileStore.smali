.class public abstract Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;
.super Lcom/google/android/maps/driveabout/store/i;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field private volatile g:Z

.field private final h:I

.field private final i:Ljava/util/List;

.field private final j:I

.field private final k:I


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/List;IIZLjava/util/Locale;ZLjava/io/File;)V
    .locals 11

    .prologue
    .line 207
    new-instance v4, Lcom/google/android/maps/driveabout/store/br;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->ROAD_GRAPH:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    if-ne p3, v1, :cond_1

    .line 209
    invoke-static {}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->h()I

    move-result v1

    :goto_0
    invoke-direct {v4, v1}, Lcom/google/android/maps/driveabout/store/br;-><init>(I)V

    .line 210
    move/from16 v0, p10

    invoke-static {p2, p3, v0}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Z)Lcom/google/android/maps/driveabout/store/v;

    move-result-object v5

    .line 211
    invoke-static {p3}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    .line 207
    invoke-direct/range {v1 .. v10}, Lcom/google/android/maps/driveabout/store/i;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bs;Lcom/google/android/maps/driveabout/store/v;IZILjava/util/Locale;Ljava/io/File;)V

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->g:Z

    .line 214
    iput-object p3, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    .line 215
    iput p4, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->h:I

    .line 216
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->i:Ljava/util/List;

    .line 217
    move/from16 v0, p6

    iput v0, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->k:I

    .line 222
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xb

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->j:I

    .line 230
    :goto_1
    return-void

    .line 209
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->i()I

    move-result v1

    goto :goto_0

    .line 228
    :cond_2
    invoke-static {p4}, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->j:I

    goto :goto_1
.end method

.method private static a(I)I
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 361
    const/4 v0, 0x0

    move v1, p0

    .line 362
    :goto_0
    if-le v1, v2, :cond_0

    .line 363
    shr-int/lit8 v1, v1, 0x1

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_0
    :goto_1
    if-ge v1, v2, :cond_1

    .line 367
    shl-int/lit8 v1, v1, 0x1

    .line 368
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 370
    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->h:I

    return v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)I
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->SATELLITE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    if-ne p0, v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Z)Lcom/google/android/maps/driveabout/store/v;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x1000

    const/16 v2, 0x800

    const/4 v0, -0x1

    .line 300
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 304
    sget-object v4, Lcom/google/android/maps/driveabout/store/d;->a:[I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object v0, v3

    .line 341
    :goto_0
    return-object v0

    .line 308
    :pswitch_0
    new-instance v2, Lcom/google/android/maps/driveabout/store/bo;

    if-eqz p2, :cond_0

    :goto_1
    new-instance v1, Lcom/google/android/maps/driveabout/store/h;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/store/h;-><init>(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/maps/driveabout/store/bo;-><init>(Ljava/lang/String;ILcom/google/android/maps/driveabout/store/bq;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 313
    :pswitch_1
    new-instance v1, Lcom/google/android/maps/driveabout/store/bo;

    if-eqz p2, :cond_1

    :goto_2
    new-instance v2, Lcom/google/android/maps/driveabout/store/h;

    invoke-direct {v2, p1}, Lcom/google/android/maps/driveabout/store/h;-><init>(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/maps/driveabout/store/bo;-><init>(Ljava/lang/String;ILcom/google/android/maps/driveabout/store/bq;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    goto :goto_2

    .line 318
    :pswitch_2
    new-instance v1, Lcom/google/android/maps/driveabout/store/bo;

    if-eqz p2, :cond_2

    :goto_3
    new-instance v2, Lcom/google/android/maps/driveabout/store/g;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/store/g;-><init>()V

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/maps/driveabout/store/bo;-><init>(Ljava/lang/String;ILcom/google/android/maps/driveabout/store/bq;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    .line 325
    :pswitch_3
    new-instance v1, Lcom/google/android/maps/driveabout/store/bo;

    if-eqz p2, :cond_3

    :goto_4
    new-instance v2, Lcom/google/android/maps/driveabout/store/f;

    invoke-direct {v2, p1}, Lcom/google/android/maps/driveabout/store/f;-><init>(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/maps/driveabout/store/bo;-><init>(Ljava/lang/String;ILcom/google/android/maps/driveabout/store/bq;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    .line 330
    :pswitch_4
    new-instance v2, Lcom/google/android/maps/driveabout/store/bo;

    if-eqz p2, :cond_4

    :goto_5
    new-instance v1, Lcom/google/android/maps/driveabout/store/h;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/store/h;-><init>(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/maps/driveabout/store/bo;-><init>(Ljava/lang/String;ILcom/google/android/maps/driveabout/store/bq;)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    move-object v0, v3

    .line 341
    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->k:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->j:I

    return v0
.end method

.method private static h()I
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->d()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    .line 241
    const/16 v1, 0x80

    mul-int/lit8 v0, v0, 0x12

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static i()I
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->d()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    .line 253
    const/16 v1, 0x100

    mul-int/lit8 v0, v0, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final b()Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/DashServerMapTileStore;->a:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    return-object v0
.end method
