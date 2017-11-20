.class final Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/LocationManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NewLocationCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final criteria:Landroid/location/Criteria;

.field private final isUsableLocationPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<-",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final locationManager:Landroid/location/LocationManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final looper:Landroid/os/Looper;

.field private final timeout:J

.field private final unit:Ljava/util/concurrent/TimeUnit;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)V
    .locals 2
    .param p1, "locationManager"    # Landroid/location/LocationManager;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "criteria"    # Landroid/location/Criteria;
    .param p6, "timeout"    # J
    .param p8, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p9, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Lcom/google/glass/userevent/UserEventHelper;",
            "Landroid/location/Criteria;",
            "Ljava/util/Comparator",
            "<-",
            "Landroid/location/Location;",
            ">;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Landroid/location/Location;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Landroid/location/Location;>;"
    .local p5, "isUsableLocationPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Landroid/location/Location;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 234
    iput-object p1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->locationManager:Landroid/location/LocationManager;

    .line 235
    iput-object p2, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 236
    iput-object p3, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->criteria:Landroid/location/Criteria;

    .line 237
    iput-object p4, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->comparator:Ljava/util/Comparator;

    .line 238
    iput-object p5, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->isUsableLocationPredicate:Lcom/google/common/base/Predicate;

    .line 239
    iput-wide p6, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->timeout:J

    .line 240
    iput-object p8, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->unit:Ljava/util/concurrent/TimeUnit;

    .line 241
    iput-object p9, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->looper:Landroid/os/Looper;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;Landroid/location/Location;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->isUsableLocation(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method private isUsableLocation(Landroid/location/Location;)Z
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    .line 316
    if-nez p1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->isUsableLocationPredicate:Lcom/google/common/base/Predicate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->isUsableLocationPredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v1, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logLocationStats(Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "locationByProvider":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/location/Location;>;"
    .local p2, "elapsedMillisByProvider":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 332
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 333
    .local v3, "locationByProviderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 334
    .local v4, "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 335
    .local v2, "location":Landroid/location/Location;
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 336
    .local v0, "elapsedMillis":Ljava/lang/Long;
    if-eqz v0, :cond_0

    move v5, v6

    :goto_1
    const-string v9, "Have location but no elapsedMillis for provider: [%s]"

    invoke-static {v5, v9, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 339
    const-string v5, "p"

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "t"

    aput-object v11, v10, v7

    aput-object v0, v10, v6

    const/4 v11, 0x2

    const-string v12, "a"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 340
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    .line 339
    invoke-static {v5, v9, v10}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "eventData":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v9, Lcom/google/glass/userevent/UserEventAction;->LOCATION_MANAGER_HELPER_RECEIVED_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v5, v9, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "eventData":Ljava/lang/String;
    :cond_0
    move v5, v7

    .line 336
    goto :goto_1

    .line 343
    .end local v0    # "elapsedMillis":Ljava/lang/Long;
    .end local v2    # "location":Landroid/location/Location;
    .end local v3    # "locationByProviderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v4    # "provider":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private logNoLocationStats(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "providers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, "p"

    const-string v2, ","

    .line 351
    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "t"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->timeout:J

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 350
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "eventData":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->LOCATION_MANAGER_HELPER_NO_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 353
    return-void
.end method


# virtual methods
.method public call()Landroid/location/Location;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->locationManager:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->criteria:Landroid/location/Criteria;

    const/4 v10, 0x1

    invoke-virtual {v3, v8, v10}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v17

    .line 247
    .local v17, "providers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "obtainNewLocation(): enabled providers that match criteria: [%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v17, v10, v11

    invoke-interface {v3, v8, v10}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    const/4 v15, 0x0

    .line 308
    :goto_0
    return-object v15

    .line 252
    :cond_0
    new-instance v5, Landroid/util/ArrayMap;

    .line 253
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v5, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 254
    .local v5, "elapsedMillisByProvider":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v6, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v6}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 256
    .local v6, "locationUpdateStopwatch":Lcom/google/glass/time/Stopwatch;
    new-instance v4, Landroid/util/ArrayMap;

    .line 257
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v4, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 258
    .local v4, "locationByProvider":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/location/Location;>;"
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 260
    .local v7, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;-><init>(Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;Ljava/util/Map;Ljava/util/Map;Lcom/google/glass/time/Stopwatch;Ljava/util/concurrent/CountDownLatch;)V

    .line 280
    .local v2, "listener":Landroid/location/LocationListener;
    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 281
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 282
    .local v9, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Requesting updates from provider: [%s]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-interface {v8, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->looper:Landroid/os/Looper;

    move-object v13, v2

    invoke-virtual/range {v8 .. v14}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_1

    .line 288
    .end local v9    # "provider":Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Waiting for location updates."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v3, v8, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->timeout:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v10, v11, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Done waiting for location updates."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v3, v8, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 296
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Did not obtain any location."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v3, v8, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logNoLocationStats(Ljava/util/Collection;)V

    .line 299
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 292
    :catchall_0
    move-exception v3

    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 293
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v8, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    throw v3

    .line 302
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logLocationStats(Ljava/util/Map;Ljava/util/Map;)V

    .line 304
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    .line 305
    .local v16, "locations":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/Location;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->comparator:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Location;

    .line 306
    .local v15, "bestObtainedLocation":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Obtained [%s] new locations.  Best was from provider: [%s], accuracy: [%s]"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 307
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v15}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v15}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    .line 306
    invoke-interface {v3, v8, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->call()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
