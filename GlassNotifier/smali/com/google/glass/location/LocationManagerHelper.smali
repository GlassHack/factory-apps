.class public Lcom/google/glass/location/LocationManagerHelper;
.super Ljava/lang/Object;
.source "LocationManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/location/LocationManagerHelper$Provider;,
        Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;,
        Lcom/google/glass/location/LocationManagerHelper$LocationComparator;,
        Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;
    }
.end annotation


# static fields
.field static final DEFAULT_FRESHNESS_THRESHOLD_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_STALE_LOCATION_MILLIS:J


# instance fields
.field private final defaultLocationPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final locationManager:Landroid/location/LocationManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_FRESHNESS_THRESHOLD_MS:J

    .line 50
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;

    sget-wide v2, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_FRESHNESS_THRESHOLD_MS:J

    invoke-direct {v0, v2, v3}, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;-><init>(J)V

    sput-object v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_STALE_LOCATION_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V
    .locals 4
    .param p1, "locationManager"    # Landroid/location/LocationManager;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "clock"    # Lcom/google/glass/time/Clock;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 79
    const-string v0, "null locationManager"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    .line 80
    iput-object p2, p0, Lcom/google/glass/location/LocationManagerHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 81
    const-string v0, "null clock"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    sget-wide v2, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_STALE_LOCATION_MILLIS:J

    invoke-direct {v0, v2, v3, p3}, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;-><init>(JLcom/google/glass/time/Clock;)V

    iput-object v0, p0, Lcom/google/glass/location/LocationManagerHelper;->defaultLocationPredicate:Lcom/google/common/base/Predicate;

    .line 84
    return-void
.end method


# virtual methods
.method public asyncObtainNewLocation(Lcom/google/common/util/concurrent/ListeningExecutorService;Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11
    .param p1, "executor"    # Lcom/google/common/util/concurrent/ListeningExecutorService;
    .param p2, "criteria"    # Landroid/location/Criteria;
    .param p5, "timeout"    # J
    .param p7, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p8, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
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
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Landroid/location/Location;>;"
    .local p4, "isUsableLocationPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Landroid/location/Location;>;"
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/google/glass/location/LocationManagerHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/location/LocationManagerHelper$NewLocationCallable;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)V

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 139
    sget-object v0, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/glass/location/LocationManagerHelper;->defaultLocationPredicate:Lcom/google/common/base/Predicate;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/Predicate;Landroid/location/Criteria;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/Predicate;Landroid/location/Criteria;)Landroid/location/Location;
    .locals 12
    .param p3, "criteria"    # Landroid/location/Criteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Landroid/location/Location;",
            ">;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Landroid/location/Location;",
            ">;",
            "Landroid/location/Criteria;",
            ")",
            "Landroid/location/Location;"
        }
    .end annotation

    .prologue
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Landroid/location/Location;>;"
    .local p2, "isUsableLocationPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Landroid/location/Location;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 101
    if-nez p3, :cond_1

    iget-object v5, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v5}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v4

    .line 104
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 105
    .local v1, "lastKnownLocations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    .local v3, "provider":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 107
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 111
    if-eqz p2, :cond_2

    invoke-interface {p2, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 112
    iget-object v6, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Location failed predicate check: [%s]"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 102
    .end local v1    # "lastKnownLocations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    .end local v2    # "location":Landroid/location/Location;
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/google/glass/location/LocationManagerHelper;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, p3, v9}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 115
    .restart local v1    # "lastKnownLocations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    .restart local v2    # "location":Landroid/location/Location;
    .restart local v3    # "provider":Ljava/lang/String;
    .restart local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    .end local v2    # "location":Landroid/location/Location;
    .end local v3    # "provider":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 119
    iget-object v5, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Could not get any last known location..."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    const/4 v0, 0x0

    .line 129
    :goto_2
    return-object v0

    .line 123
    :cond_4
    invoke-static {v1, p1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 124
    .local v0, "bestLastKnownLocation":Landroid/location/Location;
    iget-object v5, p0, Lcom/google/glass/location/LocationManagerHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Found [%s] last known locations.  Best was from provider: [%s], accuracy: [%s], time: [%s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    .line 127
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 124
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public obtainNewLocation(Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Landroid/location/Location;
    .locals 12
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")",
            "Landroid/location/Location;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 176
    .line 177
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Landroid/location/Location;>;"
    .local p3, "isUsableLocationPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-Landroid/location/Location;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->newDirectExecutorService()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 176
    invoke-virtual/range {v1 .. v9}, Lcom/google/glass/location/LocationManagerHelper;->asyncObtainNewLocation(Lcom/google/common/util/concurrent/ListeningExecutorService;Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v10

    .line 185
    .local v10, "locationFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/location/Location;>;"
    :try_start_0
    invoke-interface {v10}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/InterruptedException;

    throw v1

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
