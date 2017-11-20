.class public Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:J

.field final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/google/android/gms/fitness/sensors/local/c;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sensors/local/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->a:I

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    :goto_0
    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->b:J

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->c:Ljava/util/List;

    .line 58
    return-void

    .line 56
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method constructor <init>(IJLjava/util/List;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->a:I

    .line 66
    iput-wide p2, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->b:J

    .line 67
    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->c:Ljava/util/List;

    .line 68
    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/Sensor;)Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;

    .line 88
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->b:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 198
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/sensors/local/c;->a(Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;Landroid/os/Parcel;)V

    .line 199
    return-void
.end method
