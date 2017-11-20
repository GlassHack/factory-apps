.class public Lcom/google/glass/maps/location/LocalLocationSource;
.super Lcom/google/glass/maps/location/BaseLocationSource;
.source "SourceFile"


# static fields
.field private static final LOCATION_CRITERIA_GPS:Landroid/location/Criteria;

.field private static final LOCATION_CRITERIA_NETWORK:Landroid/location/Criteria;

.field private static final NOT_STARTED:J = -0x1L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field final companionPropertiesReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private currentGpsProvider:Ljava/lang/String;

.field private currentGpsRequestStartTime:J

.field private gpsStatus:Landroid/location/GpsStatus;

.field private isRemoteGpsEnabled:Z

.field private lastGpsLocation:Landroid/location/Location;

.field private final locationManager:Landroid/location/LocationManager;

.field private final registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private wrapperGpsLocationListener:Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/location/LocalLocationSource;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    invoke-static {}, Lcom/google/glass/maps/location/LocalLocationSource;->createCriteriaFineAccuracy()Landroid/location/Criteria;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/location/LocalLocationSource;->LOCATION_CRITERIA_GPS:Landroid/location/Criteria;

    .line 45
    invoke-static {}, Lcom/google/glass/maps/location/LocalLocationSource;->createCriteriaLowPower()Landroid/location/Criteria;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/location/LocalLocationSource;->LOCATION_CRITERIA_NETWORK:Landroid/location/Criteria;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 128
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    .line 128
    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/maps/location/LocalLocationSource;-><init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 130
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->companionPropertiesReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lcom/google/glass/maps/location/LocalLocationSource;->isRemoteGpsEnabled(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->isRemoteGpsEnabled:Z

    .line 132
    sget-object v0, Lcom/google/glass/maps/location/LocalLocationSource;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "sticky broadcast: isRemoteGpsEnabled=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/google/glass/maps/location/LocalLocationSource;->isRemoteGpsEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 137
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper;

    .line 138
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/google/glass/maps/location/BaseLocationSource;-><init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;)V

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsRequestStartTime:J

    .line 75
    iput-boolean v2, p0, Lcom/google/glass/maps/location/LocalLocationSource;->isRemoteGpsEnabled:Z

    .line 79
    new-instance v0, Lcom/google/glass/maps/location/LocalLocationSource$1;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.glass.action.COMPANION_PROPERTIES_CHANGE"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/location/LocalLocationSource$1;-><init>(Lcom/google/glass/maps/location/LocalLocationSource;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->companionPropertiesReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 139
    iput-object p2, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    .line 140
    iput-object p3, p0, Lcom/google/glass/maps/location/LocalLocationSource;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 141
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .line 142
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/maps/location/LocalLocationSource;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/location/LocalLocationSource;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/glass/maps/location/LocalLocationSource;->isRemoteGpsEnabled(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/glass/maps/location/LocalLocationSource;)J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsRequestStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/glass/maps/location/LocalLocationSource;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->isRemoteGpsEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/maps/location/LocalLocationSource;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/glass/maps/location/LocalLocationSource;->isRemoteGpsEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/maps/location/LocalLocationSource;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/maps/location/LocalLocationSource;)Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->wrapperGpsLocationListener:Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/maps/location/LocalLocationSource;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/maps/location/LocalLocationSource;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->lastGpsLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/glass/maps/location/LocalLocationSource;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/glass/maps/location/LocalLocationSource;->lastGpsLocation:Landroid/location/Location;

    return-object p1
.end method

.method private static createCriteriaFineAccuracy()Landroid/location/Criteria;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 50
    return-object v0
.end method

.method private static createCriteriaLowPower()Landroid/location/Criteria;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 56
    return-object v0
.end method

.method private isRemoteGpsEnabled(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 271
    if-eqz p1, :cond_0

    const-string v1, "com.google.glass.extra.EXTRA_COMPANION_GPS_ENABLED"

    .line 272
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    return v0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGpsInfo()Lcom/google/android/maps/driveabout/location/r;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/google/glass/maps/location/LocalLocationSource;->gpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource;->gpsStatus:Landroid/location/GpsStatus;

    .line 252
    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource;->gpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 253
    add-int/lit8 v2, v2, 0x1

    .line 254
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 257
    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/location/r;

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/location/r;-><init>(II)V

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getLastKnownGpsLocation(Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;Lcom/google/glass/location/LocationManagerHelper$LocationComparator;)Landroid/location/Location;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    sget-object v1, Lcom/google/glass/maps/location/LocalLocationSource;->LOCATION_CRITERIA_GPS:Landroid/location/Criteria;

    invoke-virtual {v0, p2, p1, v1}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/aj;Landroid/location/Criteria;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLastKnownNetworkLocation(Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;Lcom/google/glass/location/LocationManagerHelper$LocationComparator;)Landroid/location/Location;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    sget-object v1, Lcom/google/glass/maps/location/LocalLocationSource;->LOCATION_CRITERIA_NETWORK:Landroid/location/Criteria;

    invoke-virtual {v0, p2, p1, v1}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/aj;Landroid/location/Criteria;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 244
    return-void
.end method

.method public removeLocationUpdates(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 210
    sget-object v0, Lcom/google/glass/maps/location/LocalLocationSource;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "removeLocationUpdates"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->wrapperGpsLocationListener:Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->wrapperGpsLocationListener:Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    invoke-static {v0}, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;->access$800(Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;)Lcom/google/android/maps/driveabout/location/b;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource;->wrapperGpsLocationListener:Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 217
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsProvider:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsRequestStartTime:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_1

    .line 218
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/a/d;

    move-result-object v0

    .line 219
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_GPS_LOCATION_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    iget-object v1, v1, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/a/d;->b(Ljava/lang/String;)Lcom/google/common/a/d;

    .line 221
    const-string v1, "s"

    iget-object v2, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsProvider:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "d"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    .line 227
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsRequestStartTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 221
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/a/d;->c(Ljava/lang/String;)Lcom/google/common/a/d;

    .line 228
    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/a/d;)V

    .line 231
    :cond_1
    iput-object v9, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsProvider:Ljava/lang/String;

    .line 232
    iput-wide v10, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsRequestStartTime:J

    .line 233
    iput-object v9, p0, Lcom/google/glass/maps/location/LocalLocationSource;->lastGpsLocation:Landroid/location/Location;

    .line 234
    return-void
.end method

.method public requestGpsLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V
    .locals 6

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->isRemoteGpsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    const-string v1, "remote_gps"

    .line 173
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "remote_gps"

    iput-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsProvider:Ljava/lang/String;

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsProvider:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 182
    sget-object v0, Lcom/google/glass/maps/location/LocalLocationSource;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "requesting %s location"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsProvider:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsRequestStartTime:J

    .line 184
    new-instance v0, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;-><init>(Lcom/google/glass/maps/location/LocalLocationSource;Lcom/google/android/maps/driveabout/location/b;JF)V

    iput-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->wrapperGpsLocationListener:Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    .line 185
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsProvider:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/maps/location/LocalLocationSource;->wrapperGpsLocationListener:Lcom/google/glass/maps/location/LocalLocationSource$LocationListenerWrapper;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 194
    :goto_1
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/google/glass/location/LocationHelper;->canUseLocalGps(Landroid/location/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "gps"

    iput-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsProvider:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsProvider:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->currentGpsRequestStartTime:J

    goto :goto_1
.end method

.method public requestNetworkLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V
    .locals 6

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/google/glass/maps/location/LocalLocationSource;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "requesting %s location"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "network"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 206
    :cond_0
    return-void
.end method

.method public stopListeningForCompanionPropertiesChange()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/glass/maps/location/LocalLocationSource;->companionPropertiesReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/maps/location/LocalLocationSource;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 264
    return-void
.end method
