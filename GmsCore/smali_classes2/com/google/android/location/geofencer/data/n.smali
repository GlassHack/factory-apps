.class public final Lcom/google/android/location/geofencer/data/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/LinkedList;

.field public c:Landroid/util/Pair;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/data/n;->c:Landroid/util/Pair;

    .line 83
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/location/geofencer/data/n;->a:I

    .line 84
    return-void
.end method

.method private static a(Ljava/util/List;)F
    .locals 18

    .prologue
    .line 275
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 276
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 277
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 278
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    .line 279
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 280
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/location/Location;

    .line 281
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 282
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 284
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    .line 285
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_2

    move-wide v2, v0

    :cond_0
    move-wide v6, v0

    :cond_1
    move-wide v0, v10

    .line 296
    goto :goto_0

    .line 288
    :cond_2
    cmpg-double v8, v2, v6

    if-gtz v8, :cond_4

    cmpg-double v8, v2, v0

    if-gtz v8, :cond_3

    cmpg-double v8, v0, v6

    if-gtz v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    if-nez v8, :cond_1

    .line 289
    sub-double v12, v2, v0

    const-wide v14, 0x4076800000000000L    # 360.0

    add-double/2addr v12, v14

    const-wide v14, 0x4076800000000000L    # 360.0

    rem-double/2addr v12, v14

    sub-double v14, v0, v6

    const-wide v16, 0x4076800000000000L    # 360.0

    add-double v14, v14, v16

    const-wide v16, 0x4076800000000000L    # 360.0

    rem-double v14, v14, v16

    cmpg-double v8, v12, v14

    if-gez v8, :cond_0

    move-wide v2, v0

    move-wide v0, v10

    .line 291
    goto :goto_0

    .line 288
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    cmpg-double v8, v2, v0

    if-lez v8, :cond_5

    cmpg-double v8, v0, v6

    if-gtz v8, :cond_6

    :cond_5
    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 297
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [F

    .line 298
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 299
    sget-boolean v9, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v9, :cond_8

    .line 300
    const-string v9, "LocationHistory"

    const-string v10, "SW=%.6f,%.6f, NE=%.6f,%.6f d=%.6f"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v11, v0

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_8
    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method


# virtual methods
.method public final a(JJJI)Z
    .locals 11

    .prologue
    .line 224
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const/4 v2, 0x0

    .line 264
    :goto_0
    return v2

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 231
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 232
    const/4 v2, 0x0

    goto :goto_0

    .line 236
    :cond_1
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 237
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_1
    if-ltz v4, :cond_3

    .line 238
    iget-object v2, p0, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 239
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v6, p1

    if-gtz v3, :cond_3

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, p1, v6

    cmp-long v3, v6, p3

    if-gtz v3, :cond_3

    .line 242
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/high16 v6, 0x42480000    # 50.0f

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_2

    .line 243
    const/4 v3, 0x0

    invoke-virtual {v5, v3, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 237
    :cond_2
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_1

    .line 252
    :cond_3
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 253
    move/from16 v0, p7

    if-lt v3, v0, :cond_4

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v2, v6, p5

    if-gez v2, :cond_6

    .line 255
    :cond_4
    sget-boolean v2, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v2, :cond_5

    .line 256
    const-string v2, "LocationHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "History too short to determine if user is stationary: #locations="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 264
    :cond_6
    invoke-static {v5}, Lcom/google/android/location/geofencer/data/n;->a(Ljava/util/List;)F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
