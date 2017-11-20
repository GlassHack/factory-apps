.class final Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final comparator:Ljava/util/Comparator;

.field private final criteria:Landroid/location/Criteria;

.field private final isUsableLocationPredicate:Lcom/google/common/base/ai;

.field private final locationManager:Landroid/location/LocationManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final looper:Landroid/os/Looper;

.field private final timeout:J

.field private final unit:Ljava/util/concurrent/TimeUnit;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/ai;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 236
    iput-object p1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->locationManager:Landroid/location/LocationManager;

    .line 237
    iput-object p2, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 238
    iput-object p3, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->criteria:Landroid/location/Criteria;

    .line 239
    iput-object p4, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->comparator:Ljava/util/Comparator;

    .line 240
    iput-object p5, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->isUsableLocationPredicate:Lcom/google/common/base/ai;

    .line 241
    iput-wide p6, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->timeout:J

    .line 242
    iput-object p8, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->unit:Ljava/util/concurrent/TimeUnit;

    .line 243
    iput-object p9, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->looper:Landroid/os/Looper;

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;Landroid/location/Location;)Z
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->isUsableLocation(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method private isUsableLocation(Landroid/location/Location;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 318
    if-nez p1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return v0

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->isUsableLocationPredicate:Lcom/google/common/base/ai;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->isUsableLocationPredicate:Lcom/google/common/base/ai;

    invoke-interface {v1, p1}, Lcom/google/common/base/ai;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logLocationStats(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 334
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 337
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 338
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    const-string v7, "Have location but no elapsedMillis for provider: [%s]"

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v5

    invoke-static {v3, v7, v8}, Lcom/google/common/base/ah;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 341
    const-string v1, "p"

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "t"

    aput-object v8, v7, v5

    aput-object v2, v7, v4

    const/4 v2, 0x2

    const-string v8, "a"

    aput-object v8, v7, v2

    const/4 v2, 0x3

    .line 342
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v2

    .line 341
    invoke-static {v1, v3, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->LOCATION_MANAGER_HELPER_RECEIVED_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v3, v5

    .line 338
    goto :goto_1

    .line 345
    :cond_1
    return-void
.end method

.method private logNoLocationStats(Ljava/util/Collection;)V
    .locals 7

    .prologue
    .line 352
    const-string v0, "p"

    const-string v1, ","

    .line 353
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->timeout:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 352
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->LOCATION_MANAGER_HELPER_NO_LOCATION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 355
    return-void
.end method


# virtual methods
.method public final call()Landroid/location/Location;
    .locals 14

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->criteria:Landroid/location/Criteria;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v13

    .line 249
    iget-object v0, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "obtainNewLocation(): enabled providers that match criteria: [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    .line 254
    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    .line 255
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 256
    new-instance v4, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v4}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 258
    new-instance v2, Landroid/util/ArrayMap;

    .line 259
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 260
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 262
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable$1;-><init>(Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;Ljava/util/Map;Ljava/util/Map;Lcom/google/glass/time/Stopwatch;Ljava/util/concurrent/CountDownLatch;)V

    .line 282
    invoke-virtual {v4}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 283
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 284
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Requesting updates from provider: [%s]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    iget-object v12, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->looper:Landroid/os/Looper;

    move-object v11, v0

    invoke-virtual/range {v6 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_1

    .line 290
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Waiting for location updates."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v1, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-wide v6, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->timeout:J

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 292
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Done waiting for location updates."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {v4}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 295
    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 298
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Did not obtain any location."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-direct {p0, v13}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logNoLocationStats(Ljava/util/Collection;)V

    .line 301
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 294
    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 295
    iget-object v2, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    throw v1

    .line 304
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logLocationStats(Ljava/util/Map;Ljava/util/Map;)V

    .line 306
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 307
    iget-object v0, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 308
    iget-object v2, p0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Obtained [%s] new locations.  Best was from provider: [%s], accuracy: [%s]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 309
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    .line 308
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;->call()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
