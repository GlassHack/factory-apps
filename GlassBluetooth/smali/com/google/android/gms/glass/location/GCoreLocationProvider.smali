.class public Lcom/google/android/gms/glass/location/GCoreLocationProvider;
.super Ljava/lang/Object;
.source "GCoreLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;,
        Lcom/google/android/gms/glass/location/GCoreLocationProvider$GCoreLocationProviderHolder;
    }
.end annotation


# static fields
.field static final REMOTE_GPS_PROVIDER:Ljava/lang/String; = "remote_gps"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private volatile initialized:Z

.field intentToRemoteGpsRequestIntervalsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field listenerToRemoteGpsRequestIntervalsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private locationClient:Lcom/google/android/gms/location/LocationClient;

.field private locationManager:Landroid/location/LocationManager;

.field final locationServicesConnectionCallbacks:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final locationServicesConnectionFailedListener:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

.field pendingLocationUpdateRequests:Ljava/util/concurrent/ConcurrentMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;",
            ">;"
        }
    .end annotation
.end field

.field final remoteGpsLocationListener:Landroid/location/LocationListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 99
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 101
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->listenerToRemoteGpsRequestIntervalsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 108
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 110
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->intentToRemoteGpsRequestIntervalsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 117
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 119
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakValues()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->pendingLocationUpdateRequests:Ljava/util/concurrent/ConcurrentMap;

    .line 125
    new-instance v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;-><init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;)V

    iput-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationServicesConnectionCallbacks:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .line 158
    new-instance v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$2;-><init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;)V

    iput-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationServicesConnectionFailedListener:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .line 166
    new-instance v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$3;-><init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;)V

    iput-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsLocationListener:Landroid/location/LocationListener;

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gms/glass/location/GCoreLocationProvider;)Lcom/google/android/gms/location/LocationClient;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gms/glass/location/GCoreLocationProvider;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/app/PendingIntent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gms/glass/location/GCoreLocationProvider;
    .param p1, "x1"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "x2"    # Lcom/google/android/gms/location/LocationListener;
    .param p3, "x3"    # Landroid/app/PendingIntent;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->requestRemoteGpsIfNeeded(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/glass/location/GCoreLocationProvider;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$GCoreLocationProviderHolder;->access$000()Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    move-result-object v0

    return-object v0
.end method

.method private requestRemoteGpsIfNeeded(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getPriority()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getInterval()J

    move-result-wide v2

    .line 438
    .local v2, "newInterval":J
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 440
    .local v6, "currentInterval":Ljava/lang/Long;
    if-eqz v6, :cond_2

    .line 441
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    .line 442
    :cond_2
    sget-object v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "requesting remote gps"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    if-eqz v6, :cond_3

    .line 444
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "remote_gps"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 453
    if-eqz p2, :cond_5

    .line 454
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->listenerToRemoteGpsRequestIntervalsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 455
    :cond_5
    if-eqz p3, :cond_0

    .line 456
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->intentToRemoteGpsRequestIntervalsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private restorePreviousRemoteGpsRequestIfNeeded(J)V
    .locals 9
    .param p1, "removedInterval"    # J

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    sget-object v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No active remote gps requests, but have an active gps request."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 476
    .local v6, "currentInterval":J
    cmp-long v0, p1, v6

    if-nez v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 480
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    .line 481
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 482
    .local v8, "nextInterval":Ljava/lang/Long;
    if-eqz v8, :cond_0

    .line 483
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "remote_gps"

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 487
    .end local v8    # "nextInterval":Ljava/lang/Long;
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private warnNotConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    if-nez v0, :cond_0

    .line 493
    sget-object v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received location update request before init."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    sget-object v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Received location update request while disconnected from locationClient."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getLastLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLocationClient()Lcom/google/android/gms/location/LocationClient;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    return-object v0
.end method

.method getLocationManager()Landroid/location/LocationManager;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 240
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method getRemoteGpsRequestIntervals()Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    iget-boolean v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->initialized:Z

    if-nez v1, :cond_0

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->initialized:Z

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v1, Lcom/google/android/gms/location/LocationClient;

    iget-object v2, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationServicesConnectionCallbacks:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iget-object v3, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationServicesConnectionFailedListener:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    .line 207
    iget-object v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationClient;->connect()V

    .line 209
    const-string v1, "location"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 214
    .end local v0    # "applicationContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 212
    :cond_0
    sget-object v1, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Already initialized, skip init"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reInitForTest(Landroid/location/LocationManager;Lcom/google/android/gms/location/LocationClient;)V
    .locals 1
    .param p1, "mockLocationManager"    # Landroid/location/LocationManager;
    .param p2, "mockLocationClient"    # Lcom/google/android/gms/location/LocationClient;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->initialized:Z

    .line 228
    iput-object p1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 229
    iput-object p2, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->remoteGpsRequestIntervals:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->listenerToRemoteGpsRequestIntervalsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->intentToRemoteGpsRequestIntervalsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 234
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->pendingLocationUpdateRequests:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 235
    return-void
.end method

.method public removeLocationUpdate(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/location/LocationClient;->removeLocationUpdates(Landroid/app/PendingIntent;)V

    .line 393
    iget-object v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->intentToRemoteGpsRequestIntervalsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 394
    .local v0, "removedInterval":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->restorePreviousRemoteGpsRequestIfNeeded(J)V

    .line 397
    :cond_0
    return-void
.end method

.method public removeLocationUpdate(Lcom/google/android/gms/location/LocationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/gms/location/LocationListener;

    .prologue
    .line 377
    iget-object v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/location/LocationClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    .line 378
    iget-object v1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->listenerToRemoteGpsRequestIntervalsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 379
    .local v0, "removedInterval":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->restorePreviousRemoteGpsRequestIfNeeded(J)V

    .line 382
    :cond_0
    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->requestRemoteGpsIfNeeded(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/app/PendingIntent;)V

    .line 367
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->warnNotConnected()V

    .line 364
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->pendingLocationUpdateRequests:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;-><init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .locals 3
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationListener;

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->requestRemoteGpsIfNeeded(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/app/PendingIntent;)V

    .line 291
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->warnNotConnected()V

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->pendingLocationUpdateRequests:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;-><init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 3
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->locationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->requestRemoteGpsIfNeeded(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/app/PendingIntent;)V

    .line 331
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->warnNotConnected()V

    .line 328
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;->pendingLocationUpdateRequests:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;-><init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
