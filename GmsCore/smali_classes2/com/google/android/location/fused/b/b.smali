.class public final Lcom/google/android/location/fused/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/wearable/m;)Landroid/location/Location;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 87
    new-instance v0, Landroid/location/Location;

    const-string v1, "PROVIDER"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v1, "LATITUDE"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->g(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 89
    const-string v1, "LONGITUDE"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->g(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 90
    const-string v1, "TIME_NS"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->e(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 91
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "ELAPSED_REALTIME_NS"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->e(Ljava/lang/String;)J

    move-result-wide v2

    .line 93
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 95
    :cond_0
    invoke-static {v0}, Lcom/google/android/location/o/w;->e(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {v0}, Lcom/google/android/location/o/w;->f(Landroid/location/Location;)V

    .line 100
    :cond_1
    const-string v1, "ACCURACY"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    const-string v1, "ACCURACY"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->f(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 103
    :cond_2
    const-string v1, "BEARING"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    const-string v1, "BEARING"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->f(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 106
    :cond_3
    const-string v1, "SPEED"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    const-string v1, "SPEED"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->f(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 109
    :cond_4
    const-string v1, "ALTITUDE"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    const-string v1, "ALTITUDE"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->g(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 112
    :cond_5
    const-string v1, "MOCK"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 113
    invoke-static {v0}, Lcom/google/android/location/o/w;->f(Landroid/location/Location;)V

    .line 115
    :cond_6
    const-string v1, "LOCATION_TYPE"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_7

    .line 117
    invoke-static {v0, v1}, Lcom/google/android/location/o/w;->e(Landroid/location/Location;Ljava/lang/String;)V

    .line 119
    :cond_7
    const-string v1, "NO_GPS_LOCATION"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_8

    .line 121
    const-string v2, "noGPSLocation"

    invoke-static {v1}, Lcom/google/android/location/fused/b/b;->a(Lcom/google/android/gms/wearable/m;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Ljava/lang/String;Landroid/location/Location;)V

    .line 125
    :cond_8
    return-object v0
.end method

.method public static a(Landroid/location/Location;)Lcom/google/android/gms/wearable/m;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/gms/wearable/m;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/m;-><init>()V

    .line 45
    const-string v1, "VERSION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;I)V

    .line 46
    const-string v1, "PROVIDER"

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "LATITUDE"

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;D)V

    .line 48
    const-string v1, "LONGITUDE"

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;D)V

    .line 49
    const-string v1, "TIME_NS"

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    .line 50
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "ELAPSED_REALTIME_NS"

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;J)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const-string v1, "ACCURACY"

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;F)V

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const-string v1, "BEARING"

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;F)V

    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    const-string v1, "SPEED"

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;F)V

    .line 62
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    const-string v1, "ALTITUDE"

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;D)V

    .line 65
    :cond_4
    invoke-static {p0}, Lcom/google/android/location/o/w;->e(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    const-string v1, "MOCK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Z)V

    .line 68
    :cond_5
    invoke-static {p0}, Lcom/google/android/location/o/w;->d(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_6

    .line 70
    const-string v2, "LOCATION_TYPE"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_6
    const-string v1, "noGPSLocation"

    invoke-static {p0, v1}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_7

    .line 75
    const-string v2, "NO_GPS_LOCATION"

    invoke-static {v1}, Lcom/google/android/location/fused/b/b;->a(Landroid/location/Location;)Lcom/google/android/gms/wearable/m;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/wearable/m;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/m;)V

    .line 78
    :cond_7
    return-object v0
.end method
