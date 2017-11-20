.class public Lcom/google/glass/settings/timezone/TimeZoneUpdater;
.super Ljava/lang/Object;
.source "TimeZoneUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/timezone/TimeZoneUpdater$GetTimeZoneResponseHandler;,
        Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;,
        Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;,
        Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;
    }
.end annotation


# static fields
.field private static final DURATION_TO_WAIT_FOR_NEW_LOCATION_IN_SECONDS:J = 0x1eL

.field static final FRESHNESS_THRESHOLD_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LOCATION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCATION_FRESHNESS_PREDICATE:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCATION_LOW_POWER_CRITERIA:Landroid/location/Criteria;

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

.field private final connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

.field final connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private isConnected:Z

.field private final listener:Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

.field private final listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private final locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private final locationRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final notifyLocationChanged:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Landroid/location/Location;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private pendingLocationFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final protoRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field final responseHandler:Lcom/google/glass/net/ProtoResponseHandler;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;",
            ">;"
        }
    .end annotation
.end field

.field private volatile state:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/settings/timezone/TimeZoneUpdater$1;

    invoke-direct {v1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 57
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 58
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 59
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;-><init>(JLcom/google/glass/time/Clock;)V

    sput-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->LOCATION_FRESHNESS_PREDICATE:Lcom/google/common/base/Predicate;

    .line 61
    invoke-static {}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->newLowPowerRequirementCriteria()Landroid/location/Criteria;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->LOCATION_LOW_POWER_CRITERIA:Landroid/location/Criteria;

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->FRESHNESS_THRESHOLD_MS:J

    .line 72
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;

    sget-wide v1, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->FRESHNESS_THRESHOLD_MS:J

    invoke-direct {v0, v1, v2}, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;-><init>(J)V

    sput-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->LOCATION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/google/glass/context/BroadcastReceiverRegistrar;Lcom/google/glass/android/net/ConnectivityManager;Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;)V
    .locals 2
    .param p1, "broadcastReceiverRegistrar"    # Lcom/google/glass/context/BroadcastReceiverRegistrar;
    .param p2, "connectivityManager"    # Lcom/google/glass/android/net/ConnectivityManager;
    .param p3, "protoRequestDispatcher"    # Lcom/google/glass/net/ProtoRequestDispatcher;
    .param p4, "locationManagerHelper"    # Lcom/google/glass/location/LocationManagerHelper;
    .param p5, "listeningExecutorService"    # Lcom/google/common/util/concurrent/ListeningExecutorService;
    .param p6, "listener"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$2;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$2;-><init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)V

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->notifyLocationChanged:Lcom/google/common/base/Function;

    .line 93
    new-instance v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$ConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Lcom/google/glass/settings/timezone/TimeZoneUpdater$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 97
    new-instance v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$GetTimeZoneResponseHandler;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$GetTimeZoneResponseHandler;-><init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Lcom/google/glass/settings/timezone/TimeZoneUpdater$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    .line 110
    iput-object v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->handler:Landroid/os/Handler;

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->locationRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 134
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->INIT:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->state:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    .line 146
    const-string v0, "null broadcastReceiverRegistrar"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/context/BroadcastReceiverRegistrar;

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .line 148
    const-string v0, "null connectivityManager"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    .line 149
    const-string v0, "null protoRequestDispatcher"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->protoRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 151
    const-string v0, "null locationManagerHelper"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/LocationManagerHelper;

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 152
    const-string v0, "null listeningExecutorService"

    .line 153
    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListeningExecutorService;

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 154
    const-string v0, "null listener"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->listener:Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Landroid/location/Location;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->dispatchToServerIfReady(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->isConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->isConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->locationRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->state:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->listener:Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    return-object v0
.end method

.method private dispatchToServerIfReady(Landroid/location/Location;)Z
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 215
    sget-object v4, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "dispatchToServerIfReady() [locationIsNull=%s, isConnected=%s]"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    if-nez p1, :cond_1

    move v1, v2

    .line 216
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v3

    iget-boolean v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->isConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v2

    .line 215
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->isConnected:Z

    if-nez v1, :cond_2

    :cond_0
    move v2, v3

    .line 227
    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 215
    goto :goto_0

    .line 222
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->stopRequestingUpdates()V

    .line 223
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneRequest;-><init>()V

    .line 224
    .local v0, "request":Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneRequest;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneRequest;->setLatitude(D)Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneRequest;

    .line 225
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneRequest;->setLongitude(D)Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneRequest;

    .line 226
    invoke-direct {p0, v0}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->sendRequestToServer(Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneRequest;)V

    goto :goto_1
.end method

.method private isConnected()Z
    .locals 2

    .prologue
    .line 267
    iget-object v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->connectivityManager:Lcom/google/glass/android/net/ConnectivityManager;

    invoke-interface {v1}, Lcom/google/glass/android/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 268
    .local v0, "network":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static newLowPowerRequirementCriteria()Landroid/location/Criteria;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 330
    .local v0, "criteria":Landroid/location/Criteria;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 331
    return-object v0
.end method

.method private onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 196
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onLocationChanged: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->locationRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/settings/timezone/TimeZoneUpdater$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$3;-><init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method private sendRequestToServer(Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneRequest;

    .prologue
    .line 231
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Sending GetTimeZoneRequest to server"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->protoRequestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->TIMEZONE:Lcom/google/glass/net/ServerConstants$Action;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    iget-object v5, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->responseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/protobuf/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 233
    return-void
.end method

.method private startRequestingUpdates()V
    .locals 11

    .prologue
    .line 236
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->handler:Landroid/os/Handler;

    .line 238
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    sget-object v1, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->LOCATION_COMPARATOR:Ljava/util/Comparator;

    sget-object v2, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->LOCATION_FRESHNESS_PREDICATE:Lcom/google/common/base/Predicate;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/location/LocationManagerHelper;->getLastKnownLocation(Ljava/util/Comparator;Lcom/google/common/base/Predicate;Landroid/location/Criteria;)Landroid/location/Location;

    move-result-object v9

    .line 240
    .local v9, "lastKnownLocation":Landroid/location/Location;
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->LOCATION_FRESHNESS_PREDICATE:Lcom/google/common/base/Predicate;

    invoke-interface {v0, v9}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0, v9}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->onLocationChanged(Landroid/location/Location;)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 255
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    iget-object v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    sget-object v2, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->LOCATION_LOW_POWER_CRITERIA:Landroid/location/Criteria;

    sget-object v3, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->LOCATION_COMPARATOR:Ljava/util/Comparator;

    sget-object v4, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->LOCATION_FRESHNESS_PREDICATE:Lcom/google/common/base/Predicate;

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 250
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    .line 243
    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/location/LocationManagerHelper;->asyncObtainNewLocation(Lcom/google/common/util/concurrent/ListeningExecutorService;Landroid/location/Criteria;Ljava/util/Comparator;Lcom/google/common/base/Predicate;JLjava/util/concurrent/TimeUnit;Landroid/os/Looper;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v10

    .line 251
    .local v10, "locationFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->notifyLocationChanged:Lcom/google/common/base/Function;

    invoke-static {v10, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->pendingLocationFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0
.end method

.method private stopRequestingUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->connectivityReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 259
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->pendingLocationFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->pendingLocationFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 261
    iput-object v2, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->pendingLocationFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 263
    :cond_0
    iput-object v2, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->handler:Landroid/os/Handler;

    .line 264
    return-void
.end method


# virtual methods
.method public cancelUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->state:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    sget-object v1, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->CANCELED:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    if-ne v0, v1, :cond_0

    .line 182
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Already cancelled."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cancelling update."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->CANCELED:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->state:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    .line 188
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->stopRequestingUpdates()V

    goto :goto_0
.end method

.method public startUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->state:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    sget-object v1, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->RUNNING:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    if-ne v0, v1, :cond_0

    .line 165
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Already requesting an update."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :goto_0
    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting update."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;->RUNNING:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    iput-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->state:Lcom/google/glass/settings/timezone/TimeZoneUpdater$State;

    .line 171
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->startRequestingUpdates()V

    goto :goto_0
.end method
