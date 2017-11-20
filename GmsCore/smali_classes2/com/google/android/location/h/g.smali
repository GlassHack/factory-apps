.class public Lcom/google/android/location/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/bc;


# static fields
.field static final a:[[I

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Lcom/google/android/location/f/bc;

.field private static final f:Ljava/util/Comparator;

.field private static final g:Ljava/util/Comparator;


# instance fields
.field private final d:Ljava/util/List;

.field private final e:Lcom/google/android/location/h/l;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x78

    .line 57
    const-class v0, Lcom/google/android/location/h/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/h/g;->b:Ljava/util/logging/Logger;

    .line 109
    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/android/location/h/g;->a:[[I

    .line 111
    new-instance v0, Lcom/google/android/location/h/aa;

    invoke-direct {v0}, Lcom/google/android/location/h/aa;-><init>()V

    sput-object v0, Lcom/google/android/location/h/g;->c:Lcom/google/android/location/f/bc;

    move v2, v1

    .line 120
    :goto_0
    if-ge v2, v5, :cond_1

    move v0, v1

    .line 121
    :goto_1
    if-ge v0, v5, :cond_0

    .line 122
    sget-object v3, Lcom/google/android/location/h/g;->a:[[I

    aget-object v3, v3, v2

    invoke-static {v2, v0}, Lcom/google/android/location/h/g;->a(II)I

    move-result v4

    aput v4, v3, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 263
    :cond_1
    new-instance v0, Lcom/google/android/location/h/h;

    invoke-direct {v0}, Lcom/google/android/location/h/h;-><init>()V

    sput-object v0, Lcom/google/android/location/h/g;->f:Ljava/util/Comparator;

    .line 376
    new-instance v0, Lcom/google/android/location/h/i;

    invoke-direct {v0}, Lcom/google/android/location/h/i;-><init>()V

    sput-object v0, Lcom/google/android/location/h/g;->g:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/google/android/location/h/l;

    invoke-direct {v0}, Lcom/google/android/location/h/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/h/g;->e:Lcom/google/android/location/h/l;

    .line 143
    iput-object p1, p0, Lcom/google/android/location/h/g;->d:Ljava/util/List;

    .line 144
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/f/ay;)D
    .locals 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/google/android/location/h/g;->b(Lcom/google/android/location/f/ay;)D

    move-result-wide v0

    return-wide v0
.end method

.method static a(II)I
    .locals 6

    .prologue
    const-wide/high16 v4, 0x400e000000000000L    # 3.75

    .line 131
    int-to-double v0, p0

    mul-double/2addr v0, v4

    .line 132
    int-to-double v2, p1

    mul-double/2addr v2, v4

    .line 133
    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;Lcom/google/android/location/f/ak;Lcom/google/android/location/h/l;)Lcom/google/android/location/f/ai;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    .line 205
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 206
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ay;

    .line 211
    iget-object v8, v0, Lcom/google/android/location/f/ay;->b:Lcom/google/android/location/f/ba;

    .line 213
    sget-object v9, Lcom/google/android/location/f/ba;->d:Lcom/google/android/location/f/ba;

    if-ne v8, v9, :cond_1

    .line 214
    new-instance v8, Lcom/google/android/location/f/ai;

    invoke-direct {v8, v1, v0}, Lcom/google/android/location/f/ai;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {v0}, Lcom/google/android/location/h/g;->b(Lcom/google/android/location/f/ay;)D

    goto :goto_0

    .line 216
    :cond_1
    sget-object v9, Lcom/google/android/location/f/ba;->c:Lcom/google/android/location/f/ba;

    if-ne v8, v9, :cond_0

    .line 217
    new-instance v8, Lcom/google/android/location/f/ai;

    invoke-direct {v8, v1, v0}, Lcom/google/android/location/f/ai;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    sget-object v0, Lcom/google/android/location/h/g;->b:Ljava/util/logging/Logger;

    const-string v1, "No lre nor minK results found. Returning matrixCenter"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/google/android/location/f/ai;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/google/android/location/f/ai;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    :goto_1
    return-object v0

    .line 224
    :cond_3
    sget-object v0, Lcom/google/android/location/h/g;->g:Ljava/util/Comparator;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 227
    iget-object v1, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/location/f/ay;

    .line 228
    invoke-static {v1}, Lcom/google/android/location/h/g;->b(Lcom/google/android/location/f/ay;)D

    move-result-wide v8

    add-double/2addr v2, v8

    .line 229
    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 230
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/google/android/location/h/g;->a(Lcom/google/android/location/f/ay;ILcom/google/android/location/f/ak;Lcom/google/android/location/h/l;)V

    goto :goto_2

    .line 232
    :cond_4
    const/4 v0, 0x0

    .line 234
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    cmpg-double v1, v2, v8

    if-gez v1, :cond_5

    .line 235
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 236
    const/4 v4, 0x1

    .line 237
    iget-object v1, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/location/f/ay;

    .line 238
    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 239
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/google/android/location/h/g;->a(Lcom/google/android/location/f/ay;ILcom/google/android/location/f/ak;Lcom/google/android/location/h/l;)V

    move v0, v4

    .line 240
    goto :goto_3

    .line 242
    :cond_5
    invoke-virtual {p4, p3}, Lcom/google/android/location/h/l;->a(Lcom/google/android/location/f/ak;)Lcom/google/android/location/f/am;

    move-result-object v1

    .line 245
    if-nez v1, :cond_6

    .line 246
    sget-object v0, Lcom/google/android/location/h/g;->b:Ljava/util/logging/Logger;

    const-string v1, "Not returning location as unable to find dominant circle."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object v0, v5

    .line 247
    goto :goto_1

    .line 249
    :cond_6
    invoke-static {v1, v6}, Lcom/google/android/location/h/g;->a(Lcom/google/android/location/f/am;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 250
    if-eqz v0, :cond_7

    .line 251
    iget v0, v1, Lcom/google/android/location/f/am;->c:I

    int-to-double v6, v0

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v0, v6

    iput v0, v1, Lcom/google/android/location/f/am;->c:I

    .line 254
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/location/f/am;->a()Lcom/google/android/location/f/ak;

    move-result-object v0

    .line 255
    invoke-static {v0, p1}, Lcom/google/android/location/h/g;->a(Lcom/google/android/location/f/ak;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 256
    sget-object v0, Lcom/google/android/location/h/g;->b:Ljava/util/logging/Logger;

    const-string v1, "Not returning location as no APs within 75 meters of location."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move-object v0, v5

    .line 257
    goto/16 :goto_1

    .line 259
    :cond_8
    const-wide v4, 0x3fd3333333333333L    # 0.3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static a(Ljava/util/Map;)Lcom/google/android/location/f/ak;
    .locals 14

    .prologue
    const-wide v12, 0x416312d000000000L    # 1.0E7

    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide/16 v0, 0x0

    .line 430
    .line 432
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    move-wide v4, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ay;

    .line 433
    iget v1, v0, Lcom/google/android/location/f/ay;->d:I

    int-to-double v8, v1

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 434
    iget v0, v0, Lcom/google/android/location/f/ay;->e:I

    int-to-double v0, v0

    mul-double/2addr v0, v10

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 435
    goto :goto_0

    .line 436
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v4, v0

    .line 437
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 439
    new-instance v4, Lcom/google/android/location/f/ak;

    mul-double/2addr v0, v12

    double-to-int v0, v0

    mul-double/2addr v2, v12

    double-to-int v1, v2

    const v2, 0x124f8

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/location/f/ak;-><init>(III)V

    return-object v4
.end method

.method private static a()Lcom/google/android/location/f/bd;
    .locals 5

    .prologue
    .line 182
    new-instance v0, Lcom/google/android/location/f/bd;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/location/f/bd;->a:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/f/bd;-><init>(ILcom/google/android/location/f/ak;ILjava/util/Set;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/location/h/j;
    .locals 4

    .prologue
    .line 529
    new-instance v1, Lcom/google/android/location/h/j;

    invoke-direct {v1}, Lcom/google/android/location/h/j;-><init>()V

    .line 530
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/h/j;

    .line 531
    iget-object v3, v1, Lcom/google/android/location/h/j;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/google/android/location/h/j;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 533
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 445
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 446
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 447
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 448
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 451
    :cond_1
    return-object v1
.end method

.method private a(Lcom/google/android/location/f/ay;ILcom/google/android/location/f/ak;Lcom/google/android/location/h/l;)V
    .locals 16

    .prologue
    .line 310
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/h/d;->b(Lcom/google/android/location/f/ak;)D

    move-result-wide v2

    invoke-static/range {p3 .. p3}, Lcom/google/android/location/h/d;->b(Lcom/google/android/location/f/ak;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;)D

    move-result-wide v4

    invoke-static/range {p3 .. p3}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x400e000000000000L    # 3.75

    div-double/2addr v2, v4

    double-to-int v11, v2

    .line 311
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;)D

    move-result-wide v2

    invoke-static/range {p3 .. p3}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide v4, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x400e000000000000L    # 3.75

    div-double/2addr v2, v4

    double-to-int v12, v2

    .line 313
    new-instance v2, Lcom/google/android/location/h/c;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/android/location/h/c;-><init>(III[F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/h/g;->d:Ljava/util/List;

    sget-object v4, Lcom/google/android/location/h/g;->f:Ljava/util/Comparator;

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    if-gez v2, :cond_4

    const/4 v2, 0x0

    move-object v10, v2

    .line 315
    :goto_0
    const/4 v4, 0x0

    .line 316
    const/4 v3, 0x0

    .line 317
    const/4 v2, 0x1

    .line 319
    if-eqz v10, :cond_0

    iget-object v5, v10, Lcom/google/android/location/h/c;->d:[F

    array-length v5, v5

    if-lez v5, :cond_0

    .line 320
    iget-object v2, v10, Lcom/google/android/location/h/c;->d:[F

    array-length v4, v2

    .line 321
    iget v3, v10, Lcom/google/android/location/h/c;->c:I

    .line 322
    const/4 v2, 0x0

    .line 325
    :cond_0
    const/16 v5, -0x28

    move v9, v5

    :goto_1
    const/16 v5, 0x28

    if-gt v9, v5, :cond_c

    .line 326
    sub-int v5, v9, v11

    .line 327
    if-gez v5, :cond_1

    .line 328
    neg-int v5, v5

    .line 330
    :cond_1
    const/16 v6, -0x28

    move v8, v6

    :goto_2
    const/16 v6, 0x28

    if-gt v8, v6, :cond_b

    .line 331
    sub-int v6, v8, v12

    .line 332
    if-gez v6, :cond_2

    .line 333
    neg-int v6, v6

    .line 337
    :cond_2
    const/16 v7, 0x78

    if-ge v6, v7, :cond_3

    const/16 v7, 0x78

    if-lt v5, v7, :cond_6

    .line 338
    :cond_3
    invoke-static {v5, v6}, Lcom/google/android/location/h/g;->a(II)I

    move-result v6

    .line 345
    :goto_3
    if-eqz v2, :cond_8

    .line 346
    int-to-double v6, v6

    const-wide v14, 0x4052c00000000000L    # 75.0

    cmpg-double v6, v6, v14

    if-gez v6, :cond_7

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 360
    :goto_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v8, v6, v7}, Lcom/google/android/location/h/l;->a(IID)V

    .line 330
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_2

    .line 313
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/h/g;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/h/c;

    iget v3, v2, Lcom/google/android/location/h/c;->b:I

    const/16 v4, 0x64

    if-ge v3, v4, :cond_5

    const/4 v2, 0x0

    move-object v10, v2

    goto :goto_0

    :cond_5
    move-object v10, v2

    goto :goto_0

    .line 340
    :cond_6
    sget-object v7, Lcom/google/android/location/h/g;->a:[[I

    aget-object v7, v7, v5

    aget v6, v7, v6

    goto :goto_3

    .line 346
    :cond_7
    const-wide v6, 0x3fa999999999999aL    # 0.05

    goto :goto_4

    .line 350
    :cond_8
    if-ge v6, v3, :cond_9

    .line 351
    iget-object v6, v10, Lcom/google/android/location/h/c;->d:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-double v6, v6

    goto :goto_4

    .line 353
    :cond_9
    add-int v7, v3, v4

    if-lt v6, v7, :cond_a

    .line 354
    iget-object v6, v10, Lcom/google/android/location/h/c;->d:[F

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    float-to-double v6, v6

    goto :goto_4

    .line 356
    :cond_a
    iget-object v7, v10, Lcom/google/android/location/h/c;->d:[F

    sub-int/2addr v6, v3

    aget v6, v7, v6

    float-to-double v6, v6

    goto :goto_4

    .line 325
    :cond_b
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_1

    .line 363
    :cond_c
    return-void
.end method

.method private static a(Lcom/google/android/location/f/ak;Ljava/util/Map;)Z
    .locals 6

    .prologue
    .line 395
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ay;

    .line 396
    invoke-static {p0, v0}, Lcom/google/android/location/h/d;->b(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)D

    move-result-wide v2

    const-wide v4, 0x4052c00000000000L    # 75.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 400
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/google/android/location/f/am;Ljava/util/List;)Z
    .locals 14

    .prologue
    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 412
    const-wide/16 v0, 0x0

    .line 413
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v8, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 414
    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/google/android/location/f/ay;

    .line 416
    iget v0, v6, Lcom/google/android/location/f/ay;->a:I

    const v1, 0x9c40

    if-ge v0, v1, :cond_2

    .line 417
    iget v0, p0, Lcom/google/android/location/f/am;->a:I

    int-to-double v0, v0

    mul-double/2addr v0, v12

    iget v2, p0, Lcom/google/android/location/f/am;->b:I

    int-to-double v2, v2

    mul-double/2addr v2, v12

    iget v4, v6, Lcom/google/android/location/f/ak;->d:I

    int-to-double v4, v4

    mul-double/2addr v4, v12

    iget v6, v6, Lcom/google/android/location/f/ak;->e:I

    int-to-double v6, v6

    mul-double/2addr v6, v12

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/h/d;->c(DDDD)D

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    :goto_1
    move-wide v8, v0

    .line 419
    goto :goto_0

    .line 421
    :cond_0
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v8

    const-wide v2, 0x3ff3333333333333L    # 1.2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 422
    iget v1, p0, Lcom/google/android/location/f/am;->c:I

    if-le v0, v1, :cond_1

    .line 423
    iput v0, p0, Lcom/google/android/location/f/am;->c:I

    .line 424
    const/4 v0, 0x1

    .line 426
    :goto_2
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-wide v0, v8

    goto :goto_1
.end method

.method private static a(Lcom/google/android/location/f/ay;Lcom/google/android/location/h/j;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 537
    iget-object v0, p1, Lcom/google/android/location/h/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 538
    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ay;

    invoke-static {p0, v0}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)I

    move-result v0

    const/16 v4, 0xc8

    if-gt v0, v4, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    move v0, v1

    .line 542
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 538
    goto :goto_0

    :cond_2
    move v0, v2

    .line 542
    goto :goto_1
.end method

.method private static b(Lcom/google/android/location/f/ay;)D
    .locals 4

    .prologue
    .line 371
    iget v0, p0, Lcom/google/android/location/f/ay;->a:I

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 372
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 373
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double v0, v2, v0

    return-wide v0
.end method

.method private b(Ljava/util/Map;)Ljava/util/Set;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 476
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 477
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 478
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 479
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 481
    new-instance v2, Lcom/google/android/location/h/j;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/location/h/j;-><init>(Lcom/google/android/location/f/ai;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/h/j;

    .line 483
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/f/ay;

    invoke-static {v2, v1}, Lcom/google/android/location/h/g;->a(Lcom/google/android/location/f/ay;Lcom/google/android/location/h/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 486
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    :cond_1
    invoke-static {v5}, Lcom/google/android/location/h/g;->a(Ljava/util/List;)Lcom/google/android/location/h/j;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 491
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 492
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 493
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 495
    :cond_2
    new-instance v0, Lcom/google/android/location/h/k;

    invoke-direct {v0, p0, v8}, Lcom/google/android/location/h/k;-><init>(Lcom/google/android/location/h/g;B)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 496
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 497
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 498
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/h/j;

    iget-object v4, v0, Lcom/google/android/location/h/j;->a:Ljava/util/List;

    .line 499
    const/4 v0, 0x1

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 500
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/h/j;

    iget-object v0, v0, Lcom/google/android/location/h/j;->a:Ljava/util/List;

    .line 501
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 502
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ai;

    .line 503
    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 499
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 508
    :cond_4
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/f/bd;
    .locals 8

    .prologue
    .line 150
    sget-object v0, Lcom/google/android/location/h/g;->c:Lcom/google/android/location/f/bc;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/location/f/bc;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/f/bd;

    move-result-object v0

    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/android/location/f/bd;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/google/android/location/h/g;->b(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 152
    invoke-static {}, Lcom/google/android/location/h/g;->a()Lcom/google/android/location/f/bd;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-static {p1, v3}, Lcom/google/android/location/h/g;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/google/android/location/h/g;->e:Lcom/google/android/location/h/l;

    invoke-virtual {v1}, Lcom/google/android/location/h/l;->a()V

    .line 157
    invoke-static {v0}, Lcom/google/android/location/h/g;->a(Ljava/util/Map;)Lcom/google/android/location/f/ak;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/google/android/location/h/g;->e:Lcom/google/android/location/h/l;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/google/android/location/h/g;->a(Ljava/util/Map;Ljava/util/Map;Lcom/google/android/location/f/ak;Lcom/google/android/location/h/l;)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 162
    if-nez v1, :cond_1

    .line 163
    invoke-static {}, Lcom/google/android/location/h/g;->a()Lcom/google/android/location/f/bd;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, v1, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ak;

    .line 167
    if-nez v0, :cond_2

    .line 168
    sget-object v0, Lcom/google/android/location/h/g;->b:Ljava/util/logging/Logger;

    const-string v1, "No location found by lre localizer"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/google/android/location/h/g;->a()Lcom/google/android/location/f/bd;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, v1, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 173
    const/16 v1, 0x50

    .line 174
    const-wide v6, 0x3fd3333333333333L    # 0.3

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_3

    .line 175
    const/16 v1, 0x4e

    .line 177
    :cond_3
    new-instance v2, Lcom/google/android/location/f/bd;

    const/4 v4, 0x2

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/google/android/location/f/bd;-><init>(ILcom/google/android/location/f/ak;ILjava/util/Set;)V

    move-object v0, v2

    goto :goto_0
.end method
