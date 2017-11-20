.class public final Lcom/google/android/location/collectionlib/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/cd;


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/cd;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([FI)F
    .locals 1

    .prologue
    .line 178
    array-length v0, p0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 179
    :cond_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 181
    :goto_0
    return v0

    :cond_1
    aget v0, p0, p1

    goto :goto_0
.end method

.method private static a(I)Lcom/google/android/location/collectionlib/cb;
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cb;

    .line 186
    if-nez v0, :cond_0

    .line 187
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->p:Lcom/google/android/location/collectionlib/cb;

    .line 189
    :cond_0
    return-object v0
.end method

.method private a(Lcom/google/android/location/collectionlib/cb;)Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cd;->b(Lcom/google/android/location/collectionlib/cd;)Lcom/google/android/location/collectionlib/SensorScannerConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cd;->b(Lcom/google/android/location/collectionlib/cd;)Lcom/google/android/location/collectionlib/SensorScannerConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/collectionlib/SensorScannerConfig;->a(Lcom/google/android/location/collectionlib/cb;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(IJJIFFF)V
    .locals 14

    .prologue
    .line 94
    iget-object v2, p0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/cd;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {p1}, Lcom/google/android/location/collectionlib/ce;->a(I)Lcom/google/android/location/collectionlib/cb;

    move-result-object v12

    .line 99
    invoke-direct {p0, v12}, Lcom/google/android/location/collectionlib/ce;->a(Lcom/google/android/location/collectionlib/cb;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    iget-object v2, v2, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    move v3, p1

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p6

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/location/collectionlib/ak;->a(IFFFIJJ)V

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v12, v0, v1}, Lcom/google/android/location/collectionlib/cd;->b(Lcom/google/android/location/collectionlib/cb;J)V

    goto :goto_0
.end method

.method public final a(I[J[J[F[F[F)V
    .locals 15

    .prologue
    .line 121
    iget-object v2, p0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/cd;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/collectionlib/ce;->a(I)Lcom/google/android/location/collectionlib/cb;

    move-result-object v13

    .line 126
    move-object/from16 v0, p4

    array-length v14, v0

    .line 127
    const/4 v2, 0x0

    move v12, v2

    :goto_0
    if-ge v12, v14, :cond_0

    .line 128
    invoke-direct {p0, v13}, Lcom/google/android/location/collectionlib/ce;->a(Lcom/google/android/location/collectionlib/cb;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    iget-object v2, v2, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    aget v4, p4, v12

    aget v5, p5, v12

    aget v6, p6, v12

    const/4 v7, 0x0

    aget-wide v8, p2, v12

    aget-wide v10, p3, v12

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/location/collectionlib/ak;->a(IFFFIJJ)V

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    aget-wide v4, p3, v12

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/location/collectionlib/cd;->b(Lcom/google/android/location/collectionlib/cb;J)V

    .line 127
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 20

    .prologue
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/cd;->f()V

    .line 49
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 50
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 55
    const/16 v3, 0x13

    if-eq v4, v3, :cond_0

    const/4 v3, 0x5

    if-ne v4, v3, :cond_2

    .line 58
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    invoke-static {v3}, Lcom/google/android/location/collectionlib/cd;->a(Lcom/google/android/location/collectionlib/cd;)[Z

    move-result-object v3

    aget-boolean v3, v3, v4

    if-nez v3, :cond_2

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cd;->a(Lcom/google/android/location/collectionlib/cd;)[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 60
    sget-boolean v2, Lcom/google/android/location/j/a;->d:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    iget-object v2, v2, Lcom/google/android/location/collectionlib/cd;->c:Lcom/google/android/location/p/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Ignored first event from sensor "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    const/16 v3, 0xe

    if-ne v4, v3, :cond_4

    .line 66
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p1

    iget v11, v0, Landroid/hardware/SensorEvent;->accuracy:I

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v3, 0x1

    aget v6, v2, v3

    const/4 v3, 0x2

    aget v7, v2, v3

    const/4 v3, 0x3

    aget v8, v2, v3

    const/4 v3, 0x4

    aget v9, v2, v3

    const/4 v3, 0x5

    aget v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/cd;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v4}, Lcom/google/android/location/collectionlib/ce;->a(I)Lcom/google/android/location/collectionlib/cb;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/location/collectionlib/ce;->a(Lcom/google/android/location/collectionlib/cb;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    iget-object v3, v3, Lcom/google/android/location/collectionlib/bz;->d:Lcom/google/android/location/collectionlib/ak;

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/location/collectionlib/ak;->a(IFFFFFFIJJ)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/collectionlib/ce;->a:Lcom/google/android/location/collectionlib/cd;

    invoke-virtual {v3, v2, v14, v15}, Lcom/google/android/location/collectionlib/cd;->b(Lcom/google/android/location/collectionlib/cb;J)V

    goto :goto_0

    .line 77
    :cond_4
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p1

    iget v0, v0, Landroid/hardware/SensorEvent;->accuracy:I

    move/from16 v16, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/ce;->a([FI)F

    move-result v17

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/ce;->a([FI)F

    move-result v18

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/ce;->a([FI)F

    move-result v19

    move-object/from16 v10, p0

    move v11, v4

    invoke-virtual/range {v10 .. v19}, Lcom/google/android/location/collectionlib/ce;->a(IJJIFFF)V

    goto :goto_0
.end method
