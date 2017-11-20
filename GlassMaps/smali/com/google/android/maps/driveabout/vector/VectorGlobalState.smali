.class public final Lcom/google/android/maps/driveabout/vector/VectorGlobalState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final b:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final c:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field public static final d:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field private static e:Z

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static volatile h:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->SATELLITE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TRAFFIC:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->LAYER:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->ROAD_GRAPH:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->a:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    .line 145
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->SATELLITE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TRAFFIC:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TERRAIN:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->SATELLITE_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TERRAIN_BICYCLING:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TRANSIT:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->INAKA:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->LABELS_ONLY:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->b:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    .line 167
    sput-boolean v3, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->e:Z

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->g:Ljava/lang/String;

    .line 181
    const/4 v0, -0x1

    sput v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->h:I

    .line 204
    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->a:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->c:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    .line 205
    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->b:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    sput-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->d:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    .line 207
    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 357
    const/16 v0, 0xa0

    if-le p0, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Ljava/lang/String;ILcom/google/googlenav/common/i;)V
    .locals 8

    .prologue
    .line 228
    const-class v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    monitor-exit v2

    return-void

    .line 232
    :cond_0
    :try_start_1
    sput-object p2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->g:Ljava/lang/String;

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 235
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Lcom/google/googlenav/common/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/b;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-static {v0}, Lcom/google/googlenav/common/b;->a(Lcom/google/googlenav/common/b;)V

    .line 240
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/b;->a()V

    .line 241
    invoke-static {p4}, Lcom/google/googlenav/common/h;->a(Lcom/google/googlenav/common/i;)V

    .line 243
    const-string v0, "activity"

    .line 244
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->h:I

    .line 247
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->c(Landroid/content/Context;)V

    .line 250
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 251
    if-nez v0, :cond_2

    .line 253
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->b(Landroid/content/Context;)Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 254
    new-instance v1, Lcom/google/android/maps/driveabout/util/k;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/util/k;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    .line 256
    const-string v1, "VectorGlobalState"

    const-string v5, "Created DataRequestDispatcher"

    invoke-static {v1, v5}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    .line 258
    invoke-virtual {v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->p()V

    .line 262
    invoke-static {p0}, Lcom/google/android/maps/driveabout/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 263
    invoke-static {v1, v5}, Lcom/google/android/maps/driveabout/store/be;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;)Lcom/google/android/maps/driveabout/store/be;

    .line 266
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 268
    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    .line 270
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/store/bu;->a(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 277
    :try_start_3
    invoke-static {p1, v1, v6, v5, p0}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->a([Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V

    .line 280
    :cond_4
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    invoke-static {v1, v5, v6}, Lcom/google/android/maps/driveabout/store/ar;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/io/File;Ljava/util/Locale;)Lcom/google/android/maps/driveabout/store/ar;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_5

    .line 284
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/store/ar;->d()V

    .line 285
    invoke-static {v0}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/store/ar;)Lcom/google/android/maps/driveabout/d/c;

    .line 289
    :cond_5
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 292
    new-instance v0, Lcom/google/android/maps/driveabout/g/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/g/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->a(Lcom/google/android/maps/driveabout/g/f;)V

    .line 295
    :cond_6
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->f:Z

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 297
    const-string v5, "VectorGlobalState"

    sub-long/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Initialization took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    :try_start_4
    const-string v7, "Could not load encryption key"

    invoke-static {v7, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized a([Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V
    .locals 24

    .prologue
    .line 384
    const-class v22, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;

    monitor-enter v22

    .line 385
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 384
    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->a(I)I

    move-result v12

    .line 386
    const-string v3, "GMM"

    sget-object v4, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 388
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    const/4 v3, 0x0

    move/from16 v21, v3

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    aget-object v5, p0, v21

    .line 389
    sget-object v3, Lcom/google/android/maps/driveabout/vector/c;->a:[I

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 480
    :cond_0
    iget-boolean v3, v5, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->mIsModifier:Z

    if-eqz v3, :cond_3

    .line 481
    new-instance v13, Lcom/google/android/maps/driveabout/store/by;

    .line 482
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/b;->a(Landroid/content/res/Resources;I)I

    move-result v16

    const/16 v18, 0x0

    sget-object v20, Lcom/google/android/maps/driveabout/store/by;->g:Lcom/google/android/maps/driveabout/store/ca;

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v17, p2

    move-object/from16 v19, p3

    invoke-direct/range {v13 .. v20}, Lcom/google/android/maps/driveabout/store/by;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/Locale;ZLjava/io/File;Lcom/google/android/maps/driveabout/store/ca;)V

    .line 492
    :goto_1
    invoke-virtual {v13}, Lcom/google/android/maps/driveabout/store/cb;->c()V

    .line 493
    invoke-static {v5, v13}, Lcom/google/android/maps/driveabout/store/bx;->a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/store/bv;)V

    .line 388
    :goto_2
    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v3

    goto :goto_0

    .line 392
    :pswitch_0
    new-instance v3, Lcom/google/android/maps/driveabout/store/cb;

    .line 393
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v6, 0x100

    invoke-static {v4, v6}, Lcom/google/android/maps/driveabout/vector/b;->a(Landroid/content/res/Resources;I)I

    move-result v6

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/android/maps/driveabout/store/cb;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/Locale;ZLjava/io/File;)V

    .line 397
    if-eqz v8, :cond_1

    .line 398
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/google/googlenav/h;->a(B)Lcom/google/googlenav/h;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/maps/driveabout/store/bv;->a(Lcom/google/googlenav/h;)V

    .line 400
    :cond_1
    invoke-interface {v3}, Lcom/google/android/maps/driveabout/store/bv;->c()V

    .line 401
    invoke-static {v5, v3}, Lcom/google/android/maps/driveabout/store/bx;->a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/store/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 384
    :catchall_0
    move-exception v3

    monitor-exit v22

    throw v3

    .line 405
    :pswitch_1
    :try_start_1
    new-instance v9, Lcom/google/android/maps/driveabout/store/aj;

    .line 407
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/b;->b(Landroid/content/res/Resources;I)I

    move-result v13

    move-object/from16 v10, p1

    move-object v11, v5

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v9 .. v15}, Lcom/google/android/maps/driveabout/store/aj;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;IILjava/util/Locale;Ljava/io/File;)V

    .line 410
    invoke-interface {v9}, Lcom/google/android/maps/driveabout/store/bv;->c()V

    .line 411
    invoke-static {v5, v9}, Lcom/google/android/maps/driveabout/store/bx;->a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/store/bv;)V

    goto :goto_2

    .line 418
    :pswitch_2
    new-instance v9, Lcom/google/android/maps/driveabout/store/aj;

    .line 419
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/b;->a(Landroid/content/res/Resources;I)I

    move-result v13

    move-object/from16 v10, p1

    move-object v11, v5

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v9 .. v15}, Lcom/google/android/maps/driveabout/store/aj;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;IILjava/util/Locale;Ljava/io/File;)V

    .line 422
    invoke-interface {v9}, Lcom/google/android/maps/driveabout/store/bv;->c()V

    .line 423
    invoke-static {v5, v9}, Lcom/google/android/maps/driveabout/store/bx;->a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/store/bv;)V

    goto :goto_2

    .line 428
    :pswitch_3
    new-instance v13, Lcom/google/android/maps/driveabout/store/cb;

    .line 429
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/b;->a(Landroid/content/res/Resources;I)I

    move-result v16

    const/16 v18, 0x0

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v17, p2

    move-object/from16 v19, p3

    invoke-direct/range {v13 .. v19}, Lcom/google/android/maps/driveabout/store/cb;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/Locale;ZLjava/io/File;)V

    .line 432
    sget-object v3, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->TRAFFIC:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    if-ne v5, v3, :cond_2

    .line 433
    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v13, v3, v4}, Lcom/google/android/maps/driveabout/store/cb;->a(J)V

    .line 436
    :cond_2
    invoke-virtual {v13}, Lcom/google/android/maps/driveabout/store/cb;->c()V

    .line 437
    invoke-static {v5, v13}, Lcom/google/android/maps/driveabout/store/bx;->a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/store/bv;)V

    goto/16 :goto_2

    .line 443
    :pswitch_4
    new-instance v3, Lcom/google/android/maps/driveabout/store/au;

    .line 444
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v6, 0x100

    invoke-static {v4, v6}, Lcom/google/android/maps/driveabout/vector/b;->a(Landroid/content/res/Resources;I)I

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/google/android/maps/driveabout/store/au;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;ILjava/util/Locale;Ljava/io/File;)V

    .line 447
    invoke-interface {v3}, Lcom/google/android/maps/driveabout/store/bv;->c()V

    .line 448
    invoke-static {v5, v3}, Lcom/google/android/maps/driveabout/store/bx;->a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/store/bv;)V

    goto/16 :goto_2

    .line 454
    :pswitch_5
    new-instance v3, Lcom/google/android/maps/driveabout/store/bk;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v3, v0, v5, v1, v2}, Lcom/google/android/maps/driveabout/store/bk;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Ljava/util/Locale;Ljava/io/File;)V

    .line 456
    invoke-interface {v3}, Lcom/google/android/maps/driveabout/store/bv;->c()V

    .line 457
    invoke-static {v5, v3}, Lcom/google/android/maps/driveabout/store/bx;->a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/store/bv;)V

    goto/16 :goto_2

    .line 461
    :pswitch_6
    new-instance v13, Lcom/google/android/maps/driveabout/store/cb;

    .line 462
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/b;->a(Landroid/content/res/Resources;I)I

    move-result v16

    const/16 v18, 0x1

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v17, p2

    move-object/from16 v19, p3

    invoke-direct/range {v13 .. v19}, Lcom/google/android/maps/driveabout/store/cb;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/Locale;ZLjava/io/File;)V

    .line 465
    invoke-virtual {v13}, Lcom/google/android/maps/driveabout/store/cb;->c()V

    .line 466
    invoke-static {v5, v13}, Lcom/google/android/maps/driveabout/store/bx;->a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Lcom/google/android/maps/driveabout/store/bv;)V

    goto/16 :goto_2

    .line 469
    :pswitch_7
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->f()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 487
    :cond_3
    new-instance v13, Lcom/google/android/maps/driveabout/store/cb;

    .line 488
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/b;->a(Landroid/content/res/Resources;I)I

    move-result v16

    const/16 v18, 0x0

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v17, p2

    move-object/from16 v19, p3

    invoke-direct/range {v13 .. v19}, Lcom/google/android/maps/driveabout/store/cb;-><init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;ILjava/util/Locale;ZLjava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 497
    :cond_4
    monitor-exit v22

    return-void

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 330
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->f:Z

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 309
    int-to-float v0, v0

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 312
    iget v1, v2, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v3, v1

    cmpl-double v1, v3, v5

    if-gtz v1, :cond_0

    iget v1, v2, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v1, v0

    .line 313
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v3, v1

    cmpl-double v1, v3, v5

    if-lez v1, :cond_1

    :cond_0
    move v1, v0

    .line 322
    :goto_0
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float v1, v3, v1

    .line 323
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float v0, v2, v0

    .line 324
    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 317
    :cond_1
    iget v1, v2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 318
    iget v0, v2, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_0

    .line 324
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 6

    .prologue
    .line 622
    sget-object v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->g:Ljava/lang/String;

    .line 624
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/util/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 626
    invoke-static {v0}, Lcom/google/googlenav/b/c;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V

    .line 628
    const-string v1, "VectorGlobalState"

    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Server:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-object v0
.end method

.method public static declared-synchronized b()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 503
    const-class v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 533
    :goto_0
    monitor-exit v2

    return-void

    .line 507
    :cond_0
    :try_start_1
    const-string v1, "VectorGlobalState"

    const-string v3, "destroy"

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->values()[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 509
    invoke-static {v5}, Lcom/google/android/maps/driveabout/store/bx;->b(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :try_start_2
    invoke-static {v5}, Lcom/google/android/maps/driveabout/store/bx;->c(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/store/bv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/store/bv;->d()V

    .line 512
    invoke-static {v5}, Lcom/google/android/maps/driveabout/store/bx;->a(Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 513
    :catch_0
    move-exception v0

    .line 514
    :try_start_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1a

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Could not stop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tile store"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 519
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/google/android/maps/driveabout/store/ar;->b()Lcom/google/android/maps/driveabout/store/ar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 520
    invoke-static {}, Lcom/google/android/maps/driveabout/store/ar;->c()V

    .line 522
    :cond_3
    invoke-static {}, Lcom/google/android/maps/driveabout/store/be;->b()V

    .line 524
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_4

    .line 526
    invoke-virtual {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->o()V

    .line 527
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b()V

    .line 530
    :cond_4
    invoke-static {}, Lcom/google/googlenav/common/h;->c()V

    .line 532
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 561
    const/4 v0, -0x2

    return v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 659
    invoke-static {p0}, Lcom/google/android/maps/driveabout/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 660
    invoke-static {p0}, Lcom/google/android/maps/driveabout/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 661
    invoke-static {p0}, Lcom/google/android/maps/driveabout/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 662
    return-void
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 646
    sget v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->h:I

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 667
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->e:Z

    return v0
.end method

.method private static f()Z
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->c()Z

    move-result v0

    return v0
.end method
