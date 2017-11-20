.class public Lcom/google/glass/maps/NavigationApplicationState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "GlassNav"

.field private static instance:Lcom/google/glass/maps/NavigationApplicationState;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private destination:Lcom/google/android/maps/driveabout/nav/ao;

.field private final directionsManager:Lcom/google/glass/maps/DirectionsManager;

.field private eventLog:Lcom/google/android/maps/driveabout/c/v;

.field private isDirectionsMode:Z

.field private final liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

.field private final locationSource:Lcom/google/android/maps/driveabout/location/t;

.field private final navigation:Lcom/google/glass/navlib/Navigation;

.field private final navigationManager:Lcom/google/glass/maps/NavigationManager;

.field public uiManager:Lcom/google/glass/maps/UserInterfaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationApplicationState;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/UserInterfaceManager;Lcom/google/glass/maps/NavigationManager;Lcom/google/glass/maps/DirectionsManager;Lcom/google/android/maps/driveabout/location/t;)V
    .locals 13

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {p1}, Lcom/google/glass/maps/util/TextFormatter;->createInstance(Landroid/content/Context;)V

    .line 122
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->locationSource:Lcom/google/android/maps/driveabout/location/t;

    .line 123
    new-instance v1, Lcom/google/glass/navlib/NavigationImpl;

    invoke-direct {v1, p1}, Lcom/google/glass/navlib/NavigationImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationApplicationState;->navigation:Lcom/google/glass/navlib/Navigation;

    .line 124
    iget-object v1, p0, Lcom/google/glass/maps/NavigationApplicationState;->navigation:Lcom/google/glass/navlib/Navigation;

    const-string v2, "GlassNav"

    move-object/from16 v0, p5

    invoke-interface {v1, v2, v0}, Lcom/google/glass/navlib/Navigation;->initialize(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/t;)V

    .line 126
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    new-instance v2, Lcom/google/glass/maps/location/BroadcastLocationSource;

    iget-object v1, p0, Lcom/google/glass/maps/NavigationApplicationState;->navigation:Lcom/google/glass/navlib/Navigation;

    check-cast v1, Lcom/google/glass/navlib/NavigationImpl;

    move-object/from16 v0, p5

    invoke-direct {v2, p1, v1, v0}, Lcom/google/glass/maps/location/BroadcastLocationSource;-><init>(Landroid/content/Context;Lcom/google/glass/navlib/NavigationImpl;Lcom/google/android/maps/driveabout/location/t;)V

    .line 131
    invoke-virtual {v2}, Lcom/google/glass/maps/location/BroadcastLocationSource;->startListening()V

    .line 134
    :cond_0
    if-eqz p2, :cond_1

    :goto_0
    iput-object p2, p0, Lcom/google/glass/maps/NavigationApplicationState;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    .line 135
    invoke-static {p1}, Lcom/google/glass/ongoing/OngoingActivityManager;->getInstance(Landroid/content/Context;)Lcom/google/glass/ongoing/OngoingActivityManager;

    move-result-object v4

    .line 137
    invoke-static {}, Lcom/google/glass/maps/NavigationLauncherHelper;->isLiveCardEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/nowtown/NowTownUtils;->isNowTownEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    new-instance v1, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/maps/NowTownNavigationLiveCardHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationApplicationState;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    .line 147
    :goto_1
    if-eqz p4, :cond_4

    .line 148
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->directionsManager:Lcom/google/glass/maps/DirectionsManager;

    .line 161
    :goto_2
    if-eqz p3, :cond_5

    .line 165
    :goto_3
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->navigationManager:Lcom/google/glass/maps/NavigationManager;

    .line 170
    return-void

    .line 134
    :cond_1
    new-instance p2, Lcom/google/glass/maps/UserInterfaceManager;

    invoke-direct {p2, p1}, Lcom/google/glass/maps/UserInterfaceManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 141
    :cond_2
    new-instance v1, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/maps/TimelineNavigationLiveCardHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationApplicationState;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    goto :goto_1

    .line 144
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/maps/NavigationApplicationState;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    goto :goto_1

    .line 150
    :cond_4
    const-string v1, "location"

    .line 151
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    .line 152
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v6, Lcom/google/glass/location/LocationManagerHelper;

    .line 155
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    invoke-direct {v6, v7, v1, v2}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    .line 156
    new-instance v1, Lcom/google/glass/maps/DirectionsManager;

    iget-object v3, p0, Lcom/google/glass/maps/NavigationApplicationState;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    .line 157
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v5

    iget-object v8, p0, Lcom/google/glass/maps/NavigationApplicationState;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    new-instance v9, Lcom/google/glass/maps/util/Scheduler$Impl;

    invoke-direct {v9}, Lcom/google/glass/maps/util/Scheduler$Impl;-><init>()V

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/maps/DirectionsManager;-><init>(Landroid/content/Context;Lcom/google/glass/maps/UserInterfaceManager;Lcom/google/glass/ongoing/OngoingActivityManager;Lcom/google/glass/time/Clock;Lcom/google/glass/location/LocationManagerHelper;Landroid/location/LocationManager;Lcom/google/glass/maps/BaseNavigationLiveCardHelper;Lcom/google/glass/maps/util/Scheduler;)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationApplicationState;->directionsManager:Lcom/google/glass/maps/DirectionsManager;

    goto :goto_2

    .line 161
    :cond_5
    new-instance v5, Lcom/google/glass/maps/NavigationManager;

    iget-object v7, p0, Lcom/google/glass/maps/NavigationApplicationState;->navigation:Lcom/google/glass/navlib/Navigation;

    .line 165
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/glass/sound/SoundManager;

    iget-object v10, p0, Lcom/google/glass/maps/NavigationApplicationState;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    iget-object v12, p0, Lcom/google/glass/maps/NavigationApplicationState;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    move-object v6, p1

    move-object/from16 v8, p5

    move-object v11, v4

    invoke-direct/range {v5 .. v12}, Lcom/google/glass/maps/NavigationManager;-><init>(Landroid/content/Context;Lcom/google/glass/navlib/Navigation;Lcom/google/android/maps/driveabout/location/t;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/maps/UserInterfaceManager;Lcom/google/glass/ongoing/OngoingActivityManager;Lcom/google/glass/maps/BaseNavigationLiveCardHelper;)V

    move-object/from16 p3, v5

    goto :goto_3
.end method

.method public static destroy()V
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lcom/google/glass/maps/NavigationApplicationState;->instance:Lcom/google/glass/maps/NavigationApplicationState;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/google/glass/maps/NavigationApplicationState;->instance:Lcom/google/glass/maps/NavigationApplicationState;

    invoke-direct {v0}, Lcom/google/glass/maps/NavigationApplicationState;->destroyInstance()V

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/maps/NavigationApplicationState;->instance:Lcom/google/glass/maps/NavigationApplicationState;

    .line 107
    sget-object v0, Lcom/google/glass/maps/NavigationApplicationState;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Destroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method

.method private destroyInstance()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->navigation:Lcom/google/glass/navlib/Navigation;

    invoke-interface {v0}, Lcom/google/glass/navlib/Navigation;->destroy()V

    .line 174
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->directionsManager:Lcom/google/glass/maps/DirectionsManager;

    invoke-virtual {v0}, Lcom/google/glass/maps/DirectionsManager;->destroy()V

    .line 175
    return-void
.end method

.method public static getInstance()Lcom/google/glass/maps/NavigationApplicationState;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/google/glass/maps/NavigationApplicationState;->instance:Lcom/google/glass/maps/NavigationApplicationState;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initialize() must be called before getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    sget-object v0, Lcom/google/glass/maps/NavigationApplicationState;->instance:Lcom/google/glass/maps/NavigationApplicationState;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 67
    sget-object v0, Lcom/google/glass/maps/NavigationApplicationState;->instance:Lcom/google/glass/maps/NavigationApplicationState;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v6

    .line 69
    invoke-interface {v6}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v7

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 72
    new-instance v5, Lcom/google/glass/maps/location/LocalLocationSource;

    invoke-direct {v5, v1}, Lcom/google/glass/maps/location/LocalLocationSource;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcom/google/glass/maps/NavigationApplicationState;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/NavigationApplicationState;-><init>(Landroid/content/Context;Lcom/google/glass/maps/UserInterfaceManager;Lcom/google/glass/maps/NavigationManager;Lcom/google/glass/maps/DirectionsManager;Lcom/google/android/maps/driveabout/location/t;)V

    sput-object v0, Lcom/google/glass/maps/NavigationApplicationState;->instance:Lcom/google/glass/maps/NavigationApplicationState;

    .line 75
    sget-object v0, Lcom/google/glass/maps/NavigationApplicationState;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Created in %sms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v6}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_0
    return-void
.end method

.method public static initializeForTest(Landroid/content/Context;Lcom/google/glass/maps/UserInterfaceManager;Lcom/google/glass/maps/NavigationManager;Lcom/google/glass/maps/DirectionsManager;Lcom/google/android/maps/driveabout/location/t;)V
    .locals 6

    .prologue
    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 83
    new-instance v0, Lcom/google/glass/maps/NavigationApplicationState;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/NavigationApplicationState;-><init>(Landroid/content/Context;Lcom/google/glass/maps/UserInterfaceManager;Lcom/google/glass/maps/NavigationManager;Lcom/google/glass/maps/DirectionsManager;Lcom/google/android/maps/driveabout/location/t;)V

    sput-object v0, Lcom/google/glass/maps/NavigationApplicationState;->instance:Lcom/google/glass/maps/NavigationApplicationState;

    .line 85
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/glass/maps/NavigationApplicationState;->instance:Lcom/google/glass/maps/NavigationApplicationState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setInstanceForTest(Lcom/google/glass/maps/NavigationApplicationState;)V
    .locals 0

    .prologue
    .line 92
    sput-object p0, Lcom/google/glass/maps/NavigationApplicationState;->instance:Lcom/google/glass/maps/NavigationApplicationState;

    .line 93
    return-void
.end method


# virtual methods
.method public getDestination()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public getDirectionsManager()Lcom/google/glass/maps/DirectionsManager;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->directionsManager:Lcom/google/glass/maps/DirectionsManager;

    return-object v0
.end method

.method public getEventLog()Lcom/google/android/maps/driveabout/c/v;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->eventLog:Lcom/google/android/maps/driveabout/c/v;

    return-object v0
.end method

.method public getLiveCardHelper()Lcom/google/glass/maps/BaseNavigationLiveCardHelper;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    return-object v0
.end method

.method public getLocationSource()Lcom/google/android/maps/driveabout/location/t;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->locationSource:Lcom/google/android/maps/driveabout/location/t;

    return-object v0
.end method

.method public getNavigation()Lcom/google/glass/navlib/Navigation;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->navigation:Lcom/google/glass/navlib/Navigation;

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/glass/maps/NavigationManager;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->navigationManager:Lcom/google/glass/maps/NavigationManager;

    return-object v0
.end method

.method public getUserInterfaceManager()Lcom/google/glass/maps/UserInterfaceManager;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->uiManager:Lcom/google/glass/maps/UserInterfaceManager;

    return-object v0
.end method

.method public isDirectionsMode()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode:Z

    return v0
.end method

.method public isLiveCardPublished()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->liveCardHelper:Lcom/google/glass/maps/BaseNavigationLiveCardHelper;

    invoke-virtual {v0}, Lcom/google/glass/maps/BaseNavigationLiveCardHelper;->isLiveCardPublished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetRouteInfo()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationApplicationState;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    .line 214
    return-void
.end method

.method public setDestination(Lcom/google/android/maps/driveabout/nav/ao;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/glass/maps/NavigationApplicationState;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    .line 228
    return-void
.end method

.method public setDirectionsMode(Z)V
    .locals 0

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/google/glass/maps/NavigationApplicationState;->isDirectionsMode:Z

    .line 243
    return-void
.end method

.method public setEventLog(Lcom/google/android/maps/driveabout/c/v;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/glass/maps/NavigationApplicationState;->eventLog:Lcom/google/android/maps/driveabout/c/v;

    .line 250
    return-void
.end method
