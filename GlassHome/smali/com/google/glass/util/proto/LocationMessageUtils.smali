.class public final Lcom/google/glass/util/proto/LocationMessageUtils;
.super Ljava/lang/Object;
.source "LocationMessageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAndroidLocation(Lcom/google/glass/companion/Proto$LocationMessage;)Landroid/location/Location;
    .locals 5
    .param p0, "message"    # Lcom/google/glass/companion/Proto$LocationMessage;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getLocation()Lcom/google/glass/companion/Proto$Location;

    move-result-object v2

    .line 29
    .local v2, "proto":Lcom/google/glass/companion/Proto$Location;
    new-instance v1, Landroid/location/Location;

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "location":Landroid/location/Location;
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 31
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 38
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 41
    :cond_0
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 44
    :cond_1
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    .line 47
    :cond_2
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getBearing()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setBearing(F)V

    .line 50
    :cond_3
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getSpeed()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setSpeed(F)V

    .line 53
    :cond_4
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasTime()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 54
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setTime(J)V

    .line 56
    :cond_5
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasSatellitesUsedInFix()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasVisibleSatellites()Z

    move-result v3

    if-nez v3, :cond_6

    .line 57
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasLevelId()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasLevelNumberE3()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->hasReceiver()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 58
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasSatellitesUsedInFix()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 60
    const-string v3, "satellites"

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getSatellitesUsedInFix()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    :cond_7
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasVisibleSatellites()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 63
    const-string v3, "visible_satellites"

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getVisibleSatellites()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    :cond_8
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasLevelId()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 66
    const-string v3, "levelId"

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getLevelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_9
    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->hasLevelNumberE3()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 69
    const-string v3, "levelNumberE3"

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Location;->getLevelNumberE3()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    :cond_a
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->hasReceiver()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 72
    const-string v3, "receiver"

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getReceiver()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_b
    invoke-virtual {v1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 76
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_c
    return-object v1
.end method
