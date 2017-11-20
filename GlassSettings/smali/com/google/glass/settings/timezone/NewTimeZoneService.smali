.class public final Lcom/google/glass/settings/timezone/NewTimeZoneService;
.super Landroid/app/Service;
.source "NewTimeZoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final updateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private currentPriority:I

.field private lastUpdateTime:J

.field private locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

.field private final locationUpdatesExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field private syncableSettingHelper:Lcom/google/glass/settings/syncable/SyncableSettingHelper;

.field private timeZoneReversedListener:Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

.field private final updateReceiver:Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;

.field private updater:Lcom/google/glass/settings/timezone/TimeZoneUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 42
    sget-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "updateReceiver"

    .line 43
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->updateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.timezone.UPDATE_TIME_ZONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.glass.timezone.COMPANION_UPDATE_TIME_ZONE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.net.wifi.STATE_CHANGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;-><init>(Lcom/google/glass/settings/timezone/NewTimeZoneService;Lcom/google/glass/settings/timezone/NewTimeZoneService$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->updateReceiver:Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->locationUpdatesExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    .line 56
    new-instance v0, Lcom/google/glass/settings/timezone/NewTimeZoneService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService$1;-><init>(Lcom/google/glass/settings/timezone/NewTimeZoneService;)V

    iput-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->timeZoneReversedListener:Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    .line 186
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/settings/timezone/NewTimeZoneService;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/NewTimeZoneService;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->lastUpdateTime:J

    return-wide v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/timezone/NewTimeZoneService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/NewTimeZoneService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->setTimeZone(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/settings/timezone/NewTimeZoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/timezone/NewTimeZoneService;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->startNewUpdater()V

    return-void
.end method

.method static synthetic access$600()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->updateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private cancelExistingUpdater()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->updater:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->updater:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    invoke-virtual {v0}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->cancelUpdate()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->updater:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    .line 140
    :cond_0
    return-void
.end method

.method private cancelPeriodicUpdates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.glass.timezone.UPDATE_TIME_ZONE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 165
    .local v1, "pending":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 166
    return-void
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/google/glass/util/SystemServiceWrapper;->getInstance()Lcom/google/glass/util/SystemServiceWrapper;

    move-result-object v0

    const-string v1, "alarm"

    .line 144
    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/SystemServiceWrapper;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method private schedulePeriodicUpdates()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 156
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.google.glass.timezone.UPDATE_TIME_ZONE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {p0, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 158
    .local v6, "pending":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x2932e00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 160
    return-void
.end method

.method private setTimeZone(Ljava/lang/String;I)V
    .locals 6
    .param p1, "timeZone"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    iget v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->currentPriority:I

    if-lt p2, v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    sget-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Skipping timezone=%s, priority=%s, currentPriority=%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->currentPriority:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 112
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 117
    iput p2, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->currentPriority:I

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->lastUpdateTime:J

    .line 119
    sget-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Set timezone=%s from source w/ priority=%s at=%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->lastUpdateTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 119
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->syncableSettingHelper:Lcom/google/glass/settings/syncable/SyncableSettingHelper;

    invoke-virtual {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "timezone"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/glass/settings/syncable/SyncableSettingHelper;->setSyncableSettingFromClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startNewUpdater()V
    .locals 4

    .prologue
    .line 128
    sget-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting a new update."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->cancelExistingUpdater()V

    .line 130
    invoke-static {}, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;->getInstance()Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    iget-object v2, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->locationUpdatesExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iget-object v3, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->timeZoneReversedListener:Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    .line 131
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;->get(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;)Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->updater:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    .line 132
    iget-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->updater:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    invoke-virtual {v0}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->startUpdate()V

    .line 133
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "Current time zone: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v3, "\nCurrent priority: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->currentPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v3, "\nLast Updated: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-wide v3, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->lastUpdateTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->lastUpdateTime:J

    sub-long v1, v3, v5

    .line 176
    .local v1, "timeDelta":J
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms ago."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .end local v1    # "timeDelta":J
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 181
    return-void

    .line 178
    :cond_0
    const-string v3, "Not updated since reboot."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 74
    new-instance v1, Lcom/google/glass/location/LocationManagerHelper;

    const-string v0, "location"

    .line 75
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 76
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    .line 77
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    iput-object v1, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->currentPriority:I

    .line 79
    iget-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->updateReceiver:Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 80
    new-instance v0, Lcom/google/glass/settings/syncable/SyncableSettingHelper;

    invoke-direct {v0}, Lcom/google/glass/settings/syncable/SyncableSettingHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->syncableSettingHelper:Lcom/google/glass/settings/syncable/SyncableSettingHelper;

    .line 82
    invoke-static {p0}, Lcom/google/glass/util/SetupHelper;->wasSetupFinished(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/google/glass/util/TimeZoneUtil;

    invoke-direct {v0, p0}, Lcom/google/glass/util/TimeZoneUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/TimeZoneUtil;->updateTimeZone()V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->schedulePeriodicUpdates()V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 103
    sget-object v0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy was called. It shouldn\'t be called unless the system is going down."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->cancelExistingUpdater()V

    .line 105
    iget-object v0, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->updateReceiver:Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService$UpdateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 106
    invoke-direct {p0}, Lcom/google/glass/settings/timezone/NewTimeZoneService;->cancelPeriodicUpdates()V

    .line 107
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 108
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method setTestSyncableSettingHelperForTest(Lcom/google/glass/settings/syncable/SyncableSettingHelper;)V
    .locals 0
    .param p1, "syncableSettingHelper"    # Lcom/google/glass/settings/syncable/SyncableSettingHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 151
    iput-object p1, p0, Lcom/google/glass/settings/timezone/NewTimeZoneService;->syncableSettingHelper:Lcom/google/glass/settings/syncable/SyncableSettingHelper;

    .line 152
    return-void
.end method
