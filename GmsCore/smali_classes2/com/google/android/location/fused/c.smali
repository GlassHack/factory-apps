.class public final Lcom/google/android/location/fused/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 66
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 70
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)J
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const-wide/32 v2, 0xf4240

    .line 30
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 34
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 48
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    .line 34
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p0}, Lcom/google/android/location/o/w;->e(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    mul-long/2addr v0, v2

    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v2

    goto :goto_0
.end method
