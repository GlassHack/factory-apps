.class public Lcom/google/android/location/h/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/bc;


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/google/android/location/h/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/h/aa;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    return-void
.end method

.method private static a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)D
    .locals 12

    .prologue
    const-wide v8, 0x416312d000000000L    # 1.0E7

    .line 551
    iget v0, p0, Lcom/google/android/location/f/ak;->d:I

    invoke-static {v0}, Lcom/google/android/location/h/d;->b(I)D

    move-result-wide v0

    .line 552
    iget v2, p1, Lcom/google/android/location/f/ak;->d:I

    invoke-static {v2}, Lcom/google/android/location/h/d;->b(I)D

    move-result-wide v2

    .line 554
    iget v4, p1, Lcom/google/android/location/f/ak;->e:I

    int-to-double v4, v4

    div-double/2addr v4, v8

    iget v6, p0, Lcom/google/android/location/f/ak;->e:I

    int-to-double v6, v6

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 555
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    .line 556
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sub-double v0, v8, v0

    .line 559
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(IIID)Lcom/google/android/location/f/ai;
    .locals 13

    .prologue
    .line 575
    int-to-double v0, p2

    const-wide v2, 0x4158554c00000000L    # 6378800.0

    div-double/2addr v0, v2

    .line 577
    invoke-static {p0}, Lcom/google/android/location/h/d;->b(I)D

    move-result-wide v2

    .line 578
    invoke-static {p1}, Lcom/google/android/location/h/d;->b(I)D

    move-result-wide v4

    .line 581
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    .line 585
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v2, v10

    sub-double/2addr v0, v2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    .line 589
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v2

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v0, v2

    .line 591
    new-instance v2, Lcom/google/android/location/f/ai;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/location/f/ai;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static a(Lcom/google/android/location/f/ai;Lcom/google/android/location/f/ai;)Lcom/google/android/location/f/ai;
    .locals 14

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 529
    iget-object v0, p1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 530
    iget-object v0, p0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 531
    iget-object v0, p1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 532
    sub-double/2addr v0, v6

    .line 534
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    .line 535
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    .line 536
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-double/2addr v4, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double/2addr v12, v8

    mul-double/2addr v10, v12

    mul-double v12, v0, v0

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 539
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    add-double/2addr v2, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    add-double/2addr v0, v6

    .line 542
    new-instance v2, Lcom/google/android/location/f/ai;

    const-wide v6, -0x4006de04abbbd2e8L    # -1.5707963267948966

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/location/f/ai;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static a()Lcom/google/android/location/f/bd;
    .locals 5

    .prologue
    .line 163
    new-instance v0, Lcom/google/android/location/f/bd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/location/f/bd;->a:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/f/bd;-><init>(ILcom/google/android/location/f/ak;ILjava/util/Set;)V

    return-object v0
.end method

.method private static a(Ljava/util/Set;Lcom/google/android/location/h/ad;)Ljava/util/List;
    .locals 3

    .prologue
    .line 408
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 409
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/h/ad;

    invoke-static {v1, p1}, Lcom/google/android/location/h/aa;->a(Lcom/google/android/location/h/ad;Lcom/google/android/location/h/ad;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/location/f/ak;Ljava/util/Map;)Ljava/util/Set;
    .locals 5

    .prologue
    .line 244
    sget-object v2, Lcom/google/android/location/f/bd;->a:Ljava/util/Set;

    .line 245
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/f/ak;

    .line 247
    invoke-static {v1, p0}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)I

    move-result v1

    const/16 v4, 0xfa

    if-le v1, v4, :cond_2

    .line 248
    sget-object v1, Lcom/google/android/location/f/bd;->a:Ljava/util/Set;

    if-ne v2, v1, :cond_1

    .line 249
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 252
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v2, v1

    .line 254
    goto :goto_0

    .line 255
    :cond_0
    return-object v2

    :cond_1
    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_2
.end method

.method private static a(Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/h/ad;

    .line 177
    iput v1, v0, Lcom/google/android/location/h/ad;->c:I

    goto :goto_0

    :cond_0
    move v2, v1

    .line 180
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 181
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/h/ad;

    .line 182
    add-int/lit8 v1, v2, 0x1

    move v3, v1

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 183
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/h/ad;

    .line 184
    invoke-static {v0, v1}, Lcom/google/android/location/h/aa;->a(Lcom/google/android/location/h/ad;Lcom/google/android/location/h/ad;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/google/android/location/h/ad;->a()V

    .line 186
    invoke-virtual {v1}, Lcom/google/android/location/h/ad;->a()V

    .line 182
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 180
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 190
    :cond_3
    return-void
.end method

.method private static a(Ljava/util/List;I)V
    .locals 2

    .prologue
    .line 230
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/h/ad;

    .line 232
    iget v0, v0, Lcom/google/android/location/h/ad;->c:I

    if-ne v0, p1, :cond_0

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 236
    :cond_1
    return-void
.end method

.method private static a(Lcom/google/android/location/h/ad;Lcom/google/android/location/h/ad;)Z
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/location/h/ad;->a:Lcom/google/android/location/f/ak;

    .line 218
    iget-object v1, p1, Lcom/google/android/location/h/ad;->a:Lcom/google/android/location/f/ak;

    .line 220
    invoke-static {v0, v1}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)I

    move-result v2

    .line 221
    iget v0, v0, Lcom/google/android/location/f/ak;->f:I

    div-int/lit16 v0, v0, 0x3e8

    iget v1, v1, Lcom/google/android/location/f/ak;->f:I

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    if-gt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)Lcom/google/android/location/h/ac;
    .locals 5

    .prologue
    .line 201
    const v1, 0x7fffffff

    .line 202
    const/high16 v0, -0x80000000

    .line 203
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/h/ad;

    .line 204
    iget v4, v0, Lcom/google/android/location/h/ad;->c:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 205
    iget v0, v0, Lcom/google/android/location/h/ad;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    .line 207
    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Lcom/google/android/location/h/ac;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/h/ac;-><init>(II)V

    return-object v0
.end method

.method private c(Ljava/util/List;)Lcom/google/android/location/f/ak;
    .locals 5

    .prologue
    const v4, 0x249f0

    .line 269
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/h/ad;

    .line 272
    invoke-static {v2, v0}, Lcom/google/android/location/h/aa;->a(Ljava/util/Set;Lcom/google/android/location/h/ad;)Ljava/util/List;

    move-result-object v1

    .line 273
    if-nez v1, :cond_0

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 284
    invoke-direct {p0, v0}, Lcom/google/android/location/h/aa;->e(Ljava/util/List;)Lcom/google/android/location/f/ak;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 292
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ak;

    .line 299
    :goto_2
    iget v1, v0, Lcom/google/android/location/f/ak;->f:I

    if-ge v1, v4, :cond_3

    .line 301
    new-instance v1, Lcom/google/android/location/f/am;

    invoke-direct {v1, v0}, Lcom/google/android/location/f/am;-><init>(Lcom/google/android/location/f/ak;)V

    .line 302
    iput v4, v1, Lcom/google/android/location/f/am;->c:I

    .line 303
    invoke-virtual {v1}, Lcom/google/android/location/f/am;->a()Lcom/google/android/location/f/ak;

    move-result-object v0

    .line 305
    :cond_3
    return-object v0

    .line 296
    :cond_4
    invoke-static {v1}, Lcom/google/android/location/h/aa;->d(Ljava/util/List;)Lcom/google/android/location/f/ak;

    move-result-object v0

    goto :goto_2
.end method

.method private static d(Ljava/util/List;)Lcom/google/android/location/f/ak;
    .locals 14

    .prologue
    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 334
    const/4 v1, 0x0

    .line 338
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    .line 339
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ak;

    .line 340
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/f/ak;

    .line 341
    invoke-static {v0, v1}, Lcom/google/android/location/h/aa;->a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)D

    move-result-wide v4

    .line 343
    iget v6, v0, Lcom/google/android/location/f/ak;->d:I

    iget v7, v0, Lcom/google/android/location/f/ak;->e:I

    iget v0, v0, Lcom/google/android/location/f/ak;->f:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v6, v7, v0, v4, v5}, Lcom/google/android/location/h/aa;->a(IIID)Lcom/google/android/location/f/ai;

    move-result-object v0

    .line 346
    iget v6, v1, Lcom/google/android/location/f/ak;->d:I

    iget v7, v1, Lcom/google/android/location/f/ak;->e:I

    iget v1, v1, Lcom/google/android/location/f/ak;->f:I

    div-int/lit16 v1, v1, 0x3e8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v4, v8

    invoke-static {v6, v7, v1, v4, v5}, Lcom/google/android/location/h/aa;->a(IIID)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Lcom/google/android/location/h/aa;->a(Lcom/google/android/location/f/ai;Lcom/google/android/location/f/ai;)Lcom/google/android/location/f/ai;

    move-result-object v0

    .line 352
    if-nez v3, :cond_0

    .line 338
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v3, v0

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {v3, v0}, Lcom/google/android/location/h/aa;->a(Lcom/google/android/location/f/ai;Lcom/google/android/location/f/ai;)Lcom/google/android/location/f/ai;

    move-result-object v0

    goto :goto_1

    .line 358
    :cond_1
    new-instance v1, Lcom/google/android/location/f/am;

    invoke-direct {v1}, Lcom/google/android/location/f/am;-><init>()V

    iget-object v0, v3, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/location/h/d;->b(D)I

    move-result v2

    iget-object v0, v3, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/location/h/d;->b(D)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/location/f/am;->a(II)Lcom/google/android/location/f/am;

    move-result-object v9

    .line 364
    const v0, 0x7fffffff

    .line 365
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/location/f/ak;

    .line 366
    iget v0, v9, Lcom/google/android/location/f/am;->a:I

    int-to-double v0, v0

    mul-double/2addr v0, v12

    iget v2, v9, Lcom/google/android/location/f/am;->b:I

    int-to-double v2, v2

    mul-double/2addr v2, v12

    iget v4, v6, Lcom/google/android/location/f/ak;->d:I

    int-to-double v4, v4

    mul-double/2addr v4, v12

    iget v6, v6, Lcom/google/android/location/f/ak;->e:I

    int-to-double v6, v6

    mul-double/2addr v6, v12

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/h/d;->a(DDDD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 367
    if-ge v0, v8, :cond_3

    :goto_3
    move v8, v0

    .line 370
    goto :goto_2

    .line 371
    :cond_2
    invoke-static {v8}, Lcom/google/android/location/h/d;->a(I)I

    move-result v0

    iput v0, v9, Lcom/google/android/location/f/am;->c:I

    .line 372
    invoke-virtual {v9}, Lcom/google/android/location/f/am;->a()Lcom/google/android/location/f/ak;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v8

    goto :goto_3
.end method

.method private e(Ljava/util/List;)Lcom/google/android/location/f/ak;
    .locals 17

    .prologue
    .line 390
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/h/ad;

    iget-object v3, v2, Lcom/google/android/location/h/ad;->a:Lcom/google/android/location/f/ak;

    .line 392
    const/4 v2, 0x1

    move v10, v2

    move-object v4, v3

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_3

    .line 393
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/h/ad;

    iget-object v3, v2, Lcom/google/android/location/h/ad;->a:Lcom/google/android/location/f/ak;

    .line 394
    invoke-static {v4, v3}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)I

    move-result v11

    iget v2, v4, Lcom/google/android/location/f/ak;->f:I

    div-int/lit16 v12, v2, 0x3e8

    iget v2, v3, Lcom/google/android/location/f/ak;->f:I

    div-int/lit16 v2, v2, 0x3e8

    sub-int v5, v12, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v11, v5, :cond_1

    if-ge v12, v2, :cond_0

    move-object v3, v4

    .line 392
    :cond_0
    :goto_1
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-object v4, v3

    goto :goto_0

    .line 394
    :cond_1
    invoke-static {v4, v3}, Lcom/google/android/location/h/aa;->a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)D

    move-result-wide v6

    add-int v5, v11, v2

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v8, v4, Lcom/google/android/location/f/ak;->d:I

    iget v9, v3, Lcom/google/android/location/f/ak;->d:I

    iget v13, v4, Lcom/google/android/location/f/ak;->e:I

    iget v3, v3, Lcom/google/android/location/f/ak;->e:I

    invoke-static {v8, v13, v5, v6, v7}, Lcom/google/android/location/h/aa;->a(IIID)Lcom/google/android/location/f/ai;

    move-result-object v5

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v6, v14

    add-int v8, v11, v12

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v9, v3, v8, v6, v7}, Lcom/google/android/location/h/aa;->a(IIID)Lcom/google/android/location/f/ai;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/google/android/location/h/aa;->a(Lcom/google/android/location/f/ai;Lcom/google/android/location/f/ai;)Lcom/google/android/location/f/ai;

    move-result-object v13

    add-int v3, v12, v2

    if-le v11, v3, :cond_2

    iget-object v2, v5, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, v5, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, v8, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v8, v8, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lcom/google/android/location/h/d;->b(DDDD)D

    move-result-wide v2

    move-wide v4, v2

    :goto_2
    new-instance v3, Lcom/google/android/location/f/ak;

    iget-object v2, v13, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/location/h/d;->b(D)I

    move-result v6

    iget-object v2, v13, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/location/h/d;->b(D)I

    move-result v2

    double-to-int v4, v4

    invoke-static {v4}, Lcom/google/android/location/h/d;->a(I)I

    move-result v4

    invoke-direct {v3, v6, v2, v4}, Lcom/google/android/location/f/ak;-><init>(III)V

    goto :goto_1

    :cond_2
    mul-int v14, v11, v11

    mul-int v15, v12, v12

    mul-int v16, v2, v2

    invoke-static {v4}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;)D

    move-result-wide v2

    invoke-static {v4}, Lcom/google/android/location/h/d;->b(Lcom/google/android/location/f/ak;)D

    move-result-wide v4

    iget-object v6, v13, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v8, v13, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lcom/google/android/location/h/d;->b(DDDD)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int v3, v2, v2

    add-int v4, v14, v15

    sub-int v4, v4, v16

    int-to-double v4, v4

    mul-int/lit8 v6, v12, 0x2

    mul-int/2addr v6, v11

    int-to-double v6, v6

    div-double/2addr v4, v6

    add-int/2addr v3, v15

    int-to-double v6, v3

    mul-int/lit8 v3, v12, 0x2

    mul-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v2, v4

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-wide v4, v2

    goto :goto_2

    .line 396
    :cond_3
    return-object v4
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/f/bd;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    invoke-static {}, Lcom/google/android/location/h/aa;->a()Lcom/google/android/location/f/bd;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 97
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ay;

    .line 98
    iget-object v2, v0, Lcom/google/android/location/f/ay;->b:Lcom/google/android/location/f/ba;

    sget-object v5, Lcom/google/android/location/f/ba;->c:Lcom/google/android/location/f/ba;

    if-eq v2, v5, :cond_3

    iget-object v0, v0, Lcom/google/android/location/f/ay;->b:Lcom/google/android/location/f/ba;

    sget-object v2, Lcom/google/android/location/f/ba;->d:Lcom/google/android/location/f/ba;

    if-ne v0, v2, :cond_2

    :cond_3
    move v2, v3

    .line 105
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/f/ay;

    .line 110
    if-nez v2, :cond_5

    iget-object v7, v1, Lcom/google/android/location/f/ay;->b:Lcom/google/android/location/f/ba;

    sget-object v8, Lcom/google/android/location/f/ba;->c:Lcom/google/android/location/f/ba;

    if-eq v7, v8, :cond_5

    iget-object v1, v1, Lcom/google/android/location/f/ay;->b:Lcom/google/android/location/f/ba;

    sget-object v7, Lcom/google/android/location/f/ba;->d:Lcom/google/android/location/f/ba;

    if-ne v1, v7, :cond_4

    .line 112
    :cond_5
    new-instance v7, Lcom/google/android/location/h/ad;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ak;

    invoke-direct {v7, v1, v0}, Lcom/google/android/location/h/ad;-><init>(Ljava/lang/Long;Lcom/google/android/location/f/ak;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 115
    :cond_6
    new-instance v0, Lcom/google/android/location/h/ab;

    invoke-direct {v0, p0, v3}, Lcom/google/android/location/h/ab;-><init>(Lcom/google/android/location/h/aa;B)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    :cond_7
    invoke-static {v5}, Lcom/google/android/location/h/aa;->a(Ljava/util/List;)V

    .line 127
    invoke-static {v5}, Lcom/google/android/location/h/aa;->b(Ljava/util/List;)Lcom/google/android/location/h/ac;

    move-result-object v1

    .line 129
    iget v0, v1, Lcom/google/android/location/h/ac;->a:I

    iget v2, v1, Lcom/google/android/location/h/ac;->b:I

    if-eq v0, v2, :cond_9

    move v0, v4

    .line 130
    :goto_3
    if-eqz v0, :cond_8

    .line 132
    iget v1, v1, Lcom/google/android/location/h/ac;->b:I

    invoke-static {v5, v1}, Lcom/google/android/location/h/aa;->a(Ljava/util/List;I)V

    .line 134
    :cond_8
    if-nez v0, :cond_7

    .line 137
    invoke-direct {p0, v5}, Lcom/google/android/location/h/aa;->c(Ljava/util/List;)Lcom/google/android/location/f/ak;

    move-result-object v1

    .line 139
    iget v0, v1, Lcom/google/android/location/f/ak;->f:I

    const v2, 0x16e360

    if-le v0, v2, :cond_a

    .line 141
    sget-object v0, Lcom/google/android/location/h/aa;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring computed location since accuracy too high: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/google/android/location/f/ak;->f:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/google/android/location/h/aa;->a()Lcom/google/android/location/f/bd;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v0, v3

    .line 129
    goto :goto_3

    .line 147
    :cond_a
    invoke-static {v1, p1}, Lcom/google/android/location/h/aa;->a(Lcom/google/android/location/f/ak;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 155
    sget-object v0, Lcom/google/android/location/h/aa;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Not returning location for the following outliers: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 157
    :cond_b
    new-instance v0, Lcom/google/android/location/f/bd;

    const/16 v3, 0x50

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/google/android/location/f/bd;-><init>(ILcom/google/android/location/f/ak;ILjava/util/Set;)V

    goto/16 :goto_0

    :cond_c
    move v2, v4

    goto/16 :goto_1
.end method
