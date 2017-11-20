.class public final Lcom/google/android/location/collectionlib/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/google/android/location/collectionlib/cu;

.field private static i:[D

.field private static j:[[D

.field private static k:[D


# instance fields
.field private b:Lcom/google/android/location/p/a/c;

.field private c:Lcom/google/android/location/collectionlib/ak;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/List;

.field private l:I

.field private m:I

.field private n:[D

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/google/android/location/collectionlib/ct;->a:Lcom/google/android/location/collectionlib/cu;

    .line 32
    sput-object v0, Lcom/google/android/location/collectionlib/ct;->k:[D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/p/a/c;Lcom/google/android/location/collectionlib/ak;)V
    .locals 3

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    .line 25
    iput v1, p0, Lcom/google/android/location/collectionlib/ct;->e:I

    .line 26
    iput v1, p0, Lcom/google/android/location/collectionlib/ct;->f:I

    .line 27
    iput v1, p0, Lcom/google/android/location/collectionlib/ct;->g:I

    .line 46
    iput-object p1, p0, Lcom/google/android/location/collectionlib/ct;->b:Lcom/google/android/location/p/a/c;

    .line 47
    iput-object p2, p0, Lcom/google/android/location/collectionlib/ct;->c:Lcom/google/android/location/collectionlib/ak;

    .line 48
    iput v2, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    .line 49
    const v0, 0xac44

    iput v0, p0, Lcom/google/android/location/collectionlib/ct;->e:I

    .line 50
    const v0, 0x32000

    iput v0, p0, Lcom/google/android/location/collectionlib/ct;->f:I

    .line 51
    iput v2, p0, Lcom/google/android/location/collectionlib/ct;->g:I

    .line 52
    iget v0, p0, Lcom/google/android/location/collectionlib/ct;->f:I

    add-int/lit16 v0, v0, -0x400

    div-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/location/collectionlib/ct;->m:I

    .line 54
    iget v0, p0, Lcom/google/android/location/collectionlib/ct;->m:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ct;->n:[D

    .line 55
    invoke-direct {p0}, Lcom/google/android/location/collectionlib/ct;->a()V

    .line 56
    iput v1, p0, Lcom/google/android/location/collectionlib/ct;->l:I

    .line 57
    return-void
.end method

.method private a(I)D
    .locals 10

    .prologue
    .line 205
    sget-object v0, Lcom/google/android/location/collectionlib/ct;->k:[D

    if-nez v0, :cond_0

    .line 206
    iget v0, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    sput-object v0, Lcom/google/android/location/collectionlib/ct;->k:[D

    .line 207
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 208
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget v1, p0, Lcom/google/android/location/collectionlib/ct;->e:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    int-to-double v4, v0

    mul-double/2addr v2, v4

    .line 209
    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    const-wide v6, 0x3f48e757928e0c9eL    # 7.6E-4

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    const-wide v8, 0x40bd4c0000000000L    # 7500.0

    div-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 210
    sget-object v1, Lcom/google/android/location/collectionlib/ct;->k:[D

    aput-wide v2, v1, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    sget-object v0, Lcom/google/android/location/collectionlib/ct;->k:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method private static a([DD)D
    .locals 11

    .prologue
    .line 435
    const-wide/16 v2, 0x0

    .line 436
    array-length v6, p0

    const/4 v0, 0x0

    move v10, v0

    move-wide v0, v2

    move v2, v10

    :goto_0
    if-ge v2, v6, :cond_0

    aget-wide v4, p0, v2

    .line 437
    sub-double/2addr v4, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v0

    .line 436
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    .line 439
    :cond_0
    array-length v2, p0

    if-lez v2, :cond_1

    .line 440
    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 442
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(D)I
    .locals 5

    .prologue
    .line 177
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget v2, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/google/android/location/collectionlib/ct;->e:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 179
    iget v1, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 180
    iget v0, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 182
    :cond_0
    return v0
.end method

.method private a()V
    .locals 12

    .prologue
    .line 144
    iget v1, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    .line 145
    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/location/collectionlib/ct;->i:[D

    .line 146
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 147
    sget-object v2, Lcom/google/android/location/collectionlib/ct;->i:[D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-int/lit8 v3, v1, -0x1

    int-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    aput-wide v4, v2, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method private static b(D)D
    .locals 4

    .prologue
    .line 191
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static b([D)[D
    .locals 8

    .prologue
    .line 158
    array-length v1, p0

    .line 159
    new-array v2, v1, [D

    .line 160
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 161
    aget-wide v4, p0, v0

    sget-object v3, Lcom/google/android/location/collectionlib/ct;->i:[D

    aget-wide v6, v3, v0

    mul-double/2addr v4, v6

    aput-wide v4, v2, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-object v2
.end method

.method private b()[[D
    .locals 14

    .prologue
    const/16 v9, 0x17

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x0

    .line 224
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    move-wide v4, v6

    .line 228
    :goto_0
    iget v0, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    div-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_2

    .line 229
    invoke-direct {p0, v1}, Lcom/google/android/location/collectionlib/ct;->a(I)D

    move-result-wide v10

    .line 233
    cmpg-double v0, v10, v6

    if-ltz v0, :cond_1

    .line 234
    :goto_1
    cmpl-double v0, v10, v4

    if-lez v0, :cond_0

    .line 239
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 240
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v12

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/location/collectionlib/ct;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 247
    :cond_2
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v9, :cond_3

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 250
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [[D

    move v1, v2

    .line 251
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 252
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [D

    aput-object v0, v4, v1

    move v3, v2

    .line 253
    :goto_4
    aget-object v0, v4, v1

    array-length v0, v0

    if-ge v3, v0, :cond_4

    .line 254
    aget-object v5, v4, v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v5, v3

    .line 253
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 251
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 257
    :cond_5
    return-object v4
.end method

.method private static c(D)D
    .locals 6

    .prologue
    .line 315
    const-wide v0, 0x4091940000000000L    # 1125.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x4085e00000000000L    # 700.0

    div-double v4, p0, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private c()[D
    .locals 20

    .prologue
    .line 331
    const-wide v2, 0x40d3830000000000L    # 19980.0

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/ct;->c(D)D

    move-result-wide v2

    const-wide v4, 0x4044800000000000L    # 41.0

    div-double v4, v2, v4

    .line 332
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 333
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x29

    if-gt v2, v3, :cond_0

    .line 334
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-static {v6, v7}, Lcom/google/android/location/collectionlib/ct;->c(D)D

    move-result-wide v6

    int-to-double v10, v2

    mul-double/2addr v10, v4

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_0
    const/16 v2, 0x28

    new-array v10, v2, [D

    .line 337
    const/4 v2, 0x1

    move v8, v2

    :goto_1
    const/16 v2, 0x28

    if-gt v8, v2, :cond_3

    .line 343
    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/ct;->d(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/location/collectionlib/ct;->a(D)I

    move-result v4

    .line 344
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/ct;->d(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/location/collectionlib/ct;->a(D)I

    move-result v11

    .line 345
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/ct;->d(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/location/collectionlib/ct;->a(D)I

    move-result v12

    .line 346
    const-wide/16 v2, 0x0

    move-wide v6, v2

    move v3, v4

    .line 348
    :goto_2
    add-int/lit8 v2, v11, -0x1

    if-gt v3, v2, :cond_1

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/ct;->h:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    sub-int v2, v3, v4

    int-to-double v0, v2

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/16 v16, 0x0

    int-to-double v0, v11

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    int-to-double v0, v4

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    div-double v14, v14, v16

    add-double/2addr v6, v14

    .line 348
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 352
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/ct;->h:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double v4, v6, v2

    .line 354
    add-int/lit8 v2, v11, 0x1

    move v3, v2

    :goto_3
    if-gt v3, v12, :cond_2

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/ct;->h:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-int v2, v12, v3

    int-to-double v14, v2

    mul-double/2addr v6, v14

    const-wide/16 v14, 0x0

    int-to-double v0, v12

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    int-to-double v0, v11

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    div-double/2addr v6, v14

    add-double/2addr v4, v6

    .line 354
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 357
    :cond_2
    add-int/lit8 v2, v8, -0x1

    aput-wide v4, v10, v2

    .line 337
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_1

    .line 361
    :cond_3
    invoke-static {v10}, Lcom/google/android/location/collectionlib/ct;->c([D)[D

    move-result-object v2

    .line 362
    invoke-static {v2}, Lcom/google/android/location/collectionlib/ct;->d([D)[D

    move-result-object v2

    .line 363
    return-object v2
.end method

.method private static c([D)[D
    .locals 6

    .prologue
    .line 372
    array-length v0, p0

    new-array v1, v0, [D

    .line 373
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 374
    aget-wide v2, p0, v0

    .line 375
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 376
    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 377
    aput-wide v2, v1, v0

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    return-object v1
.end method

.method private static d(D)D
    .locals 6

    .prologue
    .line 319
    const-wide v0, 0x4085e00000000000L    # 700.0

    const-wide v2, 0x4091940000000000L    # 1125.0

    div-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static d([D)[D
    .locals 14

    .prologue
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const/4 v1, 0x0

    .line 405
    array-length v3, p0

    sget-object v0, Lcom/google/android/location/collectionlib/ct;->j:[[D

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/collectionlib/ct;->j:[[D

    array-length v0, v0

    if-eq v0, v3, :cond_3

    :cond_0
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    sput-object v0, Lcom/google/android/location/collectionlib/ct;->j:[[D

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    sget-object v4, Lcom/google/android/location/collectionlib/ct;->j:[[D

    aget-object v4, v4, v2

    int-to-double v6, v2

    int-to-double v8, v0

    add-double/2addr v8, v12

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    int-to-double v8, v3

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    int-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aput-wide v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_3

    sget-object v2, Lcom/google/android/location/collectionlib/ct;->j:[[D

    aget-object v2, v2, v1

    aget-wide v4, v2, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 406
    :cond_3
    array-length v0, p0

    new-array v6, v0, [D

    move v0, v1

    .line 407
    :goto_3
    array-length v2, p0

    if-ge v0, v2, :cond_5

    .line 408
    const-wide/16 v2, 0x0

    move-wide v4, v2

    move v2, v1

    .line 409
    :goto_4
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 410
    aget-wide v8, p0, v2

    sget-object v3, Lcom/google/android/location/collectionlib/ct;->j:[[D

    aget-object v3, v3, v0

    aget-wide v10, v3, v2

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 412
    :cond_4
    aput-wide v4, v6, v0

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 414
    :cond_5
    return-object v6
.end method

.method private static e([D)D
    .locals 8

    .prologue
    .line 418
    const-wide/16 v2, 0x0

    .line 419
    array-length v6, p0

    const/4 v0, 0x0

    move v7, v0

    move-wide v0, v2

    move v2, v7

    :goto_0
    if-ge v2, v6, :cond_0

    aget-wide v4, p0, v2

    .line 420
    add-double/2addr v4, v0

    .line 419
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    .line 422
    :cond_0
    array-length v2, p0

    if-lez v2, :cond_1

    .line 423
    array-length v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 425
    :cond_1
    return-wide v0
.end method

.method private static f([D)D
    .locals 15

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 455
    .line 456
    array-length v6, p0

    move v1, v0

    move-wide v4, v2

    :goto_0
    if-ge v1, v6, :cond_1

    aget-wide v8, p0, v1

    .line 457
    cmpg-double v7, v8, v2

    if-gez v7, :cond_0

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Values must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    add-double/2addr v4, v8

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    :cond_1
    array-length v6, p0

    move v14, v0

    move-wide v0, v2

    move v2, v14

    :goto_1
    if-ge v2, v6, :cond_3

    aget-wide v8, p0, v2

    .line 464
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3d06849b86a12b9bL    # 1.0E-14

    cmpl-double v3, v10, v12

    if-lez v3, :cond_2

    .line 465
    div-double v10, v8, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double/2addr v8, v4

    add-double/2addr v0, v8

    .line 463
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 469
    :cond_3
    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private g([D)D
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 479
    const/4 v1, 0x0

    .line 480
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    if-ge v0, v2, :cond_1

    .line 482
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p1, v2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    aget-wide v2, p1, v0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 483
    add-int/lit8 v1, v1, 0x1

    .line 480
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_1
    int-to-double v0, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/google/android/location/collectionlib/ct;->d:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Lcom/google/android/location/collectionlib/ct;->e:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static h([D)[D
    .locals 6

    .prologue
    .line 498
    array-length v0, p0

    new-array v1, v0, [D

    .line 499
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 500
    aget-wide v2, p0, v0

    aget-wide v4, p0, v0

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a([D)V
    .locals 18

    .prologue
    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 86
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/location/collectionlib/ct;->l:I

    if-nez v2, :cond_0

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/location/collectionlib/ct;->o:J

    .line 89
    :cond_0
    const-wide v2, 0x40f86a0000000000L    # 100000.0

    const-string v4, "Nexus 5"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    :cond_1
    const-string v4, "Gear Live"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide v2, 0x41186a0000000000L    # 400000.0

    :cond_2
    move-object/from16 v0, p1

    array-length v4, v0

    new-array v10, v4, [D

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v4, v5, :cond_3

    aget-wide v6, p1, v4

    mul-double/2addr v6, v2

    aput-wide v6, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_3
    sget-object v2, Lcom/google/android/location/collectionlib/ct;->a:Lcom/google/android/location/collectionlib/cu;

    if-eqz v2, :cond_4

    .line 91
    sget-object v2, Lcom/google/android/location/collectionlib/ct;->a:Lcom/google/android/location/collectionlib/cu;

    invoke-static {v10}, Lcom/google/android/location/collectionlib/ct;->b([D)[D

    invoke-interface {v2}, Lcom/google/android/location/collectionlib/cu;->a()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/collectionlib/ct;->h:Ljava/util/List;

    .line 97
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/collectionlib/ct;->b()[[D

    move-result-object v3

    .line 98
    array-length v2, v3

    new-array v5, v2, [D

    .line 99
    array-length v2, v3

    new-array v6, v2, [D

    .line 100
    array-length v2, v3

    new-array v7, v2, [D

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/collectionlib/ct;->c()[D

    move-result-object v4

    .line 102
    const/4 v2, 0x0

    :goto_2
    array-length v11, v3

    if-ge v2, v11, :cond_9

    .line 103
    aget-object v11, v3, v2

    invoke-static {v11}, Lcom/google/android/location/collectionlib/ct;->e([D)D

    move-result-wide v12

    .line 104
    aput-wide v12, v5, v2

    .line 105
    aget-object v11, v3, v2

    invoke-static {v11, v12, v13}, Lcom/google/android/location/collectionlib/ct;->a([DD)D

    move-result-wide v12

    .line 106
    aput-wide v12, v6, v2

    .line 107
    aget-object v11, v3, v2

    invoke-static {v11}, Lcom/google/android/location/collectionlib/ct;->f([D)D

    move-result-wide v12

    .line 108
    aput-wide v12, v7, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 93
    :cond_4
    new-instance v3, Lcom/google/android/location/collectionlib/at;

    invoke-direct {v3}, Lcom/google/android/location/collectionlib/at;-><init>()V

    .line 94
    invoke-static {v10}, Lcom/google/android/location/collectionlib/ct;->b([D)[D

    move-result-object v4

    array-length v2, v4

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must be a power of 2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_3
    array-length v6, v4

    if-ge v2, v6, :cond_6

    aget-wide v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    new-instance v2, Lcom/google/android/location/collectionlib/au;

    const-wide/16 v14, 0x0

    invoke-direct {v2, v12, v13, v14, v15}, Lcom/google/android/location/collectionlib/au;-><init>(DD)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v4}, Lcom/google/android/location/collectionlib/at;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/collectionlib/au;

    iget-wide v6, v2, Lcom/google/android/location/collectionlib/au;->a:D

    iget-wide v12, v2, Lcom/google/android/location/collectionlib/au;->a:D

    mul-double/2addr v6, v12

    iget-wide v12, v2, Lcom/google/android/location/collectionlib/au;->b:D

    iget-wide v14, v2, Lcom/google/android/location/collectionlib/au;->b:D

    mul-double/2addr v12, v14

    add-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/location/collectionlib/ct;->h:Ljava/util/List;

    goto/16 :goto_1

    .line 111
    :cond_9
    invoke-static {v10}, Lcom/google/android/location/collectionlib/ct;->h([D)[D

    move-result-object v2

    .line 112
    invoke-static {v2}, Lcom/google/android/location/collectionlib/ct;->e([D)D

    move-result-wide v12

    .line 113
    invoke-static {v2, v12, v13}, Lcom/google/android/location/collectionlib/ct;->a([DD)D

    move-result-wide v14

    .line 114
    invoke-static {v2}, Lcom/google/android/location/collectionlib/ct;->f([D)D

    move-result-wide v16

    .line 119
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/location/collectionlib/ct;->g([D)D

    move-result-wide v10

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/ct;->n:[D

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/location/collectionlib/ct;->l:I

    aput-wide v12, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/location/collectionlib/ct;->l:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/location/collectionlib/ct;->l:I

    const/4 v2, 0x4

    new-array v3, v2, [D

    const/4 v2, 0x0

    aput-wide v12, v3, v2

    const/4 v2, 0x1

    aput-wide v10, v3, v2

    const/4 v2, 0x2

    aput-wide v14, v3, v2

    const/4 v2, 0x3

    aput-wide v16, v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/ct;->c:Lcom/google/android/location/collectionlib/ak;

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/location/collectionlib/ak;->a([D[D[D[D[DJ)V

    .line 129
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/location/collectionlib/ct;->l:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/location/collectionlib/ct;->m:I

    if-lt v2, v3, :cond_c

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/location/collectionlib/ct;->p:J

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/collectionlib/ct;->p:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/collectionlib/ct;->o:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/location/collectionlib/ct;->m:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/location/collectionlib/ct;->g:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/location/collectionlib/ct;->e:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x4072c00000000000L    # 300.0

    add-double/2addr v6, v4

    cmpl-double v6, v2, v6

    if-lez v6, :cond_a

    sget-boolean v6, Lcom/google/android/location/j/a;->d:Z

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/collectionlib/ct;->b:Lcom/google/android/location/p/a/c;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sound processing speed is too slow... "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/ct;->n:[D

    invoke-static {v2}, Lcom/google/android/location/collectionlib/ct;->e([D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/collectionlib/ct;->n:[D

    invoke-static {v4, v2, v3}, Lcom/google/android/location/collectionlib/ct;->a([DD)D

    move-result-wide v4

    sget-boolean v6, Lcom/google/android/location/j/a;->d:Z

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/collectionlib/ct;->b:Lcom/google/android/location/p/a/c;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "calibration: volume level for 5 sec"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/ct;->b(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v5}, Lcom/google/android/location/collectionlib/ct;->b(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    .line 131
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/location/collectionlib/ct;->l:I

    .line 133
    :cond_c
    return-void
.end method
