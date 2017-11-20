.class public Lcom/google/android/gms/location/places/GeometryUtils;
.super Ljava/lang/Object;


# direct methods
.method private strictfp constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static strictfp boundsFromCenterRadius(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 14
    .param p0, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "radiusMeters"    # D

    .prologue
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    const-wide v5, 0x415849c600000000L    # 6367000.0

    div-double v5, p1, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    const/4 v0, 0x2

    new-array v9, v0, [D

    const/4 v0, 0x0

    sub-double v10, v1, v5

    aput-wide v10, v9, v0

    const/4 v0, 0x1

    add-double/2addr v5, v1

    aput-wide v5, v9, v0

    const/4 v0, 0x2

    new-array v5, v0, [D

    fill-array-data v5, :array_0

    const/4 v0, 0x0

    const/4 v6, 0x0

    aget-wide v10, v9, v6

    const-wide v12, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v6, v10, v12

    if-gtz v6, :cond_0

    const/4 v0, 0x0

    const-wide v10, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v10, v9, v0

    const/4 v0, 0x1

    :cond_0
    const/4 v6, 0x1

    aget-wide v10, v9, v6

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v6, v10, v12

    if-ltz v6, :cond_1

    const/4 v0, 0x1

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    aput-wide v10, v9, v0

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    sub-double/2addr v10, v7

    mul-double v6, v7, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    cmpg-double v2, v6, v0

    if-gtz v2, :cond_2

    div-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const/4 v2, 0x0

    sub-double v6, v3, v0

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v6

    aput-wide v6, v5, v2

    const/4 v2, 0x1

    add-double/2addr v0, v3

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v0

    aput-wide v0, v5, v2

    :cond_2
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v1, 0x0

    aget-wide v1, v9, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/4 v3, 0x0

    aget-wide v3, v5, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x1

    aget-wide v2, v9, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-wide v4, v5, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v2

    :array_0
    .array-data 8
        -0x3ff6de04abbbd2e8L    # -3.141592653589793
        0x400921fb54442d16L    # 3.1415926535897922
    .end array-data
.end method

.method public static strictfp getEarthDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 12
    .param p0, "point1"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "point2"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    sub-double v8, v4, v0

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    sub-double v2, v6, v2

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v6, v8, v8

    mul-double/2addr v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x415849c600000000L    # 6367000.0

    mul-double/2addr v0, v2

    return-wide v0
.end method
