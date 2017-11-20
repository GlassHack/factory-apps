.class final enum Lcom/google/android/gms/fitness/sensors/local/e;
.super Lcom/google/android/gms/fitness/sensors/local/d;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/sensors/local/d;-><init>(Ljava/lang/String;IILcom/google/android/gms/fitness/data/DataType;B)V

    return-void
.end method


# virtual methods
.method final a(Landroid/hardware/SensorEvent;Lcom/google/android/gms/fitness/data/DataSource;JJ)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    invoke-static {p2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v2, v3, p5, p6}, Lcom/google/android/gms/fitness/sensors/local/d;->a(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(J)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v1, v4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v1, v5

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a([F)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    return-object v0
.end method
