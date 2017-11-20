.class public Lcom/google/glass/location/LocationManagerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_FRESHNESS_THRESHOLD_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

.field public static final DEFAULT_STALE_LOCATION_MILLIS:J


# instance fields
.field private final defaultLocationPredicate:Lcom/google/common/base/aj;

.field private final locationManager:Landroid/location/LocationManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_FRESHNESS_THRESHOLD_MS:J

    .line 52
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;

    sget-wide v1, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_FRESHNESS_THRESHOLD_MS:J

    invoke-direct {v0, v1, v2}, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;-><init>(J)V

    sput-object v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_STALE_LOCATION_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 81
    const-string v0, "null locationManager"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    .line 82
    iput-object p2, p0, Lcom/google/glass/location/LocationManagerHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 83
    const-string v0, "null clock"

    invoke-static {p3, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    sget-wide v1, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_STALE_LOCATION_MILLIS:J

    invoke-direct {v0, v1, v2, p3}, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;-><init>(JLcom/google/glass/time/Clock;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->defaultLocationPredicate:Lcom/google/common/base/aj;

    .line 86
    return-void
.end method


# virtual methods
.method public asyncObtainNewLocation(Lcom/google/common/util/concurrent/q;Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/aj;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Lcom/google/common/util/concurrent/o;
    .locals 10

    .prologue
    .line 159
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/google/glass/location/LocationManagerHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/aj;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)V

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/q;->a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    return-object v0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper;->defaultLocationPredicate:Lcom/google/common/base/aj;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/aj;Landroid/location/Criteria;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/aj;Landroid/location/Criteria;)Landroid/location/Location;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 106
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    iget-object v3, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 113
    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Lcom/google/common/base/aj;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Location failed predicate check: [%s]"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    .line 104
    invoke-virtual {v0, p3, v6}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Could not get any last known location..."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    const/4 v0, 0x0

    .line 131
    :goto_2
    return-object v0

    .line 125
    :cond_4
    invoke-static {v1, p1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 126
    iget-object v2, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Found [%s] last known locations.  Best was from provider: [%s], accuracy: [%s], time: [%s]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 128
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    const/4 v1, 0x2

    .line 129
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    .line 126
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public obtainNewLocation(Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/aj;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Landroid/location/Location;
    .locals 9

    .prologue
    .line 178
    .line 179
    invoke-static {}, Lcom/google/common/util/concurrent/r;->a()Lcom/google/common/util/concurrent/q;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    move-object/from16 v8, p7

    .line 178
    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/location/LocationManagerHelper;->asyncObtainNewLocation(Lcom/google/common/util/concurrent/q;Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/aj;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    .line 187
    :try_start_0
    invoke-interface {v0}, Lcom/google/common/util/concurrent/o;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InterruptedException;

    throw v0

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
