.class public Lcom/google/glass/maps/DirectionsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/location/b;


# static fields
.field static final DESTINATION_TRANSIT_THRESHOLD_METERS:I = 0x64

.field static final DESTINATION_WALKING_THRESHOLD_METERS:I = 0xa

.field private static final E6:J = 0xf4240L

.field protected static final LOCATION_UPDATE_INTERVAL_MS:J = 0x1f4L

.field protected static final MAX_USABLE_LOCATION_AGE_NS:J

.field protected static final MIN_GOOD_LOCATION_ACCURACY:F = 35.0f

.field protected static final MIN_USABLE_LOCATION_ACCURACY:F = 200.0f

.field protected static final MIN_WAIT_TIME_FOR_USABLE_LOCATION_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private activeItemParams:Lcom/google/glass/maps/NavigationActiveItemParams;

.field protected bestUsableLocation:Landroid/location/Location;

.field private callback:Lcom/google/glass/maps/DirectionsManager$DestinationCallback;

.field private final clock:Lcom/google/glass/time/Clock;

.field private final context:Landroid/content/Context;

.field private destinationThreshold:F

.field private eventLogPlayer:Lcom/google/android/maps/driveabout/c/t;

.field hasShownPowerTip:Z

.field private volatile isRouteCompleted:Z

.field private lastTransitDirectionsRequest:Lcom/google/glass/maps/directions/TransitDirectionsRequest;

.field private liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

.field protected locationListener:Landroid/location/LocationListener;

.field private final locationManager:Landroid/location/LocationManager;

.field private final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private locationPipeline:Lcom/google/android/maps/driveabout/location/m;

.field private navDataRequestListener:Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;

.field private final ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

.field final scheduler:Lcom/google/glass/maps/util/Scheduler;

.field private startDirectionsTime:J

.field private startTime:J

.field private transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

.field private trip:Lcom/google/glass/maps/directions/Trip;

.field private final uiManager:Lcom/google/glass/maps/UserInterfaceManager;

.field private usableLocationChecker:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-class v0, Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/DirectionsManager;->TAG:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/DirectionsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 109
    sget-wide v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_STALE_LOCATION_MILLIS:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/google/glass/maps/DirectionsManager;->MAX_USABLE_LOCATION_AGE_NS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/UserInterfaceManager;Lcom/google/glass/ongoing/OngoingActivityManager;Lcom/google/glass/time/Clock;Lcom/google/glass/location/LocationManagerHelper;Landroid/location/LocationManager;Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Lcom/google/glass/maps/util/Scheduler;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/maps/DirectionsManager;->isRouteCompleted:Z

    .line 105
    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/google/glass/maps/DirectionsManager;->destinationThreshold:F

    .line 241
    iput-object p1, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    .line 242
    iput-object p2, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    .line 243
    iput-object p3, p0, Lcom/google/glass/maps/DirectionsManager;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    .line 244
    iput-object p4, p0, Lcom/google/glass/maps/DirectionsManager;->clock:Lcom/google/glass/time/Clock;

    .line 245
    iput-object p5, p0, Lcom/google/glass/maps/DirectionsManager;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 246
    iput-object p6, p0, Lcom/google/glass/maps/DirectionsManager;->locationManager:Landroid/location/LocationManager;

    .line 247
    iput-object p7, p0, Lcom/google/glass/maps/DirectionsManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    .line 248
    iput-object p8, p0, Lcom/google/glass/maps/DirectionsManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    .line 249
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/maps/DirectionsManager;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/glass/maps/DirectionsManager;->startTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/UserInterfaceManager;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/maps/DirectionsManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/maps/directions/Trip;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/maps/DirectionsManager;Lcom/google/glass/userevent/UserEventHelper;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/DirectionsManager;->logLocationStat(Lcom/google/glass/userevent/UserEventHelper;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/maps/DirectionsManager;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/glass/maps/DirectionsManager;->stopLocationRequest()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/maps/DirectionsManager;Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/glass/maps/DirectionsManager;->buildWaypointFromLocation(Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/maps/DirectionsManager;Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZ)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/maps/DirectionsManager;->startDirectionsInternal(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/maps/DirectionsManager;)Lcom/google/glass/time/Clock;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->clock:Lcom/google/glass/time/Clock;

    return-object v0
.end method

.method private buildWaypointFromLocation(Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/ao;
    .locals 7

    .prologue
    const-wide v5, 0x412e848000000000L    # 1000000.0

    const/4 v1, 0x0

    .line 508
    new-instance v2, Lcom/google/android/maps/driveabout/model/m;

    .line 509
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V

    .line 511
    new-instance v3, Lcom/google/android/maps/driveabout/nav/ao;

    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/nav/ap;

    invoke-direct {v3, v0, v2, v1, v1}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/nav/ap;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static fixLocationElapsedTimeString(Landroid/location/Location;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 518
    if-nez p0, :cond_0

    .line 519
    const-string v0, "NULL"

    .line 522
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "et=\\+[^ ]*"

    .line 523
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "et="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLocationThenStartDirections(Lcom/google/android/maps/driveabout/nav/ao;IZ)V
    .locals 4

    .prologue
    .line 380
    .line 381
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/maps/DirectionsManager;->createLocationListener(Lcom/google/android/maps/driveabout/nav/ao;IZ)Landroid/location/LocationListener;

    move-result-object v0

    .line 383
    invoke-direct {p0, v0}, Lcom/google/glass/maps/DirectionsManager;->startLocationRequest(Landroid/location/LocationListener;)Z

    .line 390
    new-instance v0, Lcom/google/glass/maps/DirectionsManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/maps/DirectionsManager$1;-><init>(Lcom/google/glass/maps/DirectionsManager;Lcom/google/android/maps/driveabout/nav/ao;IZ)V

    iput-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->usableLocationChecker:Ljava/lang/Runnable;

    .line 405
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->usableLocationChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/maps/util/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 406
    return-void
.end method

.method private hideOngoingActivityInTimeline()V
    .locals 2

    .prologue
    .line 741
    invoke-static {}, Lcom/google/glass/maps/NavigationLauncherHelper;->isLiveCardEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->activeItemParams:Lcom/google/glass/maps/NavigationActiveItemParams;

    if-eqz v0, :cond_0

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->activeItemParams:Lcom/google/glass/maps/NavigationActiveItemParams;

    .line 746
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v0, v1}, Lcom/google/glass/ongoing/OngoingActivityManager;->hideOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    goto :goto_0
.end method

.method private initializeLocationPipeline()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    if-nez v0, :cond_0

    .line 253
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->TAG:Ljava/lang/String;

    const-string v1, "initializing location pipeline"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/google/android/maps/driveabout/location/m;

    .line 257
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/maps/NavigationApplicationState;->getLocationSource()Lcom/google/android/maps/driveabout/location/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/m;-><init>(Lcom/google/android/maps/driveabout/location/t;)V

    iput-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    .line 258
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/b;)V

    .line 261
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/m;->a(I)V

    .line 263
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/m;->c()V

    .line 266
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/google/android/maps/driveabout/c/a;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/c/a;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/c/b;->b()Lcom/google/android/maps/driveabout/location/b;

    move-result-object v1

    .line 269
    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 270
    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "remote_gps"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 272
    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "network"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 273
    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "android_orientation"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 275
    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->a(Lcom/google/android/maps/driveabout/g/f;)V

    .line 278
    :cond_0
    return-void
.end method

.method private logLocationStat(Lcom/google/glass/userevent/UserEventHelper;Landroid/location/Location;)V
    .locals 5

    .prologue
    .line 470
    const-string v0, "t"

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->clock:Lcom/google/glass/time/Clock;

    .line 471
    invoke-interface {v1}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/glass/maps/DirectionsManager;->startTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "acc"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 472
    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 473
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 470
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 475
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_LOCATION_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p1, v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method private showOngoingActivityInTimeline()V
    .locals 4

    .prologue
    .line 714
    invoke-static {}, Lcom/google/glass/maps/NavigationLauncherHelper;->isLiveCardEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->f()Ljava/lang/String;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v2, v2, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    invoke-static {v1, v2}, Lcom/google/glass/maps/directions/Step;->formatFromToDuration(Landroid/content/Context;[Lcom/google/glass/maps/directions/Step;)Ljava/lang/String;

    move-result-object v1

    .line 723
    new-instance v2, Lcom/google/glass/maps/NavigationActiveItemParams;

    sget-object v3, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;->DIRECTIONS:Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    invoke-direct {v2, v3}, Lcom/google/glass/maps/NavigationActiveItemParams;-><init>(Lcom/google/glass/maps/NavigationActiveItemParams$CardType;)V

    .line 725
    invoke-virtual {v2, v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->setDestinationName(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v2, v1}, Lcom/google/glass/maps/NavigationActiveItemParams;->setTimeString(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/Trip;->generateParcelableTripSummary(Landroid/content/Context;)Lcom/google/glass/util/ParcelableImageSpannable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->setTripSummary(Lcom/google/glass/util/ParcelableImageSpannable;)V

    .line 728
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/Trip;->getSchematicSegments()[Lcom/google/glass/maps/SchematicSegment;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->setSchematicSegments([Lcom/google/glass/maps/SchematicSegment;)V

    .line 731
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->activeItemParams:Lcom/google/glass/maps/NavigationActiveItemParams;

    invoke-static {v0, v2}, Lcom/google/glass/maps/util/Comparisons;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    iput-object v2, p0, Lcom/google/glass/maps/DirectionsManager;->activeItemParams:Lcom/google/glass/maps/NavigationActiveItemParams;

    .line 735
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->ongoingActivityManager:Lcom/google/glass/ongoing/OngoingActivityManager;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-virtual {v2}, Lcom/google/glass/maps/NavigationActiveItemParams;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/ongoing/OngoingActivityManager;->showOngoingActivity(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private startDirectionsInternal(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 336
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 337
    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    const-string v1, "GlassNav"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/util/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 340
    :cond_0
    new-instance v1, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;

    invoke-direct {v1, p0, v0, p4}, Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;-><init>(Lcom/google/glass/maps/DirectionsManager;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V

    iput-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->navDataRequestListener:Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;

    .line 341
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->navDataRequestListener:Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/k;)V

    .line 345
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/maps/driveabout/nav/ao;

    .line 346
    aput-object p1, v1, v4

    .line 347
    aput-object p2, v1, v5

    .line 348
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/glass/maps/NavigationApplicationState;->setDestination(Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 350
    new-instance v2, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;

    iget-object v3, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p3, v4}, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;-><init>(Landroid/content/Context;[Lcom/google/android/maps/driveabout/nav/ao;II)V

    .line 353
    if-nez p4, :cond_2

    .line 354
    invoke-virtual {v2, v5}, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->setMaxTripCount(I)Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;

    .line 356
    :cond_2
    invoke-virtual {v2}, Lcom/google/glass/maps/directions/TransitDirectionsRequest$Builder;->build()Lcom/google/glass/maps/directions/TransitDirectionsRequest;

    move-result-object v1

    .line 361
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v2

    if-nez v2, :cond_3

    .line 362
    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    .line 364
    :cond_3
    iput-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->lastTransitDirectionsRequest:Lcom/google/glass/maps/directions/TransitDirectionsRequest;

    .line 365
    return-void
.end method

.method private startLocationRequest(Landroid/location/LocationListener;)Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->bestUsableLocation:Landroid/location/Location;

    .line 480
    invoke-direct {p0}, Lcom/google/glass/maps/DirectionsManager;->stopLocationRequest()V

    .line 482
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    iput-object p1, p0, Lcom/google/glass/maps/DirectionsManager;->locationListener:Landroid/location/LocationListener;

    .line 486
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 487
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Requesting location from %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    :cond_0
    move v0, v6

    .line 494
    :goto_1
    return v0

    .line 493
    :cond_1
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No enabled location providers"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    .line 494
    goto :goto_1
.end method

.method private stopLocationRequest()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->usableLocationChecker:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/glass/maps/util/Scheduler;->unschedule(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationListener:Landroid/location/LocationListener;

    .line 505
    :cond_0
    return-void
.end method


# virtual methods
.method public createLocationListener(Lcom/google/android/maps/driveabout/nav/ao;IZ)Landroid/location/LocationListener;
    .locals 6

    .prologue
    .line 410
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 411
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/DirectionsManager;->startTime:J

    .line 413
    new-instance v0, Lcom/google/glass/maps/DirectionsManager$2;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/DirectionsManager$2;-><init>(Lcom/google/glass/maps/DirectionsManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/android/maps/driveabout/nav/ao;IZ)V

    return-object v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 662
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/m;->e()V

    .line 666
    iput-object v3, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->eventLogPlayer:Lcom/google/android/maps/driveabout/c/t;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->eventLogPlayer:Lcom/google/android/maps/driveabout/c/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/c/t;->d()V

    .line 671
    iput-object v3, p0, Lcom/google/glass/maps/DirectionsManager;->eventLogPlayer:Lcom/google/android/maps/driveabout/c/t;

    .line 673
    :cond_1
    return-void
.end method

.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->getCurrentStep()I

    move-result v0

    return v0
.end method

.method public getCurrentTrip()Lcom/google/glass/maps/directions/Trip;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    return-object v0
.end method

.method public getDestinationStep()Lcom/google/glass/maps/directions/Step;
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v0, v0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v1, v1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDurationInSeconds()I
    .locals 4

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/DirectionsManager;->startDirectionsTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLastTransitDirectionsRequest()Lcom/google/glass/maps/directions/TransitDirectionsRequest;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->lastTransitDirectionsRequest:Lcom/google/glass/maps/directions/TransitDirectionsRequest;

    return-object v0
.end method

.method public getLocationManager()Lcom/google/glass/location/LocationManagerHelper;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    return-object v0
.end method

.method protected getNavDataRequestListener()Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->navDataRequestListener:Lcom/google/glass/maps/DirectionsManager$NavDataRequestListener;

    return-object v0
.end method

.method public getStepPoint(Lcom/google/glass/maps/directions/Step;)Lcom/google/android/maps/driveabout/model/ab;
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v0, v0, Lcom/google/glass/maps/directions/Trip;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v0, v0, Lcom/google/glass/maps/directions/Trip;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    iget v1, p1, Lcom/google/glass/maps/directions/Step;->departurePointIndex:I

    .line 700
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFatalError()Z
    .locals 2

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRouteCompleted()Z
    .locals 1

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/google/glass/maps/DirectionsManager;->isRouteCompleted:Z

    return v0
.end method

.method public isShowingRouteOverview()Z
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingRoutePinned()Z
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->isOverviewPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 3

    .prologue
    .line 640
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onActivityPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    invoke-direct {p0}, Lcom/google/glass/maps/DirectionsManager;->stopLocationRequest()V

    .line 646
    invoke-direct {p0}, Lcom/google/glass/maps/DirectionsManager;->showOngoingActivityInTimeline()V

    .line 647
    return-void
.end method

.method public onActivityResume()V
    .locals 3

    .prologue
    .line 650
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onActivityResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/m;->c()V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->eventLogPlayer:Lcom/google/android/maps/driveabout/c/t;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->eventLogPlayer:Lcom/google/android/maps/driveabout/c/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/c/t;->c()V

    .line 659
    :cond_1
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->eventLogPlayer:Lcom/google/android/maps/driveabout/c/t;

    if-eqz v0, :cond_0

    .line 781
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/maps/DirectionsManager;->onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->onLocationChanged(Landroid/location/Location;)V

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v0, v0, Lcom/google/glass/maps/directions/Trip;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_3

    .line 789
    check-cast p1, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v0, v0, Lcom/google/glass/maps/directions/Trip;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->a(Lcom/google/android/maps/driveabout/model/m;)F

    move-result v0

    .line 790
    iget v1, p0, Lcom/google/glass/maps/DirectionsManager;->destinationThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 791
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Distance within threshold - stopping directions"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/DirectionsManager;->isRouteCompleted:Z

    .line 794
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->callback:Lcom/google/glass/maps/DirectionsManager$DestinationCallback;

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->callback:Lcom/google/glass/maps/DirectionsManager$DestinationCallback;

    invoke-interface {v0}, Lcom/google/glass/maps/DirectionsManager$DestinationCallback;->onDestinationReached()V

    .line 798
    :cond_2
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 799
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/TtsHelper;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    sget v2, Lcom/google/glass/maps/R$string;->you_have_arrived:I

    .line 800
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/TtsHelper;->speakText(Ljava/lang/String;)V

    .line 806
    :cond_3
    return-void
.end method

.method public onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/directions/TransitMapView;->onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V

    .line 813
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public resumeDirections()V
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v2}, Lcom/google/glass/maps/UserInterfaceManager;->getCurrentStep()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/maps/UserInterfaceManager;->showDirections(Lcom/google/glass/maps/directions/Trip;I)V

    .line 633
    return-void
.end method

.method public setCurrentStep(I)V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0, p1}, Lcom/google/glass/maps/UserInterfaceManager;->setCurrentStep(I)V

    .line 681
    return-void
.end method

.method public setDirectionsDestinationCallback(Lcom/google/glass/maps/DirectionsManager$DestinationCallback;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/glass/maps/DirectionsManager;->callback:Lcom/google/glass/maps/DirectionsManager$DestinationCallback;

    .line 558
    return-void
.end method

.method public setShowRouteOverview(Z)V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    if-nez v0, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/directions/TransitMapView;->showRouteOverview(Z)V

    goto :goto_0

    .line 856
    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->isOverviewPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    invoke-virtual {v0}, Lcom/google/glass/maps/directions/TransitMapView;->unpinOverviewMode()V

    goto :goto_0
.end method

.method public setTransitMapView(Lcom/google/glass/maps/directions/TransitMapView;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/google/glass/maps/DirectionsManager;->transitMapView:Lcom/google/glass/maps/directions/TransitMapView;

    .line 554
    return-void
.end method

.method public shouldInsertArtifactCard()Z
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->getState()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDirections(Lcom/google/glass/maps/directions/Trip;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 574
    iput-object p1, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    .line 577
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0, p1, v2}, Lcom/google/glass/maps/UserInterfaceManager;->showDirections(Lcom/google/glass/maps/directions/Trip;I)V

    .line 579
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION_NAVIGATION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 583
    iget-object v0, p1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v0, v0

    if-le v0, v2, :cond_0

    .line 584
    iget-object v0, p1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    iget-object v1, p1, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    .line 585
    invoke-virtual {v0}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x41200000    # 10.0f

    :goto_0
    iput v0, p0, Lcom/google/glass/maps/DirectionsManager;->destinationThreshold:F

    .line 589
    :cond_0
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getEventLog()Lcom/google/android/maps/driveabout/c/v;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_1

    .line 592
    new-instance v1, Lcom/google/android/maps/driveabout/c/t;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/c/t;-><init>()V

    iput-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->eventLogPlayer:Lcom/google/android/maps/driveabout/c/t;

    .line 593
    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager;->eventLogPlayer:Lcom/google/android/maps/driveabout/c/t;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/c/t;)V

    .line 594
    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->eventLogPlayer:Lcom/google/android/maps/driveabout/c/t;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/c/t;->a(Lcom/google/android/maps/driveabout/g/f;)V

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->isLiveCardPublished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->publishCard(Landroid/content/Context;)V

    .line 609
    :cond_2
    iget-boolean v0, p0, Lcom/google/glass/maps/DirectionsManager;->hasShownPowerTip:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationApplication;->shouldShowPowerTip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->scheduler:Lcom/google/glass/maps/util/Scheduler;

    new-instance v1, Lcom/google/glass/maps/DirectionsManager$3;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/DirectionsManager$3;-><init>(Lcom/google/glass/maps/DirectionsManager;)V

    const-wide/16 v2, 0xfa0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/maps/util/Scheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 624
    :cond_3
    return-void

    .line 585
    :cond_4
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0
.end method

.method public showTrips()V
    .locals 6

    .prologue
    .line 564
    const/4 v1, 0x0

    .line 565
    invoke-static {}, Lcom/google/glass/maps/NavigationApplicationState;->getInstance()Lcom/google/glass/maps/NavigationApplicationState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationApplicationState;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    .line 566
    invoke-static {v0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 564
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/DirectionsManager;->startDirections(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZZ)V

    .line 568
    return-void
.end method

.method public startDirections(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;I)V
    .locals 6

    .prologue
    .line 290
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/maps/DirectionsManager;->startDirections(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZZ)V

    .line 292
    return-void
.end method

.method public startDirections(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/maps/UserInterfaceManager;->setKeepScreenOn(Z)V

    .line 303
    invoke-direct {p0}, Lcom/google/glass/maps/DirectionsManager;->initializeLocationPipeline()V

    .line 304
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/UserInterfaceManager;->reset()V

    .line 305
    iput-boolean v2, p0, Lcom/google/glass/maps/DirectionsManager;->isRouteCompleted:Z

    .line 306
    iput-boolean v2, p0, Lcom/google/glass/maps/DirectionsManager;->hasShownPowerTip:Z

    .line 308
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "startDirections: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/DirectionsManager;->startDirectionsTime:J

    .line 311
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/google/glass/maps/util/TravelModeUtils;->setTravelMode(Landroid/content/Context;I)I

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    iget-object v2, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/maps/R$string;->directions:I

    .line 313
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 312
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/maps/UserInterfaceManager;->showLoadingMessage(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 315
    if-nez p1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/google/glass/maps/DirectionsManager;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-virtual {v1}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_0

    .line 318
    invoke-direct {p0, v1}, Lcom/google/glass/maps/DirectionsManager;->buildWaypointFromLocation(Landroid/location/Location;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object p1

    .line 322
    :cond_0
    if-eqz p1, :cond_2

    .line 323
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/glass/maps/DirectionsManager;->startDirectionsInternal(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;IZ)V

    .line 329
    :goto_0
    if-eqz p5, :cond_1

    .line 330
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/GlassUserEventLogger;->logDirectionsStart(Landroid/content/Context;)V

    .line 332
    :cond_1
    return-void

    .line 325
    :cond_2
    invoke-direct {p0, p2, v0, p4}, Lcom/google/glass/maps/DirectionsManager;->getLocationThenStartDirections(Lcom/google/android/maps/driveabout/nav/ao;IZ)V

    goto :goto_0
.end method

.method public stopDirections(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 534
    sget-object v0, Lcom/google/glass/maps/DirectionsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stopDirections"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    invoke-direct {p0}, Lcom/google/glass/maps/DirectionsManager;->stopLocationRequest()V

    .line 537
    if-eqz p1, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/google/glass/maps/DirectionsManager;->hideOngoingActivityInTimeline()V

    .line 540
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->unpublishCard()V

    .line 544
    :cond_0
    iput-object v3, p0, Lcom/google/glass/maps/DirectionsManager;->trip:Lcom/google/glass/maps/directions/Trip;

    .line 546
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/location/m;->b(Lcom/google/android/maps/driveabout/location/b;)V

    .line 548
    iput-object v3, p0, Lcom/google/glass/maps/DirectionsManager;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    .line 550
    :cond_1
    return-void
.end method
