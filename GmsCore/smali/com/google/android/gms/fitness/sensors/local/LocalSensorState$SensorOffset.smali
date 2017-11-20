.class Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:I

.field final c:Ljava/lang/String;

.field d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/google/android/gms/fitness/sensors/local/m;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sensors/local/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;J)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->a:I

    .line 132
    iput p2, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->b:I

    .line 133
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->c:Ljava/lang/String;

    .line 134
    iput-wide p4, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->d:J

    .line 135
    return-void
.end method

.method constructor <init>(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->a:I

    .line 118
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->b:I

    .line 119
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->c:Ljava/lang/String;

    .line 121
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 122
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->d:J

    .line 123
    return-void
.end method


# virtual methods
.method final a()J
    .locals 4

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->d:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method final a(Landroid/hardware/SensorEvent;)Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 146
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 147
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 148
    cmp-long v6, v4, v2

    if-gtz v6, :cond_0

    cmp-long v6, v4, v12

    if-gtz v6, :cond_1

    .line 151
    :cond_0
    const-string v2, "Ignoring invalid timestamp for %s %s: "

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->c:Ljava/lang/String;

    aput-object v6, v3, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 163
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-wide v6, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->d:J

    add-long/2addr v6, v4

    .line 155
    iget-wide v8, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->d:J

    cmp-long v8, v8, v12

    if-ltz v8, :cond_2

    cmp-long v6, v6, v2

    if-lez v6, :cond_3

    .line 156
    :cond_2
    sub-long/2addr v2, v4

    .line 157
    const-string v4, "Offset %d was too large, changing to %d"

    new-array v5, v10, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 158
    iput-wide v2, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->d:J

    move v0, v1

    .line 159
    goto :goto_0

    .line 161
    :cond_3
    const-string v6, "sensorEvent for %s timestamp %d now %d offset %d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->c:Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v10

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 175
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/sensors/local/m;->a(Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;Landroid/os/Parcel;)V

    .line 176
    return-void
.end method
