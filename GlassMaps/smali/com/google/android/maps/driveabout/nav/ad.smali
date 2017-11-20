.class public final Lcom/google/android/maps/driveabout/nav/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

.field private final b:Lcom/google/android/maps/driveabout/nav/q;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ad;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 78
    iput-object v0, p0, Lcom/google/android/maps/driveabout/nav/ad;->b:Lcom/google/android/maps/driveabout/nav/q;

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Lcom/google/android/maps/driveabout/nav/q;)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/ad;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 83
    iput-object p2, p0, Lcom/google/android/maps/driveabout/nav/ad;->b:Lcom/google/android/maps/driveabout/nav/q;

    .line 84
    new-instance v0, Lcom/google/android/maps/driveabout/nav/af;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/nav/af;-><init>(Lcom/google/android/maps/driveabout/nav/ad;Lcom/google/android/maps/driveabout/nav/ae;)V

    invoke-virtual {p1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    .line 85
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Lcom/google/android/maps/driveabout/nav/ao;
    .locals 19

    .prologue
    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasBearing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    const/4 v0, 0x0

    .line 396
    :goto_0
    return-object v0

    .line 309
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getSpeed()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 310
    const-wide v2, 0x4051800000000000L    # 70.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 311
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :cond_2
    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3

    .line 313
    const-wide v0, 0x4072c00000000000L    # 300.0

    .line 316
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->g()Lcom/google/android/maps/driveabout/model/ao;

    move-result-object v7

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/model/ao;->e()I

    move-result v2

    if-nez v2, :cond_5

    .line 318
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :cond_5
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/model/ao;->a()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v9

    .line 321
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v10

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v2

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLongitude()D

    move-result-wide v4

    .line 322
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/model/ab;->a(DD)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v11

    .line 326
    new-instance v3, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 327
    const/4 v6, 0x0

    :goto_1
    add-int/lit8 v4, v10, -0x1

    if-ge v6, v4, :cond_10

    .line 328
    invoke-virtual {v9, v6}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v8

    .line 329
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v9, v4}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v13

    .line 331
    invoke-static {v8, v13, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v4

    float-to-double v4, v4

    .line 336
    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    cmpg-double v4, v4, v14

    if-gtz v4, :cond_f

    .line 337
    const-wide/16 v4, 0x0

    .line 341
    invoke-static {v8, v13}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v2

    float-to-double v13, v2

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getBearing()F

    move-result v2

    float-to-double v15, v2

    .line 343
    sub-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 345
    const-wide v15, 0x4056800000000000L    # 90.0

    cmpg-double v2, v13, v15

    if-ltz v2, :cond_6

    const-wide v15, 0x4070e00000000000L    # 270.0

    cmpl-double v2, v13, v15

    if-lez v2, :cond_9

    .line 346
    :cond_6
    const/4 v2, 0x1

    move v8, v2

    move v2, v6

    .line 356
    :goto_2
    const/4 v6, 0x1

    if-ne v8, v6, :cond_7

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/model/ao;->j()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    const/4 v6, -0x1

    if-ne v8, v6, :cond_a

    .line 357
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/model/ao;->k()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 358
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 350
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 351
    const/4 v2, -0x1

    move v8, v2

    move v2, v6

    goto :goto_2

    :cond_a
    move v7, v2

    move-object v2, v3

    move-wide/from16 v17, v4

    move-wide/from16 v5, v17

    move-object v4, v3

    .line 363
    :goto_3
    cmpg-double v13, v5, v0

    if-gez v13, :cond_d

    if-lez v8, :cond_c

    add-int/lit8 v13, v10, -0x1

    if-ge v7, v13, :cond_d

    .line 366
    :cond_b
    add-int v4, v7, v8

    invoke-virtual {v9, v4}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 367
    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v13

    float-to-double v13, v13

    div-double/2addr v13, v11

    .line 369
    add-double/2addr v5, v13

    .line 371
    add-int/2addr v7, v8

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    .line 372
    goto :goto_3

    .line 363
    :cond_c
    if-gtz v7, :cond_b

    .line 374
    :cond_d
    cmpl-double v7, v5, v0

    if-lez v7, :cond_11

    .line 376
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v7

    .line 375
    invoke-static {v7, v8}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v7

    sub-double v0, v5, v0

    mul-double/2addr v0, v7

    double-to-float v0, v0

    .line 377
    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/model/ab;->f(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 379
    invoke-static {v1, v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;FLcom/google/android/maps/driveabout/model/ab;)V

    .line 380
    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/model/ab;->f(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 382
    :goto_4
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 386
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 388
    :cond_e
    new-instance v1, Lcom/google/android/maps/driveabout/model/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->a()I

    move-result v2

    .line 389
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->c()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    .line 390
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/model/m;)V

    .line 391
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/ao;->a(I)V

    goto/16 :goto_0

    .line 327
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 395
    :cond_10
    const-string v0, "Router"

    const-string v1, "Location not mapped to a point on the road."

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    move-object v0, v2

    goto :goto_4
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/nav/ad;)Lcom/google/android/maps/driveabout/nav/q;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ad;->b:Lcom/google/android/maps/driveabout/nav/q;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/nav/f;)V
    .locals 4

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "Router"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Requesting new route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/google/android/maps/driveabout/g/g;

    const-string v1, "addRequest"

    invoke-direct {v0, v1, p1}, Lcom/google/android/maps/driveabout/g/g;-><init>(Ljava/lang/String;Lcom/google/googlenav/datarequest/d;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->b(Lcom/google/android/maps/driveabout/g/j;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ad;->a:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    .line 291
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v0, "Router"

    const-string v1, "Invalid request"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "Router"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/maps/driveabout/nav/ad;->b:Lcom/google/android/maps/driveabout/nav/q;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    goto :goto_0
.end method

.method private static b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)F
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getBearing()F

    move-result v0

    .line 408
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method private static c(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)F
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getSpeed()F

    move-result v0

    .line 420
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;
    .locals 9

    .prologue
    .line 206
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->l()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/model/m;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const/4 v0, 0x0

    .line 211
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x4

    if-ne p3, v1, :cond_3

    .line 213
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v1, v0

    .line 219
    :goto_0
    const-wide/16 v2, 0x0

    .line 220
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->i()Lcom/google/android/maps/driveabout/nav/aa;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->a()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v5

    if-ne v5, p2, :cond_1

    .line 222
    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/android/maps/driveabout/nav/aa;)D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aa;->d()D

    move-result-wide v5

    add-double/2addr v2, v5

    .line 225
    :cond_1
    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    .line 227
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/maps/driveabout/model/ab;->a(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    .line 225
    invoke-virtual {p2, v2, v3}, Lcom/google/android/maps/driveabout/nav/w;->c(D)Ljava/util/Collection;

    move-result-object v0

    .line 228
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 229
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/w;->j()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v2, Lcom/google/android/maps/driveabout/nav/h;

    .line 232
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v3

    invoke-direct {v2, v0, v3, p3}, Lcom/google/android/maps/driveabout/nav/h;-><init>([Lcom/google/android/maps/driveabout/nav/ao;II)V

    .line 234
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/ad;->b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)F

    move-result v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/ad;->c(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/android/maps/driveabout/nav/h;->a(FF)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v2

    .line 235
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/nav/h;->a(Z)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v0

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/h;->a(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v0

    .line 237
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/w;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/h;->a(I)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v0

    .line 238
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/w;->z()[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/h;->a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/h;->a()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    .line 239
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 240
    return-object v0

    .line 235
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;II[Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/f;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    move v0, v1

    .line 130
    :goto_0
    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/google/android/maps/driveabout/nav/ao;

    .line 132
    new-instance v4, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->l()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/model/m;)V

    aput-object v4, v3, v2

    .line 133
    array-length v4, p2

    invoke-static {p2, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    new-instance v4, Lcom/google/android/maps/driveabout/nav/h;

    invoke-direct {v4, v3, p3, p4}, Lcom/google/android/maps/driveabout/nav/h;-><init>([Lcom/google/android/maps/driveabout/nav/ao;II)V

    .line 138
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->c()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/nav/h;->a(Z)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v1

    .line 139
    invoke-virtual {v1, p5}, Lcom/google/android/maps/driveabout/nav/h;->a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v1

    .line 140
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->ALT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/nav/h;->b(I)Lcom/google/android/maps/driveabout/nav/h;

    .line 143
    :cond_0
    if-nez v0, :cond_1

    .line 144
    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/ad;->b(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)F

    move-result v0

    invoke-static {p1}, Lcom/google/android/maps/driveabout/nav/ad;->c(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/nav/h;->a(FF)Lcom/google/android/maps/driveabout/nav/h;

    .line 146
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/h;->a()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 148
    return-object v0

    :cond_2
    move v0, v2

    .line 128
    goto :goto_0

    :cond_3
    move v1, v2

    .line 138
    goto :goto_1
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;I)Lcom/google/android/maps/driveabout/nav/f;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 254
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->s()[Lcom/google/android/maps/driveabout/nav/aq;

    move-result-object v1

    .line 255
    const/4 v0, 0x0

    .line 256
    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/aq;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    aget-object v0, v1, v4

    .line 260
    :cond_0
    new-instance v2, Lcom/google/android/maps/driveabout/nav/h;

    .line 261
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->b()I

    move-result v3

    invoke-direct {v2, v1, v3, p2}, Lcom/google/android/maps/driveabout/nav/h;-><init>([Lcom/google/android/maps/driveabout/nav/ao;II)V

    .line 262
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->c()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->d()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/maps/driveabout/nav/h;->a(FF)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v1

    .line 263
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/nav/h;->a(Z)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v1

    .line 264
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/nav/h;->a(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/h;->a(I)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v0

    .line 266
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/w;->z()[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/h;->a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v0

    .line 269
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->ALT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p2, v5, :cond_1

    .line 270
    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/nav/h;->b(I)Lcom/google/android/maps/driveabout/nav/h;

    .line 275
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/h;->a()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    .line 276
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 277
    return-object v0

    .line 272
    :cond_1
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/nav/h;->b(I)Lcom/google/android/maps/driveabout/nav/h;

    goto :goto_0
.end method

.method public final a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/f;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/ao;

    .line 185
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    aput-object v1, v0, v2

    .line 186
    const/4 v1, 0x1

    aget-object v2, p1, v2

    aput-object v2, v0, v1

    .line 188
    new-instance v0, Lcom/google/android/maps/driveabout/nav/h;

    const/4 v1, 0x7

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/nav/h;-><init>([Lcom/google/android/maps/driveabout/nav/ao;II)V

    .line 190
    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/nav/h;->a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/h;->a()Lcom/google/android/maps/driveabout/nav/f;

    move-result-object v0

    .line 191
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/nav/ad;->a(Lcom/google/android/maps/driveabout/nav/f;)V

    .line 192
    return-object v0
.end method
