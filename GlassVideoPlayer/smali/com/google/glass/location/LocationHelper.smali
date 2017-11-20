.class public Lcom/google/glass/location/LocationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REMOTE_GPS_PROVIDER:Ljava/lang/String; = "remote_gps"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSatelliteExtras(Landroid/location/Location;Landroid/location/GpsStatus;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 62
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/glass/location/LocationHelper;->isGpsLocation(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 73
    :goto_1
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 74
    add-int/lit8 v3, v3, 0x1

    .line 75
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    add-int/lit8 v0, v2, 0x1

    :goto_3
    move v2, v0

    .line 78
    goto :goto_2

    .line 80
    :cond_2
    const-string v0, "visible_satellites"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v0, "satellites"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public static canUseLocalGps(Landroid/location/LocationManager;)Z
    .locals 1

    .prologue
    .line 116
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 117
    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GPS_ENABLE_LOCAL:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGpsLocation(Landroid/location/Location;)Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGpsProvider(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 105
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "remote_gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNavigationAllowed(Landroid/location/LocationManager;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 137
    invoke-static {p0}, Lcom/google/glass/location/LocationHelper;->canUseLocalGps(Landroid/location/LocationManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    const-string v1, "remote_gps"

    .line 142
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 143
    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toLocationProto(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    .line 35
    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 36
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 37
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLatitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 38
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLongitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 39
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setAccuracy(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    const-string v2, "levelId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    const-string v2, "levelId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLevelId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 47
    :cond_1
    const-string v2, "levelNumberE3"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const-string v2, "levelNumberE3"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLevelNumber(F)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 51
    :cond_2
    return-object v0
.end method
