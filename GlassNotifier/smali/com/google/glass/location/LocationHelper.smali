.class public Lcom/google/glass/location/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# static fields
.field public static final REMOTE_GPS_PROVIDER:Ljava/lang/String; = "remote_gps"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSatelliteExtras(Landroid/location/Location;Landroid/location/GpsStatus;)V
    .locals 6
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "status"    # Landroid/location/GpsStatus;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/glass/location/LocationHelper;->isGpsLocation(Landroid/location/Location;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 68
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    const/4 v3, 0x0

    .line 72
    .local v3, "visibleSatellites":I
    const/4 v2, 0x0

    .line 73
    .local v2, "satellitesUsedInFix":I
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 74
    .local v1, "satellite":Landroid/location/GpsSatellite;
    add-int/lit8 v3, v3, 0x1

    .line 75
    invoke-virtual {v1}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v1    # "satellite":Landroid/location/GpsSatellite;
    :cond_4
    const-string v4, "visible_satellites"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v4, "satellites"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static canUseLocalGps(Landroid/location/LocationManager;)Z
    .locals 2
    .param p0, "locationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 116
    const-string v1, "gps"

    .line 117
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 118
    .local v0, "isLocalGpsProviderEnabled":Z
    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->GPS_ENABLE_LOCAL:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static canUseRemoteGps(Landroid/content/Context;Landroid/location/LocationManager;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 137
    const-string v2, "remote_gps"

    invoke-virtual {p1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 139
    .local v1, "isRemoteGpsProviderEnabled":Z
    invoke-static {}, Lcom/google/glass/companion/CompanionStateHelper$Provider;->getInstance()Lcom/google/glass/companion/CompanionStateHelper$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/companion/CompanionStateHelper$Provider;->get()Lcom/google/glass/companion/CompanionStateHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/companion/CompanionStateHelper;->isRemoteGpsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 140
    .local v0, "isRemoteGpsEnabled":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isGpsLocation(Landroid/location/Location;)Z
    .locals 2
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "provider":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/location/LocationHelper;->isGpsProvider(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isGpsProvider(Ljava/lang/String;)Z
    .locals 1
    .param p0, "provider"    # Ljava/lang/String;

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

.method public static isNavigationAllowed(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 160
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->ANA:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v2

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    .line 169
    .local v1, "locationManager":Landroid/location/LocationManager;
    invoke-static {v1}, Lcom/google/glass/location/LocationHelper;->canUseLocalGps(Landroid/location/LocationManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-static {v0, v1}, Lcom/google/glass/location/LocationHelper;->canUseRemoteGps(Landroid/content/Context;Landroid/location/LocationManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static toLocationProto(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Location;
    .locals 4
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v1, Lcom/google/googlex/glass/common/proto/nano/Location;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/nano/Location;-><init>()V

    .line 34
    .local v1, "locationProto":Lcom/google/googlex/glass/common/proto/nano/Location;
    invoke-virtual {v1, p1}, Lcom/google/googlex/glass/common/proto/nano/Location;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 35
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlex/glass/common/proto/nano/Location;->setTimestamp(J)Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 36
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlex/glass/common/proto/nano/Location;->setLatitude(D)Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 37
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlex/glass/common/proto/nano/Location;->setLongitude(D)Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 38
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/googlex/glass/common/proto/nano/Location;->setAccuracy(D)Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 43
    const-string v2, "levelId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const-string v2, "levelId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/nano/Location;->setLevelId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 46
    :cond_1
    const-string v2, "levelNumberE3"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    const-string v2, "levelNumberE3"

    .line 48
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/nano/Location;->setLevelNumber(F)Lcom/google/googlex/glass/common/proto/nano/Location;

    .line 51
    :cond_2
    return-object v1
.end method
