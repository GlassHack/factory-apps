.class final enum Lcom/google/android/gms/fitness/sensors/local/f;
.super Lcom/google/android/gms/fitness/sensors/local/d;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 6

    .prologue
    .line 35
    const/4 v2, 0x1

    const/16 v3, 0x15

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/sensors/local/d;-><init>(Ljava/lang/String;IILcom/google/android/gms/fitness/data/DataType;B)V

    return-void
.end method


# virtual methods
.method final a(Landroid/hardware/SensorEvent;Lcom/google/android/gms/fitness/data/DataSource;JJ)Lcom/google/android/gms/fitness/data/DataPoint;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 39
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    .line 40
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 41
    invoke-static {p2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v2, v3, p5, p6}, Lcom/google/android/gms/fitness/sensors/local/d;->a(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(J)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a([F)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
