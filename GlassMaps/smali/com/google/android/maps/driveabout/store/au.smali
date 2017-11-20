.class public final Lcom/google/android/maps/driveabout/store/au;
.super Lcom/google/android/maps/driveabout/store/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ILjava/util/Locale;Ljava/io/File;)V
    .locals 10

    .prologue
    .line 109
    const-string v2, "lts"

    new-instance v3, Lcom/google/android/maps/driveabout/store/al;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Lcom/google/android/maps/driveabout/store/al;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/store/i;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;Lcom/google/android/maps/driveabout/store/bs;Lcom/google/android/maps/driveabout/store/v;IZILjava/util/Locale;Ljava/io/File;)V

    .line 111
    return-void
.end method

.method static a(Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/model/aq;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/j;
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 277
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    .line 278
    if-nez v2, :cond_0

    .line 279
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-object v0

    .line 285
    :cond_1
    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 286
    const/16 v2, 0x1f

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const/16 v2, 0x1f

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 292
    invoke-static {v2}, Lcom/google/android/maps/driveabout/util/f;->b(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 293
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/model/aw;->e()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/model/am;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {p0, v5, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 299
    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-static {v0, v6}, Lcom/google/android/maps/driveabout/store/au;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v6

    .line 301
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/store/au;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v7

    .line 302
    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/store/au;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v8

    .line 304
    invoke-virtual {v0, v9}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    invoke-virtual {v0, v9}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    .line 306
    :goto_1
    const-string v2, ""

    .line 307
    const/16 v9, 0x22

    invoke-virtual {v3, v9}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 308
    const/16 v9, 0x22

    invoke-virtual {v3, v9}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v3

    .line 309
    if-ltz v3, :cond_2

    .line 312
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    :cond_2
    new-array v3, v1, [I

    .line 316
    invoke-static {}, Lcom/google/android/maps/driveabout/model/ac;->h()Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v9

    .line 317
    invoke-virtual {v9, p2}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v9

    .line 318
    invoke-virtual {v9, v4}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v4

    .line 319
    invoke-virtual {v4, v6}, Lcom/google/android/maps/driveabout/model/ad;->d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v4

    .line 320
    invoke-virtual {v4, v2}, Lcom/google/android/maps/driveabout/model/ad;->e(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v2

    .line 321
    invoke-virtual {v2, v7}, Lcom/google/android/maps/driveabout/model/ad;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v2

    .line 322
    invoke-static {v5}, Lcom/google/android/maps/driveabout/model/k;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/k;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v2

    .line 323
    invoke-virtual {v2, v8}, Lcom/google/android/maps/driveabout/model/ad;->g(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v2

    .line 324
    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/aq;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v2

    .line 325
    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/model/ad;->b(I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v0

    .line 326
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ad;->e(I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/model/ad;->a([I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ad;->a()Lcom/google/android/maps/driveabout/model/ac;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 305
    goto :goto_1
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/aw;Z)Lcom/google/android/maps/driveabout/model/av;
    .locals 2

    .prologue
    .line 123
    instance-of v0, p1, Lcom/google/android/maps/driveabout/store/aw;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/model/aw;Z)Lcom/google/android/maps/driveabout/model/av;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;)V
    .locals 2

    .prologue
    .line 115
    instance-of v0, p1, Lcom/google/android/maps/driveabout/store/aw;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/store/i;->a(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/store/bt;)V

    .line 119
    return-void
.end method

.method public final b()Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->LAYER:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    return-object v0
.end method

.method protected final g()Lcom/google/android/maps/driveabout/store/m;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/maps/driveabout/store/av;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/store/au;->d:Lcom/google/googlenav/common/a;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/store/av;-><init>(Lcom/google/googlenav/common/a;)V

    return-object v0
.end method
