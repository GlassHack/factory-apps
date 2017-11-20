.class final enum Lcom/google/android/gms/fitness/sensors/local/g;
.super Lcom/google/android/gms/fitness/sensors/local/d;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 6

    .prologue
    .line 50
    const/4 v2, 0x2

    const/16 v3, 0x13

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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v1, p5, p6}, Lcom/google/android/gms/fitness/sensors/local/d;->a(JJ)J

    move-result-wide v0

    .line 55
    cmp-long v2, v0, p3

    if-gez v2, :cond_0

    .line 56
    const-string v0, "Got sensor event with timestamp before boot (%d): %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    move-wide v0, p3

    .line 61
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    invoke-virtual {v2, p3, p4, v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    new-array v1, v4, [I

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    return-object v0
.end method
