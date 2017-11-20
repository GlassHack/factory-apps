.class public Lcom/google/glass/logging/GlassUserEventService;
.super Lcom/google/glass/userevent/UserEventService;
.source "GlassUserEventService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;
    }
.end annotation


# static fields
.field private static final DEVICE_CHECKIN_PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_EXPERIMENTS:[I

.field private static final PERF_STATS_LOGCAT_INTERVAL:J

.field private static isDogfoodForTest:Z


# instance fields
.field private activityManager:Landroid/app/ActivityManager;

.field private battery:Lcom/google/glass/util/BatteryHelper;

.field private bootCount:I

.field private checkinResponseHandler:Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastPerfStatsLogcatTime:J

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private memoryInfo:Landroid/app/ActivityManager$MemoryInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/logging/GlassUserEventService;->NO_EXPERIMENTS:[I

    .line 69
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/logging/GlassUserEventService$1;

    invoke-direct {v1}, Lcom/google/glass/logging/GlassUserEventService$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/logging/GlassUserEventService;->DEVICE_CHECKIN_PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 80
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/GlassUserEventService;->PERF_STATS_LOGCAT_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/glass/userevent/UserEventService;-><init>()V

    .line 64
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/logging/GlassUserEventService;->bootCount:I

    .line 99
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/GlassUserEventService;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/logging/GlassUserEventService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/logging/GlassUserEventService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/logging/GlassUserEventService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/glass/logging/GlassUserEventService;->checkin()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/logging/GlassUserEventService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/logging/GlassUserEventService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/glass/logging/GlassUserEventService;->readFrameworkEvents()V

    return-void
.end method

.method private addDonStateToConnectivity(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 5
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 490
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/userevent/UserEventAction;->fromAction(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction;

    move-result-object v2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_NETWORK_REQUEST:Lcom/google/glass/userevent/UserEventAction;

    if-eq v2, v3, :cond_0

    .line 504
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getEventData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, "data":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 498
    .local v1, "isOhdEnabled":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 499
    const-string v2, "d"

    invoke-static {p0}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    goto :goto_0

    .line 497
    .end local v1    # "isOhdEnabled":Z
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/logging/GlassUserEventService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "on_head_detection_enabled"

    const/4 v4, 0x0

    .line 496
    invoke-static {v2, v3, v4}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1

    .line 501
    .restart local v1    # "isOhdEnabled":Z
    :cond_2
    const-string v2, "d"

    const-string v3, "unknown"

    invoke-static {v0, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private addPerformanceStats(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 16
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 441
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 442
    new-instance v9, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v9}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    .line 443
    .local v9, "stats":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    invoke-static {}, Lcom/google/glass/system/PerformanceHelper$Provider;->getInstance()Lcom/google/glass/system/PerformanceHelper$Provider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/glass/system/PerformanceHelper$Provider;->get()Lcom/google/glass/system/PerformanceHelper;

    move-result-object v7

    .line 444
    .local v7, "pu":Lcom/google/glass/system/PerformanceHelper;
    invoke-virtual {v7}, Lcom/google/glass/system/PerformanceHelper;->getBoardTemperature()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setBoardTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 445
    invoke-virtual {v7}, Lcom/google/glass/system/PerformanceHelper;->getBatteryStateOfChargeUah()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setBatteryStateOfChargeUah(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 446
    invoke-virtual {v7}, Lcom/google/glass/system/PerformanceHelper;->getBatteryChargeWhenFullUah()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setBatteryChargeWhenFullUah(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 447
    invoke-virtual {v7}, Lcom/google/glass/system/PerformanceHelper;->getReportedBatteryStateOfChargePercent()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setReportedSoc(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 448
    invoke-virtual {v7}, Lcom/google/glass/system/PerformanceHelper;->getBatteryTemperature()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setBatteryTemperatureMilliCentigrade(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 449
    invoke-virtual {v7}, Lcom/google/glass/system/PerformanceHelper;->getTotalBytesSent()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setTotalBytesSent(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 450
    invoke-virtual {v7}, Lcom/google/glass/system/PerformanceHelper;->getFrequencyScalingGovernor()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setFrequencyScalingGovernor(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 452
    invoke-virtual {v7}, Lcom/google/glass/system/PerformanceHelper;->getQPassedHiRes()[I

    move-result-object v8

    .line 453
    .local v8, "qpassed":[I
    const/4 v12, 0x0

    aget v12, v8, v12

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setQpassedInteger(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 454
    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setQpassedFractional(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 456
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 457
    .local v1, "cpuFrequencyTime":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-virtual {v7, v1}, Lcom/google/glass/system/PerformanceHelper;->getFrequencyStats(Ljava/util/Map;)V

    .line 459
    const-wide/16 v10, 0x0

    .line 460
    .local v10, "totalCpuTime":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v4, "freqStats":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;>;"
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 462
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v3, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v3}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    .line 463
    .local v3, "freqStat":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v3, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:J

    .line 464
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v3, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:J

    .line 465
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long/2addr v10, v14

    .line 466
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v3    # "freqStat":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 469
    const/4 v12, 0x0

    new-array v12, v12, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iput-object v12, v9, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 472
    :cond_1
    invoke-virtual {v9, v10, v11}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setTotalKernelMs(J)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/logging/GlassUserEventService;->activityManager:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/logging/GlassUserEventService;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v12, v13}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/logging/GlassUserEventService;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v12, v12, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    long-to-int v12, v12

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setAvailableMemoryKb(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 477
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/logging/GlassUserEventService;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v12, v12, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    long-to-int v12, v12

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setTotalMemoryKb(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 478
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/logging/GlassUserEventService;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    iget-boolean v12, v12, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v9, v12}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setIsLowMemory(Z)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 481
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/logging/GlassUserEventService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 482
    .local v5, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 483
    .local v6, "networkType":I
    :goto_1
    invoke-virtual {v9, v6}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->setNetworkType(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 485
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setPerformanceStats(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 486
    return-object p1

    .line 482
    .end local v6    # "networkType":I
    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private checkin()V
    .locals 7

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->DEVICE_CHECKIN:Lcom/google/glass/net/ServerConstants$Action;

    .line 249
    invoke-direct {p0}, Lcom/google/glass/logging/GlassUserEventService;->createCheckinRequest()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/google/glass/logging/GlassUserEventService;->DEVICE_CHECKIN_PARSER:Lcom/google/glass/protobuf/ProtoParser;

    iget-object v5, p0, Lcom/google/glass/logging/GlassUserEventService;->checkinResponseHandler:Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;

    .line 248
    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    move-result v6

    .line 250
    .local v6, "dispatched":Z
    if-nez v6, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to schedule checkin request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_0
    return-void
.end method

.method private static clone(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 4
    .param p0, "stats"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .prologue
    .line 430
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 435
    :goto_0
    return-object v1

    .line 431
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-virtual {v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Couldn\'t clone performance stats"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createBuild()Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/google/glass/logging/GlassUserEventService;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "softwareVersion":Ljava/lang/String;
    const-string v6, "ro.build.type"

    invoke-static {v6, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "buildTypeString":Ljava/lang/String;
    const-string v6, "ro.build.version.glass"

    invoke-static {v6, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "majorVersion":Ljava/lang/String;
    const/4 v1, -0x1

    .line 299
    .local v1, "buildType":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 301
    :try_start_0
    const-class v6, Lcom/google/googlex/glass/common/proto/BuildNano$BuildType;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/glass/protobuf/ProtoEnumUtils;->getEnumValue(Ljava/lang/Class;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 307
    :cond_0
    :goto_0
    if-nez v5, :cond_2

    if-ne v1, v10, :cond_2

    if-nez v4, :cond_2

    .line 324
    :cond_1
    :goto_1
    return-object v0

    .line 302
    :catch_0
    move-exception v3

    .line 303
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Unsupported build type [buildType=%s]."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 313
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    new-instance v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;-><init>()V

    .line 314
    .local v0, "build":Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 315
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->setBuildDisplayId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 317
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 318
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->setBuildVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 320
    :cond_4
    if-eq v1, v10, :cond_1

    .line 321
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->setBuildType(I)Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    goto :goto_1
.end method

.method private createCheckinRequest()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 10

    .prologue
    .line 259
    new-instance v8, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/logging/GlassUserEventService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v9, "android_id"

    invoke-virtual {v8, v9}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "deviceId":Ljava/lang/String;
    new-instance v3, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;-><init>()V

    .line 261
    .local v3, "request":Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    invoke-virtual {v3, v1}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    .line 263
    invoke-direct {p0}, Lcom/google/glass/logging/GlassUserEventService;->createBuild()Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    move-result-object v0

    .line 264
    .local v0, "build":Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v3, v0}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->setBuild(Lcom/google/googlex/glass/common/proto/BuildNano$Build;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    .line 268
    :cond_0
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "serialNumber":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 270
    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->setSerialNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    .line 273
    :cond_1
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/google/glass/logging/GlassUserEventService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 274
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 275
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "macAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 278
    invoke-virtual {v3, v2}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->setWifiMacAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/logging/GlassUserEventService;->getOrFetchSessionId()Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "sessionId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 285
    invoke-virtual {v3, v5}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    .line 288
    :cond_3
    return-object v3
.end method

.method private getBootCount()I
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/google/glass/logging/GlassUserEventService;->checkThread()V

    .line 394
    iget v0, p0, Lcom/google/glass/logging/GlassUserEventService;->bootCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v0}, Lcom/google/glass/userevent/UserEventPreferences;->getBootCount()I

    move-result v0

    iput v0, p0, Lcom/google/glass/logging/GlassUserEventService;->bootCount:I

    .line 402
    :cond_0
    iget v0, p0, Lcom/google/glass/logging/GlassUserEventService;->bootCount:I

    return v0
.end method

.method private readFrameworkEvents()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 330
    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/logging/GlassUserEventService;->updateFrameworkEventReadTime()J

    move-result-wide v3

    .line 330
    invoke-static {v3, v4}, Lcom/google/glass/logging/EventLogUtils;->getFrameworkEvents(J)Ljava/util/List;

    move-result-object v2

    .line 332
    .local v2, "frameworkEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    iget-object v3, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Read framework events [size=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 334
    .local v1, "frameworkEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/google/glass/logging/GlassUserEventService;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    .end local v1    # "frameworkEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v2    # "frameworkEvents":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;>;"
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error while reading framework events [error=%s]."

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method static setDogfoodForTest(Z)V
    .locals 0
    .param p0, "isDogfood"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 532
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 533
    sput-boolean p0, Lcom/google/glass/logging/GlassUserEventService;->isDogfoodForTest:Z

    .line 534
    return-void
.end method


# virtual methods
.method protected canFlushQueueNow(Z)Z
    .locals 4
    .param p1, "forceFlush"    # Z

    .prologue
    const/4 v0, 0x0

    .line 508
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 511
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/glass/logging/GlassUserEventService;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot send user events as the device is not plugged in, log is not forced."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCheckinResponseHandlerForTest()Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 520
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 521
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->checkinResponseHandler:Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;

    return-object v0
.end method

.method public getEnabledExperiments()[I
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/google/glass/logging/GlassUserEventService;->NO_EXPERIMENTS:[I

    return-object v0
.end method

.method public getIsDogfood()Z
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-boolean v0, Lcom/google/glass/logging/GlassUserEventService;->isDogfoodForTest:Z

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/glass/build/BuildHelper;->getGservicesDogfoodValue(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    const-string v0, "ro.build.fingerprint"

    const-string v1, "unknown build version"

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/google/glass/net/UserAgentProvider;->getInstance()Lcom/google/glass/net/UserAgentProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/UserAgentProvider;->get()Lcom/google/glass/net/UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserEventPreferencesForTest()Lcom/google/glass/userevent/UserEventPreferences;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 526
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 527
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    return-object v0
.end method

.method public getUserEventSource()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {p0}, Lcom/google/glass/logging/GlassUserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 179
    new-instance v0, Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;-><init>(Lcom/google/glass/logging/GlassUserEventService;)V

    iput-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->checkinResponseHandler:Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;

    .line 180
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/GlassUserEventService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->activityManager:Landroid/app/ActivityManager;

    .line 181
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/GlassUserEventService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/logging/GlassUserEventService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 183
    invoke-super {p0}, Lcom/google/glass/userevent/UserEventService;->onCreate()V

    .line 184
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/google/glass/userevent/UserEventService;->onDestroy()V

    .line 189
    return-void
.end method

.method public onPostLog(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 8
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 413
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 414
    .local v0, "now":J
    iget-wide v4, p0, Lcom/google/glass/logging/GlassUserEventService;->lastPerfStatsLogcatTime:J

    sub-long v4, v0, v4

    sget-wide v6, Lcom/google/glass/logging/GlassUserEventService;->PERF_STATS_LOGCAT_INTERVAL:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 415
    iput-wide v0, p0, Lcom/google/glass/logging/GlassUserEventService;->lastPerfStatsLogcatTime:J

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v2, "perfString":Ljava/lang/StringBuilder;
    const-string v4, "Performance stats: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->getPerformanceStats()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/logging/GlassUserEventService;->clone(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    move-result-object v3

    .line 420
    .local v3, "statsNoFreq":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    sget-object v4, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->EMPTY_ARRAY:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iput-object v4, v3, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 422
    invoke-static {v3}, Lcom/google/glass/protobuf/ProtoDebugUtils;->asciiDebug(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v4, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    .end local v2    # "perfString":Ljava/lang/StringBuilder;
    .end local v3    # "statsNoFreq":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    :cond_0
    return-void
.end method

.method public onPreLogAnnotation(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .param p1, "userEvent"    # Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/google/glass/logging/GlassUserEventService;->getBootCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setBootCount(I)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 386
    invoke-direct {p0, p1}, Lcom/google/glass/logging/GlassUserEventService;->addDonStateToConnectivity(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 387
    invoke-direct {p0, p1}, Lcom/google/glass/logging/GlassUserEventService;->addPerformanceStats(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method public onPreReportAnnotation(Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    .locals 4
    .param p1, "request"    # Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "serial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->setManufacturingBuild(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .line 371
    :goto_0
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .line 372
    invoke-static {}, Lcom/google/glass/locale/RegionProvider;->getInstance()Lcom/google/glass/locale/RegionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/locale/RegionProvider;->get()Lcom/google/glass/locale/Region;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/locale/Region;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->setRegion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    .line 374
    return-object p1

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No serial number available."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 193
    iget-object v5, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "onStartCommand() [isStarted=%s, intent=%s]."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/glass/logging/GlassUserEventService;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object p1, v7, v10

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/logging/GlassUserEventService;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 199
    const-string v5, "boot"

    invoke-static {p0, v5}, Lcom/google/glass/util/BatteryUserEventUtils;->getActionData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "data":Ljava/lang/String;
    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    .line 202
    invoke-static {v5, v1}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    .line 203
    .local v0, "batteryEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v5, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x26

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Logging user event [action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", data=%s]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/google/glass/logging/GlassUserEventService;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V

    .line 208
    .end local v0    # "batteryEvent":Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v1    # "data":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_2

    .line 210
    const-string v5, "checkin"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 211
    .local v3, "isCheckin":Z
    if-eqz v3, :cond_1

    .line 212
    iget-object v5, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Scheduling checkin."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v5, p0, Lcom/google/glass/logging/GlassUserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/google/glass/logging/GlassUserEventService$2;

    invoke-direct {v6, p0}, Lcom/google/glass/logging/GlassUserEventService$2;-><init>(Lcom/google/glass/logging/GlassUserEventService;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 223
    :cond_1
    const-string v5, "read_framework_events"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 225
    .local v4, "isReadFrameworkEvents":Z
    if-eqz v4, :cond_2

    .line 226
    iget-object v5, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Scheduling read of framework event logs."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v5, p0, Lcom/google/glass/logging/GlassUserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/google/glass/logging/GlassUserEventService$3;

    invoke-direct {v6, p0}, Lcom/google/glass/logging/GlassUserEventService$3;-><init>(Lcom/google/glass/logging/GlassUserEventService;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v3    # "isCheckin":Z
    .end local v4    # "isReadFrameworkEvents":Z
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/userevent/UserEventService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v5

    return v5

    .line 236
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v5, p0, Lcom/google/glass/logging/GlassUserEventService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Ender (or some other old apk) sent an incompatible proto: %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method updateFrameworkEventReadTime()J
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 347
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 350
    iget-object v2, p0, Lcom/google/glass/logging/GlassUserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v2}, Lcom/google/glass/userevent/UserEventPreferences;->getLastFrameworkEventReadTime()J

    move-result-wide v0

    .line 353
    .local v0, "lastFrameworkEventReadTimeMs":J
    iget-object v2, p0, Lcom/google/glass/logging/GlassUserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventPreferences;->setLastFrameworkEventReadTime(J)V

    .line 355
    return-wide v0
.end method
