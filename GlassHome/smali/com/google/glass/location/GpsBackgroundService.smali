.class public Lcom/google/glass/location/GpsBackgroundService;
.super Landroid/app/Service;
.source "GpsBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/location/GpsBackgroundService$3;,
        Lcom/google/glass/location/GpsBackgroundService$State;
    }
.end annotation


# static fields
.field public static final EXTRA_EXPECTED_STATE:Ljava/lang/String; = "expected_state"

.field private static final FULL_CHECK_TIME_MS:J = 0x493e0L

.field private static final RESTART_TIME_ON_FAILURE_MS:J = 0x6ddd00L

.field private static final RESTART_TIME_ON_SUCCESS_MS:J = 0xdbba00L

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private fix:Z

.field private final locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private numSatellites:I

.field state:Lcom/google/glass/location/GpsBackgroundService$State;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final statusListener:Landroid/location/GpsStatus$Listener;

.field private wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/location/GpsBackgroundService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/GpsBackgroundService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->UNSTARTED:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 230
    new-instance v0, Lcom/google/glass/location/GpsBackgroundService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/location/GpsBackgroundService$1;-><init>(Lcom/google/glass/location/GpsBackgroundService;)V

    iput-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->statusListener:Landroid/location/GpsStatus$Listener;

    .line 260
    new-instance v0, Lcom/google/glass/location/GpsBackgroundService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/location/GpsBackgroundService$2;-><init>(Lcom/google/glass/location/GpsBackgroundService;)V

    iput-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/location/GpsBackgroundService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/location/GpsBackgroundService;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/location/GpsBackgroundService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/location/GpsBackgroundService;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/location/GpsBackgroundService;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/location/GpsBackgroundService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/location/GpsBackgroundService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/location/GpsBackgroundService;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    return p1
.end method

.method static synthetic access$208(Lcom/google/glass/location/GpsBackgroundService;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/location/GpsBackgroundService;

    .prologue
    .line 30
    iget v0, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/location/GpsBackgroundService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/location/GpsBackgroundService;
    .param p1, "x1"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/glass/location/GpsBackgroundService;->scheduleNextTask(J)V

    return-void
.end method

.method private expectedState(Landroid/os/Bundle;)Lcom/google/glass/location/GpsBackgroundService$State;
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    const-string v0, "expected_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/google/glass/location/GpsBackgroundService$State;->values()[Lcom/google/glass/location/GpsBackgroundService$State;

    move-result-object v0

    const-string v1, "expected_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    .line 126
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    sget-object v1, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 77
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    .line 78
    .local v0, "powerManager":Lcom/google/glass/android/os/PowerManager;
    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/location/GpsBackgroundService;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    .line 79
    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v1, v3}, Lcom/google/glass/android/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 81
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/google/glass/location/GpsBackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    .line 82
    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 83
    sget-object v1, Lcom/google/glass/location/GpsBackgroundService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No GPS provider: stopping service."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopSelf()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iput-boolean v3, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    .line 88
    iput v3, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    goto :goto_0
.end method

.method private nextState()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 167
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Running GPS background service, state:%s, fix:%s, #satellites:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    .line 168
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 167
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const-wide/16 v0, 0x0

    .line 171
    .local v0, "nextTask":J
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$3;->$SwitchMap$com$google$glass$location$GpsBackgroundService$State:[I

    iget-object v3, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    invoke-virtual {v3}, Lcom/google/glass/location/GpsBackgroundService$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 226
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/glass/location/GpsBackgroundService;->scheduleNextTask(J)V

    .line 227
    :goto_1
    :pswitch_0
    return-void

    .line 174
    :pswitch_1
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->startGPS()V

    .line 175
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK1:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 176
    const-wide/32 v0, 0xea60

    .line 177
    goto :goto_0

    .line 182
    :pswitch_2
    iget-boolean v2, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    if-eqz v2, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    .line 185
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 186
    const-wide/32 v0, 0xdbba00

    goto :goto_0

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    sget-object v3, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK1:Lcom/google/glass/location/GpsBackgroundService$State;

    if-ne v2, v3, :cond_2

    .line 190
    iget v2, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    if-nez v2, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    .line 192
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 193
    const-wide/32 v0, 0x6ddd00

    goto :goto_0

    .line 195
    :cond_1
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK2:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 196
    const-wide/32 v0, 0xea60

    goto :goto_0

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    sget-object v3, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK2:Lcom/google/glass/location/GpsBackgroundService$State;

    if-ne v2, v3, :cond_4

    .line 201
    iget v2, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    if-ge v2, v7, :cond_3

    .line 202
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    .line 203
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 204
    const-wide/32 v0, 0x6ddd00

    goto :goto_0

    .line 206
    :cond_3
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->PEEK4:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 207
    const-wide/32 v0, 0x1d4c0

    goto :goto_0

    .line 211
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    .line 212
    sget-object v2, Lcom/google/glass/location/GpsBackgroundService$State;->START:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v2, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 213
    const-wide/32 v0, 0x6ddd00

    .line 215
    goto :goto_0

    .line 221
    :pswitch_3
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private scheduleNextTask(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/glass/location/GpsBackgroundService;->nextTask()Landroid/app/PendingIntent;

    move-result-object v1

    .line 116
    .local v1, "pending":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/google/glass/location/GpsBackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 117
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 118
    const/4 v2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/location/GpsBackgroundService;->nextWakeupTime(J)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 119
    return-void
.end method

.method private startGPS()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 131
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Start GPS"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "wake lock already held: may be released too soon"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :goto_0
    iput-boolean v3, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    .line 142
    iput v3, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    .line 143
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->statusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 144
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/location/GpsBackgroundService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 146
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x493e0

    invoke-interface {v0, v1, v2}, Lcom/google/glass/android/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method private stopGPS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stop GPS"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 153
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->statusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 154
    iput-boolean v3, p0, Lcom/google/glass/location/GpsBackgroundService;->fix:Z

    .line 155
    iput v3, p0, Lcom/google/glass/location/GpsBackgroundService;->numSatellites:I

    .line 158
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->wakeLock:Lcom/google/glass/android/os/PowerManager$WakeLock;

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "wake lock no longer held"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method getSatellites(Landroid/location/GpsStatus;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "status"    # Landroid/location/GpsStatus;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/GpsStatus;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method nextTask()Landroid/app/PendingIntent;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 101
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/location/GpsBackgroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "expected_state"

    iget-object v3, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 102
    invoke-virtual {v3}, Lcom/google/glass/location/GpsBackgroundService$State;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method nextWakeupTime(J)J
    .locals 2
    .param p1, "delay"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 277
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Creating GPS background service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->init()V

    .line 279
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 294
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Destroying GPS background service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    sget-object v0, Lcom/google/glass/location/GpsBackgroundService$State;->TERMINATED:Lcom/google/glass/location/GpsBackgroundService$State;

    iput-object v0, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    .line 296
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->stopGPS()V

    .line 297
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x1

    .line 283
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/location/GpsBackgroundService;->expectedState(Landroid/os/Bundle;)Lcom/google/glass/location/GpsBackgroundService$State;

    move-result-object v0

    .line 284
    .local v0, "expected":Lcom/google/glass/location/GpsBackgroundService$State;
    iget-object v1, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    if-eq v1, v0, :cond_0

    .line 285
    sget-object v1, Lcom/google/glass/location/GpsBackgroundService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unexpected state: %s vs. %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/location/GpsBackgroundService;->state:Lcom/google/glass/location/GpsBackgroundService$State;

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->init()V

    .line 288
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/location/GpsBackgroundService;->nextState()V

    .line 289
    return v6
.end method
