.class Lcom/google/glass/sync/LocationSyncHandler;
.super Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;
.source "LocationSyncHandler.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/LocationSyncHandler$Provider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOCATION_UPDATE_CRITERIA:Landroid/location/Criteria;

.field private static final LOCATION_UPDATE_TIMEOUT_MS:J

.field private static final MAX_LOCATION_AGE_MS:J

.field private static final MIN_SYNC_INTERVAL_MS:J

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private final connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

.field private final dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private final isFreshLocationPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private lastAttemptElapsedRealtime:J

.field private lastSuccessElapsedRealtime:J

.field private lastSyncSource:Ljava/lang/String;

.field private final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private numAttempts:J

.field private numSuccess:J

.field private final settingsSecure:Lcom/google/glass/util/SettingsSecure;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const-class v0, Lcom/google/glass/sync/LocationSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/sync/LocationSyncHandler$1;

    invoke-direct {v1}, Lcom/google/glass/sync/LocationSyncHandler$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/sync/LocationSyncHandler;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/LocationSyncHandler;->LOCATION_UPDATE_TIMEOUT_MS:J

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/LocationSyncHandler;->MAX_LOCATION_AGE_MS:J

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/sync/LocationSyncHandler;->MIN_SYNC_INTERVAL_MS:J

    .line 78
    invoke-static {}, Lcom/google/glass/sync/LocationSyncHandler;->createLocationUpdateCriteria()Landroid/location/Criteria;

    move-result-object v0

    sput-object v0, Lcom/google/glass/sync/LocationSyncHandler;->LOCATION_UPDATE_CRITERIA:Landroid/location/Criteria;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/util/SettingsSecure;Lcom/google/glass/time/Clock;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/android/net/ConnectivityManager;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/net/ProtoRequestDispatcher;)V
    .locals 5
    .param p1, "settingsSecure"    # Lcom/google/glass/util/SettingsSecure;
    .param p2, "clock"    # Lcom/google/glass/time/Clock;
    .param p3, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p4, "connectivityManager"    # Lcom/google/glass/android/net/ConnectivityManager;
    .param p5, "locationManagerHelper"    # Lcom/google/glass/location/LocationManagerHelper;
    .param p6, "dispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, -0x1

    .line 108
    invoke-direct {p0}, Lcom/google/glass/sync/ErrorTrackingSyncStatusReporter;-><init>()V

    .line 49
    const-string v0, "glass_sync"

    .line 50
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 99
    iput-wide v1, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastSuccessElapsedRealtime:J

    .line 100
    iput-wide v1, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastAttemptElapsedRealtime:J

    .line 101
    iput-wide v3, p0, Lcom/google/glass/sync/LocationSyncHandler;->numAttempts:J

    .line 102
    iput-wide v3, p0, Lcom/google/glass/sync/LocationSyncHandler;->numSuccess:J

    .line 109
    const-string v0, "null settingsSecure"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/SettingsSecure;

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->settingsSecure:Lcom/google/glass/util/SettingsSecure;

    .line 110
    const-string v0, "null clock"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/time/Clock;

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->clock:Lcom/google/glass/time/Clock;

    .line 111
    const-string v0, "null userEventHelper"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventHelper;

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 112
    const-string v0, "null connectivityManager"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    .line 113
    const-string v0, "null locationManagerHelper"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/LocationManagerHelper;

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 114
    const-string v0, "null dispatcher"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 116
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    sget-wide v1, Lcom/google/glass/sync/LocationSyncHandler;->MAX_LOCATION_AGE_MS:J

    invoke-direct {v0, v1, v2, p2}, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;-><init>(JLcom/google/glass/time/Clock;)V

    iput-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->isFreshLocationPredicate:Lcom/google/common/base/Predicate;

    .line 117
    return-void
.end method

.method private awaitLocationUpdate()Landroid/location/Location;
    .locals 9

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    sget-object v1, Lcom/google/glass/sync/LocationSyncHandler;->LOCATION_UPDATE_CRITERIA:Landroid/location/Criteria;

    sget-object v2, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/google/glass/sync/LocationSyncHandler;->isFreshLocationPredicate:Lcom/google/common/base/Predicate;

    sget-wide v4, Lcom/google/glass/sync/LocationSyncHandler;->LOCATION_UPDATE_TIMEOUT_MS:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 258
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    .line 253
    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/location/LocationManagerHelper;->obtainNewLocation(Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v8

    .line 262
    .local v8, "e":Ljava/lang/InterruptedException;
    iget-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Interrupted while obtaining new location"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final createLocationUpdateCriteria()Landroid/location/Criteria;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 87
    .local v0, "criteria":Landroid/location/Criteria;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 88
    return-object v0
.end method

.method private getBestUsableLastKnownLocation()Landroid/location/Location;
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    sget-object v1, Lcom/google/glass/location/LocationManagerHelper;->DEFAULT_LOCATION_COMPARATOR:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/google/glass/sync/LocationSyncHandler;->isFreshLocationPredicate:Lcom/google/common/base/Predicate;

    sget-object v3, Lcom/google/glass/sync/LocationSyncHandler;->LOCATION_UPDATE_CRITERIA:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/Predicate;Landroid/location/Criteria;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method private reportLocation(Landroid/location/Location;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "eventTupleBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 281
    iget-object v5, p0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "reportLocation() entered [location=%s, eventTupleBuilder=%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v5, p0, Lcom/google/glass/sync/LocationSyncHandler;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v5}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 286
    .local v0, "ageMs":J
    const-string v5, "lp"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const-string v5, "la"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    const-string v5, "lt"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    iget-object v5, p0, Lcom/google/glass/sync/LocationSyncHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 291
    iget-object v5, p0, Lcom/google/glass/sync/LocationSyncHandler;->settingsSecure:Lcom/google/glass/util/SettingsSecure;

    const-string v6, "android_id"

    invoke-virtual {v5, v6}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "deviceId":Ljava/lang/String;
    const-string v5, "device:"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "source":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;-><init>()V

    .line 294
    .local v3, "request":Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
    invoke-virtual {v3, v2}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    .line 295
    invoke-static {p1, v4}, Lcom/google/glass/location/LocationHelper;->toLocationProto(Landroid/location/Location;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;->setLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;

    .line 297
    iget-object v5, p0, Lcom/google/glass/sync/LocationSyncHandler;->dispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v6, Lcom/google/glass/net/ServerConstants$Action;->REPORT_LOCATION:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v7, Lcom/google/glass/sync/LocationSyncHandler;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v5, v6, v3, v7, p0}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 298
    return-void

    .line 292
    .end local v3    # "request":Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateRequest;
    .end local v4    # "source":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shouldSync(J)Z
    .locals 10
    .param p1, "elapsedRealtime"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    iget-object v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    invoke-interface {v6}, Lcom/google/glass/android/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 226
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    .line 227
    .local v1, "isConnected":Z
    :goto_0
    if-nez v1, :cond_1

    .line 228
    iget-object v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Not connected: skipping location sync [activeNetwork=%s]"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-interface {v6, v7, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :goto_1
    return v4

    .end local v1    # "isConnected":Z
    :cond_0
    move v1, v4

    .line 226
    goto :goto_0

    .line 232
    .restart local v1    # "isConnected":Z
    :cond_1
    iget-wide v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastSuccessElapsedRealtime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 233
    iget-object v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Starting sync."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v6, v7, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    .line 234
    goto :goto_1

    .line 237
    :cond_2
    iget-wide v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastSuccessElapsedRealtime:J

    sub-long v2, p1, v6

    .line 238
    .local v2, "millisSinceLastSuccess":J
    sget-wide v6, Lcom/google/glass/sync/LocationSyncHandler;->MIN_SYNC_INTERVAL_MS:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 239
    iget-object v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Skipping sync [millisSinceLastSuccess=%s]"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-interface {v6, v7, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 243
    :cond_3
    iget-object v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Starting sync [millisSinceLastSuccess=%s]"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    .line 244
    goto :goto_1
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/google/glass/sync/LocationSyncHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Sync request cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 14
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v6, -0x1

    .line 131
    iget-object v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Sync error: %s"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object p1, v10, v12

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v8}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 135
    .local v0, "elapsedRealtime":J
    iget-wide v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastAttemptElapsedRealtime:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_0

    move-wide v2, v6

    .line 137
    .local v2, "millisSinceLastAttempt":J
    :goto_0
    iget-wide v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastSuccessElapsedRealtime:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_1

    move-wide v4, v6

    .line 139
    .local v4, "millisSinceLastSuccess":J
    :goto_1
    iget-object v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC_FAILED:Lcom/google/glass/userevent/UserEventAction;

    const-string v8, "t"

    .line 140
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "ta"

    aput-object v11, v10, v12

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v13

    const/4 v11, 0x2

    const-string v12, "na"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-wide v12, p0, Lcom/google/glass/sync/LocationSyncHandler;->numAttempts:J

    .line 142
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ns"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-wide v12, p0, Lcom/google/glass/sync/LocationSyncHandler;->numSuccess:J

    .line 143
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "lsrc"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    iget-object v12, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastSyncSource:Ljava/lang/String;

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "e"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    aput-object p1, v10, v11

    .line 139
    invoke-static {v8, v9, v10}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/LocationSyncHandler;->handleFail(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    .line 148
    return-void

    .line 135
    .end local v2    # "millisSinceLastAttempt":J
    .end local v4    # "millisSinceLastSuccess":J
    :cond_0
    iget-wide v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastAttemptElapsedRealtime:J

    sub-long v2, v0, v8

    goto :goto_0

    .line 137
    .restart local v2    # "millisSinceLastAttempt":J
    :cond_1
    iget-wide v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastSuccessElapsedRealtime:J

    sub-long v4, v0, v6

    goto :goto_1
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;)V
    .locals 14
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, -0x1

    .line 152
    iget-object v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Successfully reported location."

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-wide v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->numSuccess:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->numSuccess:J

    .line 156
    iget-object v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v8}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 157
    .local v0, "elapsedRealtime":J
    iget-wide v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastAttemptElapsedRealtime:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_0

    move-wide v2, v6

    .line 159
    .local v2, "millisSinceLastAttempt":J
    :goto_0
    iget-wide v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastSuccessElapsedRealtime:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_1

    move-wide v4, v6

    .line 161
    .local v4, "millisSinceLastSuccess":J
    :goto_1
    iget-object v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    const-string v8, "t"

    .line 162
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "ta"

    aput-object v11, v10, v12

    const/4 v11, 0x1

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "na"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-wide v12, p0, Lcom/google/glass/sync/LocationSyncHandler;->numAttempts:J

    .line 164
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ns"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-wide v12, p0, Lcom/google/glass/sync/LocationSyncHandler;->numSuccess:J

    .line 165
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "lsrc"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    iget-object v12, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastSyncSource:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 161
    invoke-static {v8, v9, v10}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 168
    iput-wide v0, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastSuccessElapsedRealtime:J

    .line 169
    invoke-virtual {p0}, Lcom/google/glass/sync/LocationSyncHandler;->handleSuccess()V

    .line 170
    return-void

    .line 157
    .end local v2    # "millisSinceLastAttempt":J
    .end local v4    # "millisSinceLastSuccess":J
    :cond_0
    iget-wide v8, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastAttemptElapsedRealtime:J

    sub-long v2, v0, v8

    goto :goto_0

    .line 159
    .restart local v2    # "millisSinceLastAttempt":J
    :cond_1
    iget-wide v6, p0, Lcom/google/glass/sync/LocationSyncHandler;->lastSuccessElapsedRealtime:J

    sub-long v4, v0, v6

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/sync/LocationSyncHandler;->onSuccess(Lcom/google/googlex/glass/common/proto/LocationRequestNano$LocationUpdateResponse;)V

    return-void
.end method

.method performLocationSync(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "performLocationSync() entered [extras=%s]"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v13}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 180
    .local v2, "elapsedRealtime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/glass/sync/LocationSyncHandler;->shouldSync(J)Z

    move-result v13

    if-nez v13, :cond_0

    .line 221
    :goto_0
    return-void

    .line 184
    :cond_0
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->lastAttemptElapsedRealtime:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    const-wide/16 v6, -0x1

    .line 186
    .local v6, "millisSinceLastAttempt":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->lastSuccessElapsedRealtime:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_2

    const-wide/16 v8, -0x1

    .line 188
    .local v8, "millisSinceLastSuccess":J
    :goto_2
    if-nez p1, :cond_3

    const/4 v11, 0x0

    .line 189
    .local v11, "syncSource":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/glass/sync/LocationSyncHandler;->lastSyncSource:Ljava/lang/String;

    .line 190
    const-string v13, "t"

    .line 191
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "ta"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    .line 192
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "na"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/glass/sync/LocationSyncHandler;->numAttempts:J

    move-wide/from16 v17, v0

    .line 193
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const-string v17, "ns"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/glass/sync/LocationSyncHandler;->numSuccess:J

    move-wide/from16 v17, v0

    .line 194
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string v17, "src"

    aput-object v17, v15, v16

    const/16 v16, 0x7

    aput-object v11, v15, v16

    .line 190
    invoke-static {v13, v14, v15}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 197
    .local v4, "eventTupleBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->numAttempts:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->numAttempts:J

    .line 198
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/glass/sync/LocationSyncHandler;->lastAttemptElapsedRealtime:J

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/sync/LocationSyncHandler;->getBestUsableLastKnownLocation()Landroid/location/Location;

    move-result-object v12

    .line 201
    .local v12, "usableLastKnownLocation":Landroid/location/Location;
    if-eqz v12, :cond_4

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lcom/google/glass/sync/LocationSyncHandler;->reportLocation(Landroid/location/Location;Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 184
    .end local v4    # "eventTupleBuilder":Ljava/lang/StringBuilder;
    .end local v6    # "millisSinceLastAttempt":J
    .end local v8    # "millisSinceLastSuccess":J
    .end local v11    # "syncSource":Ljava/lang/String;
    .end local v12    # "usableLastKnownLocation":Landroid/location/Location;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->lastAttemptElapsedRealtime:J

    sub-long v6, v2, v13

    goto/16 :goto_1

    .line 186
    .restart local v6    # "millisSinceLastAttempt":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->lastSuccessElapsedRealtime:J

    sub-long v8, v2, v13

    goto :goto_2

    .line 188
    .restart local v8    # "millisSinceLastSuccess":J
    :cond_3
    const-string v13, "sync_source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 206
    .restart local v4    # "eventTupleBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "syncSource":Ljava/lang/String;
    .restart local v12    # "usableLastKnownLocation":Landroid/location/Location;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "No usable last known location found.  Requesting new location update..."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    new-instance v13, Lcom/google/glass/time/Stopwatch;

    const-string v14, "awaitLocationUpdate"

    invoke-direct {v13, v14}, Lcom/google/glass/time/Stopwatch;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v10

    .line 208
    .local v10, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/sync/LocationSyncHandler;->awaitLocationUpdate()Landroid/location/Location;

    move-result-object v5

    .line 209
    .local v5, "freshLocation":Landroid/location/Location;
    invoke-virtual {v10}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 210
    const-string v13, "lrt"

    invoke-virtual {v10}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v4, v13, v14}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    if-eqz v5, :cond_5

    .line 212
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/google/glass/sync/LocationSyncHandler;->reportLocation(Landroid/location/Location;Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 218
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v14, "No location found"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v13, v14, v15}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/sync/LocationSyncHandler;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v14, Lcom/google/glass/userevent/UserEventAction;->LOCATION_SYNC:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/sync/LocationSyncHandler;->handleSuccess()V

    goto/16 :goto_0
.end method
