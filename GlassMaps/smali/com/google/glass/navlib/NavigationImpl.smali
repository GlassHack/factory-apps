.class public Lcom/google/glass/navlib/NavigationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/location/b;
.implements Lcom/google/android/maps/driveabout/nav/n;
.implements Lcom/google/glass/navlib/Navigation;


# static fields
.field private static final GLASS_TILE_STORES:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private alertController:Lcom/google/android/maps/driveabout/b/a;

.field private alerter:Lcom/google/glass/navlib/Alerter;

.field private final clientFeatureRestrictions:Lcom/google/googlenav/a;

.field private final context:Landroid/content/Context;

.field private final initLatch:Ljava/util/concurrent/CountDownLatch;

.field private isLocationPipelineRunning:Z

.field private isNavigationRunning:Z

.field private isRerouting:Z

.field private isRouteCompleted:Z

.field private listener:Lcom/google/glass/navlib/NavigationListener;

.field private location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

.field private final locationListener:Lcom/google/android/maps/driveabout/location/b;

.field private locationPipeline:Lcom/google/android/maps/driveabout/location/m;

.field private final navEventListener:Lcom/google/android/maps/driveabout/nav/n;

.field private navState:Lcom/google/android/maps/driveabout/nav/p;

.field private navThread:Lcom/google/android/maps/driveabout/nav/q;

.field private notifiedNetworkFailure:Z

.field private orientation:Lcom/google/android/maps/driveabout/location/z;

.field private routeFetcher:Lcom/google/android/maps/driveabout/b/t;

.field private travelMode:I

.field private final wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

.field private waypoints:[Lcom/google/android/maps/driveabout/nav/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/navlib/NavigationImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->BASE:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;->ROAD_GRAPH:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/navlib/NavigationImpl;->GLASS_TILE_STORES:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 69
    new-instance v0, Lcom/google/googlenav/a;

    invoke-direct {v0}, Lcom/google/googlenav/a;-><init>()V

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->clientFeatureRestrictions:Lcom/google/googlenav/a;

    .line 71
    new-instance v0, Lcom/google/glass/navlib/CrossThreadLocationListener;

    invoke-direct {v0, p0}, Lcom/google/glass/navlib/CrossThreadLocationListener;-><init>(Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationListener:Lcom/google/android/maps/driveabout/location/b;

    .line 73
    new-instance v0, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;

    invoke-direct {v0, p0}, Lcom/google/glass/navlib/CrossThreadNavigationEventListener;-><init>(Lcom/google/android/maps/driveabout/nav/n;)V

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->navEventListener:Lcom/google/android/maps/driveabout/nav/n;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    .line 102
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    .line 103
    const-string v1, "GlassNavWakeLock"

    invoke-interface {v0, v2, v1}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/navlib/NavigationImpl;Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/glass/navlib/NavigationImpl;->initializeInternal(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/navlib/NavigationImpl;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->initLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/navlib/NavigationImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/navlib/NavigationImpl;)Lcom/google/android/maps/driveabout/b/a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->alertController:Lcom/google/android/maps/driveabout/b/a;

    return-object v0
.end method

.method private fetchFeatureRestrictions()V
    .locals 2

    .prologue
    .line 455
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 460
    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->clientFeatureRestrictions:Lcom/google/googlenav/a;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/a;->a([I)V

    .line 461
    return-void

    .line 455
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private initializeInternal(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 134
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/glass/navlib/NavigationImpl;->GLASS_TILE_STORES:[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    sget v2, Lcom/google/glass/navlib/R$raw;->dav_k2:I

    new-instance v3, Lcom/google/googlenav/a/a;

    iget-object v4, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/googlenav/a/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;Ljava/lang/String;ILcom/google/googlenav/common/i;)V

    .line 138
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v5}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Z)V

    .line 140
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(I)V

    .line 146
    invoke-direct {p0}, Lcom/google/glass/navlib/NavigationImpl;->fetchFeatureRestrictions()V

    .line 149
    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/glass/navlib/NavigationImpl$2;

    invoke-direct {v2, p0}, Lcom/google/glass/navlib/NavigationImpl$2;-><init>(Lcom/google/glass/navlib/NavigationImpl;)V

    invoke-static {v1, v0, v2, v5}, Lcom/google/android/maps/driveabout/util/n;->a(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/Runnable;Z)V

    .line 157
    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/nav/c;->a(Landroid/content/Context;Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V

    .line 160
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/q;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->navThread:Lcom/google/android/maps/driveabout/nav/q;

    .line 161
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->navThread:Lcom/google/android/maps/driveabout/nav/q;

    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->navEventListener:Lcom/google/android/maps/driveabout/nav/n;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/nav/n;)V

    .line 164
    new-instance v0, Lcom/google/android/maps/driveabout/location/m;

    invoke-direct {v0, p2}, Lcom/google/android/maps/driveabout/location/m;-><init>(Lcom/google/android/maps/driveabout/location/t;)V

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    .line 165
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->locationListener:Lcom/google/android/maps/driveabout/location/b;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/b;)V

    .line 166
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->navThread:Lcom/google/android/maps/driveabout/nav/q;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/b;)V

    .line 170
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/google/android/maps/driveabout/c/a;

    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/c/a;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/c/b;->b()Lcom/google/android/maps/driveabout/location/b;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 174
    iget-object v2, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "remote_gps"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 175
    iget-object v2, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "network"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 176
    iget-object v2, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    const-string v3, "android_orientation"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 178
    invoke-static {v0}, Lcom/google/android/maps/driveabout/g/f;->a(Lcom/google/android/maps/driveabout/g/f;)V

    .line 181
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/b/a;

    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->alertController:Lcom/google/android/maps/driveabout/b/a;

    .line 182
    new-instance v0, Lcom/google/glass/navlib/NavigationImpl$3;

    invoke-direct {v0, p0}, Lcom/google/glass/navlib/NavigationImpl$3;-><init>(Lcom/google/glass/navlib/NavigationImpl;)V

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->alerter:Lcom/google/glass/navlib/Alerter;

    .line 195
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/t;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/b/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->routeFetcher:Lcom/google/android/maps/driveabout/b/t;

    .line 196
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 477
    :cond_0
    return-void
.end method

.method private waitForInitialization()V
    .locals 4

    .prologue
    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    sget-object v1, Lcom/google/glass/navlib/NavigationImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted waiting for initialization!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/glass/navlib/NavigationImpl;->waitForInitialization()V

    .line 205
    invoke-direct {p0}, Lcom/google/glass/navlib/NavigationImpl;->releaseWakeLock()V

    .line 206
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/q;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->navEventListener:Lcom/google/android/maps/driveabout/nav/n;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/q;->b(Lcom/google/android/maps/driveabout/nav/n;)V

    .line 207
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/m;->d()V

    .line 208
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/m;->e()V

    .line 209
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->routeFetcher:Lcom/google/android/maps/driveabout/b/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/t;->b()V

    .line 210
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->navThread:Lcom/google/android/maps/driveabout/nav/q;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/q;->b()V

    .line 211
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;)V

    .line 212
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->b()V

    .line 213
    return-void
.end method

.method public enableOrientationUpdates(Z)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/location/m;->a(Z)V

    .line 293
    return-void
.end method

.method public getAlerter()Lcom/google/glass/navlib/Alerter;
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/google/glass/navlib/NavigationImpl;->waitForInitialization()V

    .line 277
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->alerter:Lcom/google/glass/navlib/Alerter;

    return-object v0
.end method

.method public getDestination()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->waypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->waypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->waypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->waypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLocation()Lcom/google/android/maps/driveabout/location/DriveAboutLocation;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    return-object v0
.end method

.method public getLocationPipeline()Lcom/google/android/maps/driveabout/location/m;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    return-object v0
.end method

.method public getNavigationState()Lcom/google/android/maps/driveabout/nav/p;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->navState:Lcom/google/android/maps/driveabout/nav/p;

    return-object v0
.end method

.method public getOrientation()Lcom/google/android/maps/driveabout/location/z;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->orientation:Lcom/google/android/maps/driveabout/location/z;

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/util/e;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/util/e;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 119
    new-instance v0, Lcom/google/glass/navlib/NavigationImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/navlib/NavigationImpl$1;-><init>(Lcom/google/glass/navlib/NavigationImpl;Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public isRerouting()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/google/glass/navlib/NavigationImpl;->isRerouting:Z

    return v0
.end method

.method public isRouteCompleted()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/google/glass/navlib/NavigationImpl;->isRouteCompleted:Z

    return v0
.end method

.method public onApproachingGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/glass/navlib/NavigationListener;->onApproachingGuidanceEvent(Lcom/google/glass/navlib/Navigation;Lcom/google/android/maps/driveabout/nav/i;I)V

    .line 386
    :cond_0
    return-void
.end method

.method public onGuidanceEvent(Lcom/google/android/maps/driveabout/nav/i;I)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/glass/navlib/NavigationListener;->onGuidanceEvent(Lcom/google/glass/navlib/Navigation;Lcom/google/android/maps/driveabout/nav/i;I)V

    .line 379
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 323
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    move-object v0, p1

    .line 324
    check-cast v0, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    .line 327
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->waypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/google/glass/navlib/NavigationImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Got first location: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->waypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    iget v1, p0, Lcom/google/glass/navlib/NavigationImpl;->travelMode:I

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/navlib/NavigationImpl;->startNavigating([Lcom/google/android/maps/driveabout/nav/ao;I)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    invoke-interface {v0, p0}, Lcom/google/glass/navlib/NavigationListener;->onLocationChange(Lcom/google/glass/navlib/Navigation;)V

    .line 335
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 323
    goto :goto_0
.end method

.method public onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl;->orientation:Lcom/google/android/maps/driveabout/location/z;

    .line 340
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    invoke-interface {v0, p0}, Lcom/google/glass/navlib/NavigationListener;->onOrientationChange(Lcom/google/glass/navlib/Navigation;)V

    .line 343
    :cond_0
    return-void
.end method

.method public onProgress(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 2

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl;->navState:Lcom/google/android/maps/driveabout/nav/p;

    .line 359
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/glass/navlib/NavigationListener;->onNavigationStateChange(Lcom/google/glass/navlib/Navigation;Z)V

    .line 362
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onRerouteRequested(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 2

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl;->navState:Lcom/google/android/maps/driveabout/nav/p;

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/navlib/NavigationImpl;->isRerouting:Z

    .line 369
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/glass/navlib/NavigationListener;->onNavigationStateChange(Lcom/google/glass/navlib/Navigation;Z)V

    .line 372
    :cond_0
    return-void
.end method

.method public onRouteChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 390
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl;->navState:Lcom/google/android/maps/driveabout/nav/p;

    .line 391
    iput-boolean v0, p0, Lcom/google/glass/navlib/NavigationImpl;->isRerouting:Z

    .line 392
    iput-boolean v0, p0, Lcom/google/glass/navlib/NavigationImpl;->isRouteCompleted:Z

    .line 393
    iput-boolean v0, p0, Lcom/google/glass/navlib/NavigationImpl;->notifiedNetworkFailure:Z

    .line 394
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/p;->f()Lcom/google/android/maps/driveabout/nav/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/nav/w;)V

    .line 395
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->alertController:Lcom/google/android/maps/driveabout/b/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/a;->c()V

    .line 397
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/google/glass/navlib/NavigationListener;->onNavigationStateChange(Lcom/google/glass/navlib/Navigation;Z)V

    .line 400
    :cond_0
    return-void
.end method

.method public onRouteCompletedSuccessfully(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 2

    .prologue
    .line 435
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl;->navState:Lcom/google/android/maps/driveabout/nav/p;

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/navlib/NavigationImpl;->isRouteCompleted:Z

    .line 437
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/glass/navlib/NavigationListener;->onNavigationStateChange(Lcom/google/glass/navlib/Navigation;Z)V

    .line 440
    :cond_0
    return-void
.end method

.method public onRouteFailed(ILcom/google/android/maps/driveabout/nav/f;Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    iput-object p3, p0, Lcom/google/glass/navlib/NavigationImpl;->navState:Lcom/google/android/maps/driveabout/nav/p;

    .line 405
    if-nez p1, :cond_1

    .line 406
    iget-boolean v0, p0, Lcom/google/glass/navlib/NavigationImpl;->notifiedNetworkFailure:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/navlib/NavigationImpl;->getDestination()Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/nav/p;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iput-boolean v1, p0, Lcom/google/glass/navlib/NavigationImpl;->notifiedNetworkFailure:Z

    .line 408
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NETWORK_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/navlib/NavigationListener;->onRouteFailed(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    if-ne p1, v1, :cond_2

    .line 411
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->OFFLINE_ROUTING_FAILURE:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/navlib/NavigationListener;->onRouteFailed(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0

    .line 412
    :cond_2
    if-eqz p2, :cond_0

    .line 413
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->REFINEMENT_NEEDED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->c()[Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/glass/navlib/NavigationListener;->onRouteFailed(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->j()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 416
    :cond_4
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->NAVIGATION_NOT_SUPPORTED:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/navlib/NavigationListener;->onRouteFailed(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0

    .line 417
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/nav/f;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 418
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->DESTINATION_NOT_FOUND:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/navlib/NavigationListener;->onRouteFailed(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0

    .line 420
    :cond_6
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    sget-object v1, Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;->ROUTING_ERROR:Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/navlib/NavigationListener;->onRouteFailed(Lcom/google/glass/navlib/NavigationListener$RouteFailureReason;[Lcom/google/android/maps/driveabout/nav/ao;)V

    goto :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public onStepChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 2

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl;->navState:Lcom/google/android/maps/driveabout/nav/p;

    .line 428
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/glass/navlib/NavigationListener;->onNavigationStateChange(Lcom/google/glass/navlib/Navigation;Z)V

    .line 431
    :cond_0
    return-void
.end method

.method public onTrafficStatusChanged(Lcom/google/android/maps/driveabout/nav/p;)V
    .locals 2

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl;->navState:Lcom/google/android/maps/driveabout/nav/p;

    .line 445
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/glass/navlib/NavigationListener;->onNavigationStateChange(Lcom/google/glass/navlib/Navigation;Z)V

    .line 448
    :cond_0
    return-void
.end method

.method public replayEventLog(Lcom/google/android/maps/driveabout/c/v;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-direct {p0}, Lcom/google/glass/navlib/NavigationImpl;->waitForInitialization()V

    .line 266
    sget-object v0, Lcom/google/glass/navlib/NavigationImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Replaying log"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-static {v3}, Lcom/google/android/maps/driveabout/b/v;->a(Z)V

    .line 269
    new-instance v0, Lcom/google/android/maps/driveabout/c/t;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/c/t;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/c/t;)V

    .line 271
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/c/t;->a(Lcom/google/android/maps/driveabout/g/f;)V

    .line 272
    return-void
.end method

.method public setNavigationListener(Lcom/google/glass/navlib/NavigationListener;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl;->listener:Lcom/google/glass/navlib/NavigationListener;

    .line 218
    return-void
.end method

.method public startNavigating([Lcom/google/android/maps/driveabout/nav/ao;I)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 222
    invoke-direct {p0}, Lcom/google/glass/navlib/NavigationImpl;->waitForInitialization()V

    .line 225
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire()V

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/google/glass/navlib/NavigationImpl;->waypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 230
    iput p2, p0, Lcom/google/glass/navlib/NavigationImpl;->travelMode:I

    .line 231
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->alertController:Lcom/google/android/maps/driveabout/b/a;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/b/a;->b(I)V

    .line 232
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/location/m;->a(I)V

    .line 234
    iget-boolean v0, p0, Lcom/google/glass/navlib/NavigationImpl;->isLocationPipelineRunning:Z

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->locationPipeline:Lcom/google/android/maps/driveabout/location/m;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/m;->c()V

    .line 236
    iput-boolean v3, p0, Lcom/google/glass/navlib/NavigationImpl;->isLocationPipelineRunning:Z

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/q;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    .line 241
    iget-boolean v1, p0, Lcom/google/glass/navlib/NavigationImpl;->isNavigationRunning:Z

    if-nez v1, :cond_2

    .line 242
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/q;->c()V

    .line 243
    iput-boolean v3, p0, Lcom/google/glass/navlib/NavigationImpl;->isNavigationRunning:Z

    .line 245
    :cond_2
    sget-object v1, Lcom/google/glass/navlib/NavigationImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "StartNavigating: With location: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/navlib/NavigationImpl;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/location/DriveAboutLocation;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/google/glass/navlib/NavigationImpl;->location:Lcom/google/android/maps/driveabout/location/DriveAboutLocation;

    new-array v2, v5, [Lcom/google/android/maps/driveabout/nav/b;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/maps/driveabout/nav/q;->a(Lcom/google/android/maps/driveabout/location/DriveAboutLocation;[Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_3
    sget-object v0, Lcom/google/glass/navlib/NavigationImpl;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "StartNavigating: Waiting for location..."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stopNavigating()V
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/glass/navlib/NavigationImpl;->waitForInitialization()V

    .line 256
    invoke-direct {p0}, Lcom/google/glass/navlib/NavigationImpl;->releaseWakeLock()V

    .line 257
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->alertController:Lcom/google/android/maps/driveabout/b/a;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/a;->d()V

    .line 258
    iget-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/q;->a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/nav/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/q;->e()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/navlib/NavigationImpl;->waypoints:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 260
    return-void
.end method
