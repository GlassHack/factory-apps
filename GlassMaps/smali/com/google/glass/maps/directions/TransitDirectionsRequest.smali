.class public Lcom/google/glass/maps/directions/TransitDirectionsRequest;
.super Lcom/google/googlenav/datarequest/a;
.source "SourceFile"


# static fields
.field public static final DIRECTION_REQUEST_ID:I = 0x1c

.field private static final MIN_DISTANCE_METERS:D = 2.0

.field private static final REQUEST_STATUS_NOT_SENT:I = -0x1

.field private static final SAVE_RESPONSE:Z = false

.field private static final TAG:Ljava/lang/String; = "TransitDirectionsRequest"

.field private static final VIEWPORT_SPAN_E6:I = 0x186a0


# instance fields
.field private final mActionType:I

.field private mContext:Landroid/content/Context;

.field private mDestination:Lcom/google/android/maps/driveabout/nav/ao;

.field private final mMaxTripCount:I

.field private mRefinements:[Lcom/google/android/maps/driveabout/nav/ao;

.field private final mRequestOptions:[Lcom/google/android/maps/driveabout/nav/b;

.field private mResponse:Lcom/google/googlenav/common/io/b/a;

.field private mResponseOptions:[Lcom/google/android/maps/driveabout/nav/b;

.field private mStatus:I

.field private final mTravelMode:I

.field private mTrips:[Lcom/google/glass/maps/directions/Trip;

.field private final mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    .line 129
    iput-object p1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 131
    iput p3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mTravelMode:I

    .line 132
    iput p5, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mActionType:I

    .line 133
    iput p4, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mMaxTripCount:I

    .line 134
    iput-object p6, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mRequestOptions:[Lcom/google/android/maps/driveabout/nav/b;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;Lcom/google/glass/maps/directions/TransitDirectionsRequest$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p6}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;-><init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/glass/maps/directions/TransitDirectionsRequest;I)I
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    return p1
.end method

.method private adjustStatusHack()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 732
    iget v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    .line 736
    if-lt v1, v3, :cond_0

    .line 742
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_2

    .line 743
    invoke-direct {p0, v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->getWaypointFeedbackStatus(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 751
    :cond_2
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->getWaypointFeedbackStatus(I)I

    move-result v0

    .line 752
    if-ne v0, v3, :cond_0

    .line 754
    iput v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    goto :goto_0
.end method

.method static checkRequestValidity([Lcom/google/android/maps/driveabout/nav/ao;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 185
    array-length v2, p0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 189
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v2

    .line 190
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v3

    .line 191
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/android/maps/driveabout/model/ab;->b(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 193
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/android/maps/driveabout/model/ab;->b(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v3

    .line 194
    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v5

    div-double v2, v3, v5

    .line 195
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 200
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static collapseWalkingSteps(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 543
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 546
    const/4 v1, 0x0

    .line 547
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/directions/Step;

    .line 548
    invoke-virtual {v0}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 549
    if-nez v3, :cond_0

    move v1, v2

    :goto_1
    move v3, v1

    move-object v1, v0

    .line 573
    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/glass/maps/directions/Step;->collapse(Lcom/google/glass/maps/directions/Step;)V

    move-object v0, v1

    move v1, v3

    goto :goto_1

    .line 558
    :cond_1
    if-eqz v3, :cond_2

    .line 560
    invoke-virtual {v0}, Lcom/google/glass/maps/directions/Step;->isDestination()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 561
    sget v3, Lcom/google/glass/maps/R$string;->walk_to:I

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/glass/maps/directions/Step;->arrivalAddress:Ljava/lang/String;

    aput-object v8, v7, v4

    .line 562
    invoke-virtual {p0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/glass/maps/directions/Step;->instructions:Ljava/lang/String;

    .line 567
    :goto_2
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 570
    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move v1, v3

    goto :goto_1

    .line 564
    :cond_3
    sget v3, Lcom/google/glass/maps/R$string;->walk_to:I

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/glass/maps/directions/Step;->departureAddress:Ljava/lang/String;

    aput-object v8, v7, v4

    .line 565
    invoke-virtual {p0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/glass/maps/directions/Step;->instructions:Ljava/lang/String;

    goto :goto_2

    .line 574
    :cond_4
    return-object v5
.end method

.method private static extractLastWaypointRefinements(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 583
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    .line 584
    if-nez v0, :cond_1

    .line 585
    new-array v0, v1, [Lcom/google/android/maps/driveabout/nav/ao;

    .line 597
    :cond_0
    return-object v0

    .line 587
    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 589
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    .line 591
    new-array v0, v3, [Lcom/google/android/maps/driveabout/nav/ao;

    .line 592
    :goto_0
    if-ge v1, v3, :cond_0

    .line 593
    invoke-virtual {v2, v7, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 595
    new-instance v5, Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    aput-object v5, v0, v1

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static extractOptions(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/b;
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/4 v2, 0x0

    .line 628
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    .line 629
    new-array v0, v3, [Lcom/google/android/maps/driveabout/nav/b;

    move v1, v2

    .line 630
    :goto_0
    if-ge v1, v3, :cond_0

    .line 631
    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 632
    invoke-static {v4}, Lcom/google/android/maps/driveabout/nav/b;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v5

    aput-object v5, v0, v1

    .line 633
    aget-object v5, v0, v1

    if-nez v5, :cond_1

    .line 636
    const-string v0, "TransitDirectionsRequest"

    const/4 v1, 0x1

    .line 637
    invoke-virtual {v4, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Option with no value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-array v0, v2, [Lcom/google/android/maps/driveabout/nav/b;

    .line 641
    :cond_0
    return-object v0

    .line 630
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static extractRecommendedDistanceUnits(Lcom/google/googlenav/common/io/b/a;)I
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 427
    const/16 v1, 0xd

    invoke-static {p0, v1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v1

    .line 432
    if-le v1, v2, :cond_1

    .line 437
    :goto_0
    if-ne v0, v2, :cond_0

    const/16 v1, 0x17

    .line 438
    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/b/f;->e(Lcom/google/googlenav/common/io/b/a;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const/4 v0, 0x3

    .line 443
    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static extractStepsAndGeoPoints(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Ljava/util/ArrayList;[Lcom/google/glass/maps/directions/TransitAgencyInfo;)[Lcom/google/glass/maps/directions/Step;
    .locals 16

    .prologue
    .line 454
    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v8

    .line 458
    const-wide/16 v3, 0x0

    .line 460
    const/4 v2, 0x0

    .line 461
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_a

    .line 462
    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v9

    .line 463
    const/16 v1, 0xa

    invoke-virtual {v9, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v10

    .line 465
    if-nez v2, :cond_0

    .line 466
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v1

    .line 469
    :cond_0
    invoke-static {v9}, Lcom/google/android/maps/driveabout/nav/w;->a(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/model/m;

    move-result-object v5

    .line 470
    if-eqz v5, :cond_1

    .line 471
    array-length v7, v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_1

    aget-object v11, v5, v1

    .line 472
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 477
    :cond_1
    const/4 v5, -0x1

    .line 479
    const/4 v1, 0x0

    move v7, v1

    :goto_2
    if-ge v7, v10, :cond_8

    .line 480
    new-instance v11, Lcom/google/glass/maps/directions/Step;

    const/16 v1, 0xa

    invoke-virtual {v9, v1, v7}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-direct {v11, v1, v0}, Lcom/google/glass/maps/directions/Step;-><init>(Lcom/google/googlenav/common/io/b/a;[Lcom/google/glass/maps/directions/TransitAgencyInfo;)V

    .line 483
    iget-boolean v1, v11, Lcom/google/glass/maps/directions/Step;->showInInstruction:Z

    if-nez v1, :cond_3

    .line 479
    :cond_2
    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2

    .line 487
    :cond_3
    iget-wide v12, v11, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-lez v1, :cond_7

    .line 489
    iget-wide v3, v11, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    .line 496
    :cond_4
    :goto_4
    const-wide/16 v12, 0x0

    cmp-long v1, v3, v12

    if-lez v1, :cond_5

    .line 497
    iget-wide v12, v11, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    add-long/2addr v3, v12

    .line 501
    :cond_5
    iget-object v1, v11, Lcom/google/glass/maps/directions/Step;->instructions:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v11}, Lcom/google/glass/maps/directions/Step;->isDestination()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    :cond_6
    iget-wide v12, v11, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-gtz v1, :cond_c

    .line 503
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 505
    :goto_5
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v1

    goto :goto_3

    .line 490
    :cond_7
    const-wide/16 v12, 0x0

    cmp-long v1, v3, v12

    if-lez v1, :cond_4

    .line 492
    iput-wide v3, v11, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    goto :goto_4

    .line 513
    :cond_8
    if-ltz v5, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v7, v5, 0x1

    if-le v1, v7, :cond_9

    .line 515
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/directions/Step;

    iget-wide v3, v1, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    .line 518
    :goto_6
    if-ltz v5, :cond_9

    .line 519
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/directions/Step;

    .line 520
    iget-wide v9, v1, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    sub-long/2addr v3, v9

    iput-wide v3, v1, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    .line 521
    iget-wide v3, v1, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    .line 518
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 461
    :cond_9
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    .line 528
    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_b

    .line 529
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    .line 530
    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 531
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/maps/directions/Step;

    .line 532
    iput-wide v3, v1, Lcom/google/glass/maps/directions/Step;->departureTimeSec:J

    .line 533
    iget-wide v6, v1, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    add-long/2addr v3, v6

    .line 534
    goto :goto_7

    .line 538
    :cond_b
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->collapseWalkingSteps(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 539
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/glass/maps/directions/Step;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/glass/maps/directions/Step;

    return-object v1

    :cond_c
    move v1, v5

    goto :goto_5
.end method

.method private extractTransitAgencyInfo(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/glass/maps/directions/TransitAgencyInfo;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0xc

    .line 364
    new-array v0, v1, [Lcom/google/glass/maps/directions/TransitAgencyInfo;

    .line 365
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 367
    new-array v0, v2, [Lcom/google/glass/maps/directions/TransitAgencyInfo;

    .line 368
    :goto_0
    if-ge v1, v2, :cond_0

    .line 369
    invoke-virtual {p1, v8, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 370
    new-instance v4, Lcom/google/glass/maps/directions/TransitAgencyInfo;

    const/4 v5, 0x1

    .line 371
    invoke-static {v3, v5}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 372
    invoke-static {v3, v6}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 373
    invoke-static {v3, v7}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lcom/google/glass/maps/directions/TransitAgencyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_0
    return-object v0
.end method

.method private static extractTrips(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/glass/maps/directions/TransitAgencyInfo;)[Lcom/google/glass/maps/directions/Trip;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 407
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 409
    const/4 v0, 0x1

    if-ge v2, v0, :cond_1

    .line 410
    const/4 v0, 0x0

    .line 423
    :cond_0
    return-object v0

    .line 413
    :cond_1
    new-array v0, v2, [Lcom/google/glass/maps/directions/Trip;

    .line 415
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 416
    invoke-virtual {p1, v7, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 417
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-static {p0, v3, v4, p3}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->extractStepsAndGeoPoints(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Ljava/util/ArrayList;[Lcom/google/glass/maps/directions/TransitAgencyInfo;)[Lcom/google/glass/maps/directions/Step;

    move-result-object v3

    .line 419
    invoke-static {p1}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->extractRecommendedDistanceUnits(Lcom/google/googlenav/common/io/b/a;)I

    move-result v5

    .line 420
    new-instance v6, Lcom/google/glass/maps/directions/Trip;

    invoke-direct {v6, p2, v3, v4, v5}, Lcom/google/glass/maps/directions/Trip;-><init>(Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/glass/maps/directions/Step;Ljava/util/ArrayList;I)V

    aput-object v6, v0, v1

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static extractWaypoint(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/ao;
    .locals 4

    .prologue
    const/16 v3, 0xf

    const/4 v1, 0x5

    .line 605
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    .line 606
    if-lez v0, :cond_1

    .line 607
    add-int/lit8 v0, v0, -0x1

    .line 608
    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 609
    if-eqz v1, :cond_1

    .line 610
    const/4 v0, 0x7

    const/4 v2, 0x0

    .line 611
    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 612
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v0, v2, p1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    .line 614
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/ao;->a(Ljava/lang/String;)V

    .line 621
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getClientCapabilities()Lcom/google/googlenav/common/io/b/a;
    .locals 3

    .prologue
    .line 716
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/d;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 717
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    .line 719
    return-object v0
.end method

.method private static getIconRequest()Lcom/google/googlenav/common/io/b/a;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 702
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/j/b/a/b/i;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 703
    const/4 v0, 0x2

    invoke-static {}, Lcom/google/glass/maps/directions/IconsCache;->getVersion()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 705
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v5}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 707
    invoke-static {}, Lcom/google/glass/maps/directions/IconsCache;->getCachedIconIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 708
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v5, v3, v4}, Lcom/google/googlenav/common/io/b/a;->a(IJ)V

    goto :goto_0

    .line 711
    :cond_0
    const/4 v0, 0x1

    invoke-static {}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->getClientCapabilities()Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 712
    return-object v1
.end method

.method private static getResponseFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 290
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/transit/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 294
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    return-object v1
.end method

.method private getWaypointFeedbackStatus(I)I
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const/4 v1, 0x6

    .line 761
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    return v0
.end method

.method private handleResponse()V
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    .line 338
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->extractOptions(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponseOptions:[Lcom/google/android/maps/driveabout/nav/b;

    .line 341
    invoke-direct {p0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->adjustStatusHack()V

    .line 343
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v1, v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->extractWaypoint(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mDestination:Lcom/google/android/maps/driveabout/nav/ao;

    .line 346
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->extractTransitAgencyInfo(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/glass/maps/directions/TransitAgencyInfo;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    iget-object v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mDestination:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-static {v1, v2, v3, v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->extractTrips(Landroid/content/Context;Lcom/google/googlenav/common/io/b/a;Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/glass/maps/directions/TransitAgencyInfo;)[Lcom/google/glass/maps/directions/Trip;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mTrips:[Lcom/google/glass/maps/directions/Trip;

    .line 348
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    invoke-direct {p0, v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->updateIconCache(Lcom/google/googlenav/common/io/b/a;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->isRefinementRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    invoke-static {v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->extractLastWaypointRefinements(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mRefinements:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 354
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mRefinements:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mRefinements:[Lcom/google/android/maps/driveabout/nav/ao;

    goto :goto_0

    .line 359
    :cond_2
    const-string v0, "TransitDirectionsRequest"

    iget v1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Response status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static printResponseProto(Ljava/lang/String;Lcom/google/googlenav/common/io/b/a;)V
    .locals 17

    .prologue
    .line 785
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 787
    const-string v1, "Status: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->responseStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    const-string v1, "\nMode:(1) "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 790
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    .line 791
    const-string v2, "\nWaypointFeedback: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 793
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v5

    .line 794
    const-string v1, "\nTrip Count: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 795
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 797
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_1b

    .line 798
    const-string v1, "  Trip "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 799
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    .line 800
    const/16 v1, 0x14

    invoke-virtual {v6, v1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    const-string v1, "\n    Summary: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x14

    .line 802
    invoke-virtual {v6, v2, v3}, Lcom/google/googlenav/common/io/b/a;->f(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    :cond_0
    const/16 v1, 0x15

    invoke-virtual {v6, v1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 805
    const-string v1, "\n    DetailLevel: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x15

    .line 806
    invoke-virtual {v6, v2, v3}, Lcom/google/googlenav/common/io/b/a;->c(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 808
    :cond_1
    const/16 v1, 0x1e

    invoke-virtual {v6, v1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 809
    const-string v1, "\n    NavInstructionExcluded: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x1e

    .line 810
    invoke-virtual {v6, v2, v3}, Lcom/google/googlenav/common/io/b/a;->b(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 812
    :cond_2
    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 814
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v2, v7

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 817
    const/16 v1, 0x9

    invoke-virtual {v6, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v7

    .line 818
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v7, :cond_1a

    .line 819
    const/16 v1, 0x9

    invoke-virtual {v6, v1, v2}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v8

    .line 820
    const-string v1, "      Route "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 821
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 822
    const-string v1, "\n-     Distance(m): "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v9, 0x1

    .line 823
    invoke-virtual {v8, v9, v2}, Lcom/google/googlenav/common/io/b/a;->d(II)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 825
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 826
    const-string v1, "\n-     Duration(min): "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v9, 0x2

    .line 827
    invoke-virtual {v8, v9, v2}, Lcom/google/googlenav/common/io/b/a;->d(II)J

    move-result-wide v9

    long-to-float v9, v9

    const/high16 v10, 0x42700000    # 60.0f

    div-float/2addr v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 829
    :cond_4
    const/16 v1, 0x11

    invoke-virtual {v8, v1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 830
    const-string v1, "\n-     OptimisticDuration(min): "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v9, 0x11

    .line 831
    invoke-virtual {v8, v9, v2}, Lcom/google/googlenav/common/io/b/a;->d(II)J

    move-result-wide v9

    long-to-float v9, v9

    const/high16 v10, 0x42700000    # 60.0f

    div-float/2addr v9, v10

    .line 830
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 833
    :cond_5
    const/4 v1, 0x3

    invoke-virtual {v8, v1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 834
    const-string v1, "\n-     TrafficDelay(min): "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v9, 0x3

    .line 835
    invoke-virtual {v8, v9, v2}, Lcom/google/googlenav/common/io/b/a;->d(II)J

    move-result-wide v9

    long-to-float v9, v9

    const/high16 v10, 0x42700000    # 60.0f

    div-float/2addr v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 837
    :cond_6
    const/4 v1, 0x6

    invoke-virtual {v8, v1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 838
    const-string v1, "\n-     Cost: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v9, 0x6

    invoke-virtual {v8, v9, v2}, Lcom/google/googlenav/common/io/b/a;->f(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 840
    :cond_7
    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 843
    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v9

    .line 844
    const-string v1, "\n-     Steps: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 845
    const-string v1, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    move-object/from16 v0, p0

    invoke-static {v0, v1, v10}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 846
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 847
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_19

    .line 848
    const-string v10, "-     Step "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 849
    const/16 v10, 0xa

    invoke-virtual {v8, v10, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v10

    .line 851
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 852
    const-string v11, "\n-         Instruction: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/4 v12, 0x2

    .line 853
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 855
    :cond_8
    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 856
    const-string v11, "\n-         Distance(m): "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/4 v12, 0x3

    .line 857
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 859
    :cond_9
    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 860
    const-string v11, "\n-         Duration(min): "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/4 v12, 0x4

    .line 861
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v12

    long-to-float v12, v12

    const/high16 v13, 0x42700000    # 60.0f

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 863
    :cond_a
    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 864
    const-string v11, "\n-         DepartureAddress: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/4 v12, 0x6

    .line 865
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 867
    :cond_b
    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 868
    const-string v11, "\n-         DepartureInterval(min): "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0xa

    .line 869
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v12

    long-to-float v12, v12

    const/high16 v13, 0x42700000    # 60.0f

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 871
    :cond_c
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 872
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v11

    .line 873
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 874
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 875
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v13

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    iput-wide v13, v12, Landroid/text/format/Time;->gmtoff:J

    .line 877
    :cond_d
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 878
    const-string v11, "\n-         DepartureTime: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v12}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 880
    :cond_e
    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 881
    const-string v11, "\n-         ArrivalAddress: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/4 v12, 0x7

    .line 882
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    :cond_f
    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 885
    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v11

    .line 886
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 887
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 888
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v13

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    iput-wide v13, v12, Landroid/text/format/Time;->gmtoff:J

    .line 890
    :cond_10
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 891
    const-string v11, "\n-         ArrivalTime: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v12}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 893
    :cond_11
    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 894
    const-string v11, "\n-         Direction: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0xb

    .line 895
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 897
    :cond_12
    const/16 v11, 0x6b

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 898
    const-string v11, "\n-         Intermediate Stops: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0x6b

    .line 899
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 901
    :cond_13
    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 902
    const-string v11, "\n-         Icon Id: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0xc

    .line 903
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 905
    :cond_14
    const/16 v11, 0x66

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 906
    const-string v11, "\n-         Line Color: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0x66

    .line 907
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 909
    :cond_15
    const/16 v11, 0x6c

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 910
    const-string v11, "\n-         Text Color: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0x6c

    .line 911
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 913
    :cond_16
    const/16 v11, 0x17

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 914
    const-string v11, "\n-         Show Line Name: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0x17

    .line 915
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 917
    :cond_17
    const/16 v11, 0x18

    invoke-virtual {v10, v11}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 918
    const-string v11, "\n-         Show Icon: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const/16 v12, 0x18

    .line 919
    invoke-virtual {v10, v12}, Lcom/google/googlenav/common/io/b/a;->b(I)Z

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 921
    :cond_18
    const-string v10, "%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 818
    :cond_19
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 925
    :cond_1a
    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 928
    :cond_1b
    const-string v1, " ICONS: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 930
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 931
    return-void
.end method

.method private static responseStatusToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 938
    const-string v0, "unknown"

    .line 939
    sparse-switch p0, :sswitch_data_0

    .line 977
    :goto_0
    return-object v0

    .line 941
    :sswitch_0
    const-string v0, "SUCCESS_CODE"

    goto :goto_0

    .line 945
    :sswitch_1
    const-string v0, "BAD_WAYPOINT_COUNT"

    goto :goto_0

    .line 949
    :sswitch_2
    const-string v0, "WAYPOINT_REFINEMENT"

    goto :goto_0

    .line 953
    :sswitch_3
    const-string v0, "WAYPOINT_FAILURE"

    goto :goto_0

    .line 957
    :sswitch_4
    const-string v0, "NO_ROUTES_FOUND"

    goto :goto_0

    .line 961
    :sswitch_5
    const-string v0, "NO_ROUTING_COVERAGE"

    goto :goto_0

    .line 965
    :sswitch_6
    const-string v0, "NO_TRIPS_ON_GIVEN_DATE"

    goto :goto_0

    .line 969
    :sswitch_7
    const-string v0, "NAVIGATION_NOT_ALLOWED"

    goto :goto_0

    .line 973
    :sswitch_8
    const-string v0, "REQUEST_BLOCKED"

    goto :goto_0

    .line 939
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x64 -> :sswitch_8
    .end sparse-switch
.end method

.method private saveResponse(Lcom/google/googlenav/common/io/b/a;)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    .line 279
    :try_start_0
    invoke-static {v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 281
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 282
    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    .line 283
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v1, "TransitDirectionsRequest"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateIconCache(Lcom/google/googlenav/common/io/b/a;)V
    .locals 8

    .prologue
    const/16 v2, 0x11

    const/16 v1, 0xa

    const/4 v7, 0x1

    .line 381
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    :cond_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 388
    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/maps/directions/IconsCache;->setVersion(I)V

    .line 392
    :cond_2
    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 394
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 395
    invoke-virtual {v1, v7, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 396
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v4

    .line 398
    invoke-static {v4, v5}, Lcom/google/glass/maps/directions/IconsCache;->hasIcon(J)Z

    move-result v6

    if-nez v6, :cond_3

    .line 399
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v3

    .line 400
    invoke-static {v3, v4, v5}, Lcom/google/glass/maps/directions/IconsCache;->setIcon([BJ)V

    .line 394
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDestination()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mDestination:Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public getRefinements()[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mRefinements:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method getRequest()Lcom/google/googlenav/common/io/b/a;
    .locals 7

    .prologue
    const v6, 0x186a0

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 648
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/j/b/a/b/h;->c:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 649
    iget v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mTravelMode:I

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/b/a;->a(II)V

    move v0, v1

    .line 650
    :goto_0
    iget-object v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 651
    iget-object v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v3, v3, v0

    .line 652
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->i()Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 651
    invoke-virtual {v2, v5, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_0
    const/4 v0, 0x5

    iget v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mMaxTripCount:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 656
    iget v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mMaxTripCount:I

    if-le v0, v4, :cond_1

    .line 659
    const/16 v0, 0x16

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 661
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 663
    const/16 v0, 0xf

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 665
    const/16 v0, 0xb

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 666
    const/16 v0, 0x15

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 667
    const/16 v0, 0x10

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 668
    const/16 v0, 0x1d

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 669
    const/16 v0, 0x1f

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 670
    const/16 v0, 0x18

    iget v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mActionType:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 671
    const/16 v0, 0x2c

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 672
    const/16 v0, 0x1e

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 673
    const/16 v0, 0xc

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 674
    const/16 v0, 0x21

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/b/a;->a(IZ)V

    .line 679
    iget v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mActionType:I

    if-nez v0, :cond_2

    .line 680
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/j/b/a/b/l;->g:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 681
    iget-object v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v3, v3, v1

    .line 682
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/util/f;->b(Lcom/google/android/maps/driveabout/model/m;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 681
    invoke-virtual {v0, v4, v3}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 683
    invoke-virtual {v0, v5, v6}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 684
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 685
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 689
    :cond_2
    const/4 v0, 0x6

    invoke-static {}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->getIconRequest()Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/b/a;->b(ILcom/google/googlenav/common/io/b/a;)V

    .line 691
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mRequestOptions:[Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v0, :cond_3

    .line 692
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mRequestOptions:[Lcom/google/android/maps/driveabout/nav/b;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 693
    const/16 v5, 0xa

    .line 694
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/nav/b;->a()Lcom/google/googlenav/common/io/b/a;

    move-result-object v4

    .line 693
    invoke-virtual {v2, v5, v4}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 698
    :cond_3
    return-object v2
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x1c

    return v0
.end method

.method getResponse()Lcom/google/googlenav/common/io/b/a;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    return-object v0
.end method

.method public getTrips()[Lcom/google/glass/maps/directions/Trip;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mTrips:[Lcom/google/glass/maps/directions/Trip;

    return-object v0
.end method

.method public isNoRoutingCoverage()Z
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRefinementRequired()Z
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubmission()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readResponseData(Lcom/google/googlenav/common/io/b/a;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mResponse:Lcom/google/googlenav/common/io/b/a;

    .line 262
    invoke-direct {p0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->handleResponse()V

    .line 268
    return-void
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 3

    .prologue
    .line 304
    :try_start_0
    sget-object v0, Lcom/google/j/b/a/b/h;->d:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->readResponseData(Lcom/google/googlenav/common/io/b/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 320
    const/4 v0, 0x1

    return v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    const-string v1, "DA:TransitDirectionsRequest"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    const-string v1, "TransitDirectionsRequest: Handling request failed"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    throw v0

    .line 310
    :catch_1
    move-exception v0

    .line 313
    const-string v1, "TransitDirectionsRequest"

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    throw v0

    .line 315
    :catch_2
    move-exception v0

    .line 316
    const-string v1, "DA:TransitDirectionsRequest"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    const-string v1, "TransitDirectionsRequest: Parse failed"

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    throw v0
.end method

.method public statusString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    iget v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mStatus:I

    invoke-static {v0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->responseStatusToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 767
    const-string v0, " mode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mTravelMode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 768
    const-string v0, " action:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mActionType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    const-string v0, " waypoints: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 770
    :goto_0
    iget-object v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 771
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mWaypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_0
    const-string v0, " maxTripCount:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mMaxTripCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 774
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mRequestOptions:[Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v0, :cond_1

    .line 775
    iget-object v0, p0, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->mRequestOptions:[Lcom/google/android/maps/driveabout/nav/b;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 776
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 779
    :cond_1
    const-string v0, " ] ]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/glass/maps/directions/TransitDirectionsRequest;->getRequest()Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/b/a;)V

    .line 329
    return-void
.end method
