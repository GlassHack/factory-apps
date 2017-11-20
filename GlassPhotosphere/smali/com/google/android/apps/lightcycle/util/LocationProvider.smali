.class public Lcom/google/android/apps/lightcycle/util/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/util/LocationProvider$1;,
        Lcom/google/android/apps/lightcycle/util/LocationProvider$MyLocationListener;
    }
.end annotation


# static fields
.field private static final LOCATION_EXPIRE_PERIOD_MSEC:I = 0x1d4c0

.field private static final LOCATION_UPDATE_FREQUENCY_MSEC:I = 0x1388

.field private static final MIN_DISTANCE:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentLocation:Landroid/location/Location;

.field private gpsLocationListener:Landroid/location/LocationListener;

.field private final locationManager:Landroid/location/LocationManager;

.field private networkLocationListener:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/android/apps/lightcycle/util/LocationProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 0
    .param p1, "locationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/util/LocationProvider;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/util/LocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/apps/lightcycle/util/LocationProvider;->updateCurrentLocation(Landroid/location/Location;)V

    return-void
.end method

.method private isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 100
    if-nez p2, :cond_0

    .line 102
    const/4 v10, 0x1

    .line 140
    :goto_0
    return v10

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 107
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 108
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 109
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 114
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 115
    const/4 v10, 0x1

    goto :goto_0

    .line 107
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 108
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 109
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 117
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 118
    const/4 v10, 0x0

    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 124
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 125
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 126
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 129
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/google/android/apps/lightcycle/util/LocationProvider;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 133
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    .line 134
    const/4 v10, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 125
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 126
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 135
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 136
    const/4 v10, 0x1

    goto :goto_0

    .line 137
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 138
    const/4 v10, 0x1

    goto :goto_0

    .line 140
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private isRunning()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->gpsLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->networkLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider1"    # Ljava/lang/String;
    .param p2, "provider2"    # Ljava/lang/String;

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 146
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateCurrentLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->currentLocation:Landroid/location/Location;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/lightcycle/util/LocationProvider;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->currentLocation:Landroid/location/Location;

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method public startProvider()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x1388

    const/4 v6, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/util/LocationProvider;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    sget-object v0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->TAG:Ljava/lang/String;

    const-string v1, "LocationProvider is already running."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    new-instance v0, Lcom/google/android/apps/lightcycle/util/LocationProvider$MyLocationListener;

    invoke-direct {v0, p0, v6}, Lcom/google/android/apps/lightcycle/util/LocationProvider$MyLocationListener;-><init>(Lcom/google/android/apps/lightcycle/util/LocationProvider;Lcom/google/android/apps/lightcycle/util/LocationProvider$1;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->gpsLocationListener:Landroid/location/LocationListener;

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->gpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/google/android/apps/lightcycle/util/LocationProvider$MyLocationListener;

    invoke-direct {v0, p0, v6}, Lcom/google/android/apps/lightcycle/util/LocationProvider$MyLocationListener;-><init>(Lcom/google/android/apps/lightcycle/util/LocationProvider;Lcom/google/android/apps/lightcycle/util/LocationProvider$1;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->networkLocationListener:Landroid/location/LocationListener;

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->networkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public stopProvider()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->currentLocation:Landroid/location/Location;

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->gpsLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->gpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 61
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->gpsLocationListener:Landroid/location/LocationListener;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->networkLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->networkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 65
    iput-object v2, p0, Lcom/google/android/apps/lightcycle/util/LocationProvider;->networkLocationListener:Landroid/location/LocationListener;

    .line 67
    :cond_1
    return-void
.end method
