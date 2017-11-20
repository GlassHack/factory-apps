.class public final Lcom/google/android/location/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/google/android/location/p/f;

.field private final c:J

.field private final d:I

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/p/f;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/ah;-><init>(Lcom/google/android/location/p/f;B)V

    .line 95
    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/p/f;B)V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/android/location/ah;->b:Lcom/google/android/location/p/f;

    .line 100
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/location/ah;->d:I

    .line 101
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/android/location/ah;->c:J

    .line 102
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/location/ah;->e:J

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/ah;->a:Z

    .line 104
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/google/android/location/p/f;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    .line 444
    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/p/f;->a(Lcom/google/android/location/p/f;Ljava/util/List;)V

    goto :goto_0

    .line 446
    :cond_0
    return-object v1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 12

    .prologue
    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    iget-object v1, p0, Lcom/google/android/location/ah;->b:Lcom/google/android/location/p/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/aj;

    .line 423
    iget-wide v2, p0, Lcom/google/android/location/ah;->c:J

    const-wide/16 v4, 0x4

    div-long v4, v2, v4

    .line 424
    iget-object v0, v0, Lcom/google/android/location/aj;->a:Lcom/google/android/location/p/f;

    .line 425
    iget-wide v2, v0, Lcom/google/android/location/p/f;->a:J

    iget-object v7, p0, Lcom/google/android/location/ah;->b:Lcom/google/android/location/p/f;

    iget-wide v8, v7, Lcom/google/android/location/p/f;->a:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_1

    iget-wide v2, v0, Lcom/google/android/location/p/f;->a:J

    .line 428
    :goto_1
    iget-wide v8, v0, Lcom/google/android/location/p/f;->b:J

    iget-object v7, p0, Lcom/google/android/location/ah;->b:Lcom/google/android/location/p/f;

    iget-wide v10, v7, Lcom/google/android/location/p/f;->b:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    iget-wide v4, v0, Lcom/google/android/location/p/f;->b:J

    .line 430
    :goto_2
    cmp-long v0, v4, v2

    if-gtz v0, :cond_3

    .line 432
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "InOutdoorTransitionTimeFinder"

    const-string v2, "Block too small to substract."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_1
    iget-wide v2, v0, Lcom/google/android/location/p/f;->a:J

    add-long/2addr v2, v4

    goto :goto_1

    .line 428
    :cond_2
    iget-wide v8, v0, Lcom/google/android/location/p/f;->b:J

    sub-long v4, v8, v4

    goto :goto_2

    .line 435
    :cond_3
    new-instance v0, Lcom/google/android/location/p/f;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/location/p/f;-><init>(JJ)V

    invoke-static {v1, v0}, Lcom/google/android/location/ah;->a(Ljava/util/List;Lcom/google/android/location/p/f;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, v0

    .line 436
    goto :goto_0

    .line 437
    :cond_4
    invoke-static {v1}, Lcom/google/android/location/ah;->c(Ljava/util/List;)V

    .line 438
    return-object v1
.end method

.method private a(Ljava/util/SortedMap;)Ljava/util/List;
    .locals 14

    .prologue
    .line 355
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 357
    iget-boolean v0, p0, Lcom/google/android/location/ah;->a:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-static {v8}, Lcom/google/android/location/ah;->b(Ljava/util/List;)V

    :cond_0
    move-object v0, v8

    .line 409
    :goto_0
    return-object v0

    .line 362
    :cond_1
    const-wide/16 v2, -0x1

    .line 363
    const/4 v6, 0x0

    .line 364
    const/4 v0, 0x0

    .line 365
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 366
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/location/ai;

    .line 367
    const-wide/16 v10, -0x1

    cmp-long v1, v2, v10

    if-nez v1, :cond_4

    .line 368
    sget-object v1, Lcom/google/android/location/ai;->a:Lcom/google/android/location/ai;

    if-eq v7, v1, :cond_2

    sget-object v1, Lcom/google/android/location/ai;->c:Lcom/google/android/location/ai;

    if-ne v7, v1, :cond_3

    .line 371
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/ai;

    move-object v6, v1

    .line 393
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v4, v0

    .line 394
    goto :goto_1

    .line 375
    :cond_4
    if-eq v7, v6, :cond_3

    .line 377
    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 379
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v10, v2

    iget-wide v12, p0, Lcom/google/android/location/ah;->c:J

    add-long/2addr v10, v12

    iget-wide v12, p0, Lcom/google/android/location/ah;->e:J

    cmp-long v1, v10, v12

    if-ltz v1, :cond_6

    .line 380
    new-instance v1, Lcom/google/android/location/aj;

    iget-object v5, p0, Lcom/google/android/location/ah;->b:Lcom/google/android/location/p/f;

    iget-wide v10, v5, Lcom/google/android/location/p/f;->b:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v12, p0, Lcom/google/android/location/ah;->c:J

    add-long/2addr v4, v12

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/aj;-><init>(JJLcom/google/android/location/ai;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_6
    sget-object v1, Lcom/google/android/location/ai;->a:Lcom/google/android/location/ai;

    if-eq v7, v1, :cond_7

    sget-object v1, Lcom/google/android/location/ai;->c:Lcom/google/android/location/ai;

    if-ne v7, v1, :cond_8

    .line 385
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/ai;

    move-object v6, v1

    goto :goto_2

    .line 388
    :cond_8
    const-wide/16 v2, -0x1

    .line 389
    const/4 v6, 0x0

    goto :goto_2

    .line 397
    :cond_9
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_a

    .line 398
    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 399
    if-eqz v0, :cond_a

    .line 400
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iget-wide v10, p0, Lcom/google/android/location/ah;->c:J

    add-long/2addr v4, v10

    iget-wide v10, p0, Lcom/google/android/location/ah;->e:J

    cmp-long v1, v4, v10

    if-ltz v1, :cond_a

    .line 401
    new-instance v1, Lcom/google/android/location/aj;

    iget-object v4, p0, Lcom/google/android/location/ah;->b:Lcom/google/android/location/p/f;

    iget-wide v4, v4, Lcom/google/android/location/p/f;->b:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/location/ah;->c:J

    add-long/2addr v10, v12

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/aj;-><init>(JJLcom/google/android/location/ai;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/location/ah;->a:Z

    if-eqz v0, :cond_b

    .line 407
    invoke-static {v8}, Lcom/google/android/location/ah;->b(Ljava/util/List;)V

    :cond_b
    move-object v0, v8

    .line 409
    goto/16 :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;)Ljava/util/TreeMap;
    .locals 12

    .prologue
    .line 158
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 159
    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v6

    .line 160
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_11

    .line 161
    const/4 v0, 0x2

    invoke-virtual {p3, v0, v4}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v7

    .line 163
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 164
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    .line 167
    :goto_1
    if-nez v3, :cond_5

    .line 168
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "InOutdoorTransitionTimeFinder"

    const-string v1, "Invalid entry."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 164
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "InOutdoorTransitionTimeFinder"

    const-string v1, "Could not find matched timezone."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object v3, v0

    goto :goto_1

    .line 173
    :cond_5
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 175
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/location/ah;->a:Z

    if-eqz v0, :cond_1

    .line 176
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "InOutdoorTransitionTimeFinder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping weekends: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/ah;->b:Lcom/google/android/location/p/f;

    invoke-virtual {v0, v3}, Lcom/google/android/location/p/f;->c(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 181
    iget-boolean v0, p0, Lcom/google/android/location/ah;->a:Z

    if-eqz v0, :cond_1

    .line 182
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "InOutdoorTransitionTimeFinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in target time span."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 186
    :cond_8
    invoke-static {v3}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;)J

    move-result-wide v0

    .line 187
    iget-object v2, p0, Lcom/google/android/location/ah;->b:Lcom/google/android/location/p/f;

    iget-wide v8, v2, Lcom/google/android/location/p/f;->a:J

    sub-long v8, v0, v8

    iget-wide v10, p0, Lcom/google/android/location/ah;->c:J

    rem-long/2addr v8, v10

    sub-long v8, v0, v8

    .line 189
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/ak;

    .line 190
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lcom/google/g/a/b/b/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    move v2, v1

    .line 191
    :goto_3
    if-nez v0, :cond_b

    .line 192
    new-instance v1, Lcom/google/android/location/ak;

    if-eqz v2, :cond_a

    const/4 v0, 0x1

    :goto_4
    invoke-direct {v1, p0, v0}, Lcom/google/android/location/ak;-><init>(Lcom/google/android/location/ah;I)V

    .line 193
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :goto_5
    iget-boolean v0, p0, Lcom/google/android/location/ah;->a:Z

    if-eqz v0, :cond_1

    .line 201
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/a;->b(I)Z

    move-result v0

    .line 203
    :goto_6
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v8, "InOutdoorTransitionTimeFinder"

    const-string v9, "%s: isIndoor:%s, isStill:%s, derived indoor:%s"

    const/4 v1, 0x4

    new-array v10, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    aput-object v3, v10, v1

    const/4 v3, 0x1

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lcom/google/g/a/b/b/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "T"

    :goto_7
    aput-object v1, v10, v3

    const/4 v1, 0x2

    if-eqz v0, :cond_f

    const-string v0, "T"

    :goto_8
    aput-object v0, v10, v1

    const/4 v1, 0x3

    if-eqz v2, :cond_10

    const-string v0, "T"

    :goto_9
    aput-object v0, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 190
    :cond_9
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Lcom/google/g/a/b/b/a;->b(I)Z

    move-result v1

    move v2, v1

    goto :goto_3

    .line 192
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 195
    :cond_b
    if-eqz v2, :cond_c

    .line 196
    iget v1, v0, Lcom/google/android/location/ak;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/location/ak;->a:I

    .line 198
    :cond_c
    iget v1, v0, Lcom/google/android/location/ak;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/location/ak;->b:I

    goto :goto_5

    .line 201
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 203
    :cond_e
    const-string v1, "F"

    goto :goto_7

    :cond_f
    const-string v0, "F"

    goto :goto_8

    :cond_10
    const-string v0, "F"

    goto :goto_9

    .line 210
    :cond_11
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 211
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/ak;

    iget v4, v0, Lcom/google/android/location/ak;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, v0, Lcom/google/android/location/ak;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 214
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/location/ah;->a:Z

    if-eqz v0, :cond_13

    .line 215
    invoke-direct {p0, v1}, Lcom/google/android/location/ah;->c(Ljava/util/SortedMap;)V

    .line 217
    :cond_13
    return-object v1
.end method

.method private a(Ljava/util/TreeMap;)Ljava/util/TreeMap;
    .locals 12

    .prologue
    .line 280
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 281
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/f/ai;

    iget-object v1, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v6, v1

    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ai;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    .line 285
    sget-object v0, Lcom/google/android/location/ai;->f:Lcom/google/android/location/ai;

    .line 286
    iget v1, p0, Lcom/google/android/location/ah;->d:I

    int-to-long v10, v1

    cmp-long v1, v8, v10

    if-ltz v1, :cond_3

    .line 287
    long-to-double v0, v8

    div-double v0, v6, v0

    double-to-float v0, v0

    .line 288
    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 289
    sget-object v0, Lcom/google/android/location/ai;->a:Lcom/google/android/location/ai;

    .line 303
    :cond_0
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    :cond_1
    const v1, 0x3e4ccccc    # 0.19999999f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 291
    sget-object v0, Lcom/google/android/location/ai;->c:Lcom/google/android/location/ai;

    goto :goto_1

    .line 293
    :cond_2
    sget-object v0, Lcom/google/android/location/ai;->e:Lcom/google/android/location/ai;

    goto :goto_1

    .line 295
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_0

    .line 296
    long-to-double v8, v8

    cmpl-double v1, v6, v8

    if-nez v1, :cond_4

    .line 298
    sget-object v0, Lcom/google/android/location/ai;->b:Lcom/google/android/location/ai;

    goto :goto_1

    .line 299
    :cond_4
    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-nez v1, :cond_0

    .line 300
    sget-object v0, Lcom/google/android/location/ai;->d:Lcom/google/android/location/ai;

    goto :goto_1

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/ah;->b:Lcom/google/android/location/p/f;

    iget-wide v0, v0, Lcom/google/android/location/p/f;->a:J

    :goto_2
    iget-object v3, p0, Lcom/google/android/location/ah;->b:Lcom/google/android/location/p/f;

    iget-wide v4, v3, Lcom/google/android/location/p/f;->b:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_7

    .line 309
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 310
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lcom/google/android/location/ai;->f:Lcom/google/android/location/ai;

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_6
    iget-wide v4, p0, Lcom/google/android/location/ah;->c:J

    add-long/2addr v0, v4

    goto :goto_2

    .line 313
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/location/ah;->a:Z

    if-eqz v0, :cond_8

    .line 314
    invoke-direct {p0, v2}, Lcom/google/android/location/ah;->b(Ljava/util/SortedMap;)V

    .line 316
    :cond_8
    invoke-static {v2}, Lcom/google/android/location/ah;->b(Ljava/util/TreeMap;)V

    .line 317
    iget-boolean v0, p0, Lcom/google/android/location/ah;->a:Z

    if-eqz v0, :cond_a

    .line 318
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_9

    const-string v0, "InOutdoorTransitionTimeFinder"

    const-string v1, "Correcting short low confidence time spans."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_9
    invoke-direct {p0, v2}, Lcom/google/android/location/ah;->b(Ljava/util/SortedMap;)V

    .line 321
    :cond_a
    return-object v2
.end method

.method private static b(Ljava/util/List;)V
    .locals 7

    .prologue
    .line 475
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "InOutdoorTransitionTimeFinder"

    const-string v1, "Block info:"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/aj;

    .line 477
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "InOutdoorTransitionTimeFinder"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/location/aj;->a:Lcom/google/android/location/p/f;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v0, v0, Lcom/google/android/location/aj;->b:Lcom/google/android/location/ai;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 480
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "InOutdoorTransitionTimeFinder"

    const-string v1, "None"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_3
    return-void
.end method

.method private b(Ljava/util/SortedMap;)V
    .locals 12

    .prologue
    .line 485
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "InOutdoorTransitionTimeFinder"

    const-string v1, "Indoor results:"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 487
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v3, "InOutdoorTransitionTimeFinder"

    const-string v4, "%s ~ %s: %s"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/location/p/h;->b(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/location/ah;->c:J

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/google/android/location/p/h;->b(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_2
    return-void
.end method

.method private static b(Ljava/util/TreeMap;)V
    .locals 5

    .prologue
    .line 330
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 331
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/ai;->b:Lcom/google/android/location/ai;

    if-ne v2, v3, :cond_3

    .line 332
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 333
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/TreeMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 334
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/google/android/location/ai;->a:Lcom/google/android/location/ai;

    if-ne v2, v4, :cond_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/ai;->a:Lcom/google/android/location/ai;

    if-ne v2, v3, :cond_0

    .line 336
    :cond_2
    sget-object v2, Lcom/google/android/location/ai;->a:Lcom/google/android/location/ai;

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/ai;->d:Lcom/google/android/location/ai;

    if-ne v2, v3, :cond_0

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/TreeMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 341
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/google/android/location/ai;->c:Lcom/google/android/location/ai;

    if-ne v2, v4, :cond_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/ai;->c:Lcom/google/android/location/ai;

    if-ne v2, v3, :cond_0

    .line 343
    :cond_5
    sget-object v2, Lcom/google/android/location/ai;->c:Lcom/google/android/location/ai;

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 347
    :cond_6
    return-void
.end method

.method private static c(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 505
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "InOutdoorTransitionTimeFinder"

    const-string v1, "TimeSpans for possible in/outdoor transitions:"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    .line 507
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    const-string v2, "InOutdoorTransitionTimeFinder"

    invoke-virtual {v0}, Lcom/google/android/location/p/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_2
    return-void
.end method

.method private c(Ljava/util/SortedMap;)V
    .locals 12

    .prologue
    .line 493
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "InOutdoorTransitionTimeFinder"

    const-string v1, "Aggregated stats:"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 495
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/f/ai;

    iget-object v1, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 496
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/f/ai;

    iget-object v1, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 497
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 498
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "InOutdoorTransitionTimeFinder"

    const-string v6, "%s ~ %s: IN: %d, OUT: %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Lcom/google/android/location/p/h;->b(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v10, p0, Lcom/google/android/location/ah;->c:J

    add-long/2addr v4, v10

    invoke-static {v4, v5}, Lcom/google/android/location/p/h;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/a;)Ljava/util/Map;
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 114
    invoke-virtual {p1, v5}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v5, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v5}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v6}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 116
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v2, v1, p1}, Lcom/google/android/location/ah;->a(Ljava/util/Map;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;)Ljava/util/TreeMap;

    move-result-object v1

    .line 122
    invoke-direct {p0, v1}, Lcom/google/android/location/ah;->a(Ljava/util/TreeMap;)Ljava/util/TreeMap;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1}, Lcom/google/android/location/ah;->a(Ljava/util/SortedMap;)Ljava/util/List;

    move-result-object v5

    .line 125
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    const-string v6, "InOutdoorTransitionTimeFinder"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "Final result for time zone: "

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    invoke-direct {p0, v5}, Lcom/google/android/location/ah;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 129
    :cond_3
    return-object v3
.end method
