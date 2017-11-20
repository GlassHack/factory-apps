.class public final Lcom/google/android/location/geofencer/data/m;
.super Lcom/google/android/location/geofencer/data/j;
.source "SourceFile"


# instance fields
.field d:D

.field private final e:D


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;)V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/location/geofencer/data/j;-><init>(Lcom/google/android/gms/location/internal/ParcelableGeofence;)V

    .line 48
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/m;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/location/geofencer/data/m;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/geofencer/data/m;->e:D

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 20

    .prologue
    .line 57
    invoke-super/range {p0 .. p1}, Lcom/google/android/location/geofencer/data/j;->a(Landroid/location/Location;)V

    .line 60
    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 61
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/m;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v4}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v4

    float-to-double v4, v4

    .line 62
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 63
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 64
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v2

    mul-double/2addr v8, v2

    .line 66
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/geofencer/data/m;->c:D

    add-double v10, v6, v4

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_0

    .line 68
    const-wide/16 v2, 0x0

    .line 76
    :goto_0
    div-double/2addr v2, v8

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/location/geofencer/data/m;->d:D

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/geofencer/data/m;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->f()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 79
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/geofencer/data/m;->d:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    .line 80
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/geofencer/data/m;->d:D

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/google/android/location/geofencer/data/m;->b:B

    .line 86
    :goto_3
    return-void

    .line 69
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/geofencer/data/m;->c:D

    sub-double v10, v6, v4

    cmpg-double v2, v2, v10

    if-gtz v2, :cond_1

    .line 71
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/geofencer/data/m;->e:D

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    goto :goto_0

    .line 74
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/location/geofencer/data/m;->c:D

    mul-double v10, v4, v4

    mul-double v12, v2, v2

    mul-double v14, v4, v4

    add-double/2addr v12, v14

    mul-double v14, v6, v6

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v2

    mul-double/2addr v14, v4

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    mul-double v12, v6, v6

    mul-double v14, v2, v2

    mul-double v16, v6, v6

    add-double v14, v14, v16

    mul-double v16, v4, v4

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v2

    mul-double v16, v16, v6

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    neg-double v0, v2

    move-wide/from16 v16, v0

    add-double v16, v16, v4

    add-double v16, v16, v6

    add-double v18, v2, v4

    sub-double v18, v18, v6

    mul-double v16, v16, v18

    sub-double v18, v2, v4

    add-double v18, v18, v6

    mul-double v16, v16, v18

    add-double/2addr v2, v4

    add-double/2addr v2, v6

    mul-double v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v14

    add-double v4, v10, v12

    sub-double v2, v4, v2

    goto/16 :goto_0

    .line 77
    :cond_2
    const-wide v2, 0x3feb333333333333L    # 0.85

    goto/16 :goto_1

    .line 80
    :cond_3
    const/4 v2, 0x3

    goto :goto_2

    .line 83
    :cond_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/location/geofencer/data/m;->d:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v2, v6, v2

    cmpg-double v2, v4, v2

    if-gtz v2, :cond_5

    const/4 v2, 0x2

    :goto_4
    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/google/android/location/geofencer/data/m;->b:B

    goto/16 :goto_3

    :cond_5
    const/4 v2, 0x4

    goto :goto_4
.end method
