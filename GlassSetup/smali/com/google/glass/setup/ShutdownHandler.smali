.class public Lcom/google/glass/setup/ShutdownHandler;
.super Ljava/lang/Object;
.source "ShutdownHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/setup/ShutdownHandler$1;,
        Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOW_BATTERY_LEVEL:I = 0x19

.field private static final LOW_BATTERY_SHUTDOWN_DELAY_MS:J = 0x2bf20L

.field private static final SHUTDOWN_DELAY_MS:J = 0x927c0L

.field private static final batteryStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final alarm:Landroid/app/AlarmManager;

.field private final batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private batteryStateReceiver:Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private enabled:Z

.field private isActive:Z

.field private isScheduled:Z

.field private scheduledShutDownTime:J

.field private final shutDownIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    sget-object v0, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "batteryStateReceiver"

    .line 27
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/setup/ShutdownHandler;->batteryStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v3, p0, Lcom/google/glass/setup/ShutdownHandler;->isScheduled:Z

    .line 54
    iput-boolean v3, p0, Lcom/google/glass/setup/ShutdownHandler;->enabled:Z

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/setup/ShutdownHandler;->isActive:Z

    .line 62
    new-instance v1, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;-><init>(Lcom/google/glass/setup/ShutdownHandler;Lcom/google/glass/setup/ShutdownHandler$1;)V

    iput-object v1, p0, Lcom/google/glass/setup/ShutdownHandler;->batteryStateReceiver:Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;

    .line 65
    iput-object p1, p0, Lcom/google/glass/setup/ShutdownHandler;->context:Landroid/content/Context;

    .line 66
    new-instance v1, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/setup/ShutdownHandler;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.glass.setup.action.REQUEST_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/high16 v1, 0x8000000

    invoke-static {p1, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/setup/ShutdownHandler;->shutDownIntent:Landroid/app/PendingIntent;

    .line 73
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/google/glass/setup/ShutdownHandler;->alarm:Landroid/app/AlarmManager;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/setup/ShutdownHandler;)Lcom/google/glass/util/BatteryHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/ShutdownHandler;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/setup/ShutdownHandler;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/setup/ShutdownHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/ShutdownHandler;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/setup/ShutdownHandler;->cancelShutDown()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/setup/ShutdownHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/setup/ShutdownHandler;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/glass/setup/ShutdownHandler;->scheduleShutDown(I)V

    return-void
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/setup/ShutdownHandler;->batteryStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private cancelShutDown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 117
    sget-object v0, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "cancel shutdown."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-boolean v0, p0, Lcom/google/glass/setup/ShutdownHandler;->isScheduled:Z

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "not scheduled."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iput-boolean v3, p0, Lcom/google/glass/setup/ShutdownHandler;->isScheduled:Z

    .line 123
    iget-object v0, p0, Lcom/google/glass/setup/ShutdownHandler;->alarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/glass/setup/ShutdownHandler;->shutDownIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private scheduleShutDown(I)V
    .locals 13
    .param p1, "batteryLevel"    # I

    .prologue
    const-wide/32 v4, 0x927c0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 127
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 128
    const/16 v6, 0x19

    if-gt p1, v6, :cond_0

    const-wide/32 v0, 0x2bf20

    .line 130
    .local v0, "shutDownDelay":J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v2, v6, v0

    .line 131
    .local v2, "shutDownTime":J
    sget-object v6, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "try to schedule shutdown in %s ms. current battery level: %d"

    new-array v8, v12, [Ljava/lang/Object;

    .line 132
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    .line 131
    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0}, Lcom/google/glass/setup/ShutdownHandler;->isPoweredAndDebugBuild()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    sget-object v4, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Skip scheduling since it is on power and a debug build."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :goto_1
    return-void

    .end local v0    # "shutDownDelay":J
    .end local v2    # "shutDownTime":J
    :cond_0
    move-wide v0, v4

    .line 128
    goto :goto_0

    .line 137
    .restart local v0    # "shutDownDelay":J
    .restart local v2    # "shutDownTime":J
    :cond_1
    iget-boolean v6, p0, Lcom/google/glass/setup/ShutdownHandler;->enabled:Z

    if-nez v6, :cond_2

    .line 138
    sget-object v4, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Skip schedule since it is disabled."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 140
    :cond_2
    iget-boolean v6, p0, Lcom/google/glass/setup/ShutdownHandler;->isActive:Z

    if-eqz v6, :cond_3

    .line 141
    sget-object v4, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Skip schedule since user\'s interaction is ongoing."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 143
    :cond_3
    iget-boolean v6, p0, Lcom/google/glass/setup/ShutdownHandler;->isScheduled:Z

    if-eqz v6, :cond_4

    iget-wide v6, p0, Lcom/google/glass/setup/ShutdownHandler;->scheduledShutDownTime:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    .line 144
    sget-object v4, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "already scheduled for an earlier shut down time."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 148
    :cond_4
    sget-object v6, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "schedule shutdown in %s ms."

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iput-boolean v11, p0, Lcom/google/glass/setup/ShutdownHandler;->isScheduled:Z

    .line 150
    iput-wide v2, p0, Lcom/google/glass/setup/ShutdownHandler;->scheduledShutDownTime:J

    .line 151
    iget-object v4, p0, Lcom/google/glass/setup/ShutdownHandler;->alarm:Landroid/app/AlarmManager;

    iget-wide v5, p0, Lcom/google/glass/setup/ShutdownHandler;->scheduledShutDownTime:J

    iget-object v7, p0, Lcom/google/glass/setup/ShutdownHandler;->shutDownIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v12, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    sget-object v0, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "disable"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 96
    iget-boolean v0, p0, Lcom/google/glass/setup/ShutdownHandler;->enabled:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/glass/setup/ShutdownHandler;->batteryStateReceiver:Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/setup/ShutdownHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 99
    :cond_0
    iput-boolean v3, p0, Lcom/google/glass/setup/ShutdownHandler;->enabled:Z

    .line 100
    invoke-direct {p0}, Lcom/google/glass/setup/ShutdownHandler;->cancelShutDown()V

    .line 101
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 107
    sget-object v0, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "enable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 109
    iget-boolean v0, p0, Lcom/google/glass/setup/ShutdownHandler;->enabled:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/glass/setup/ShutdownHandler;->batteryStateReceiver:Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/setup/ShutdownHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/setup/ShutdownHandler$BatteryStateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 112
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/setup/ShutdownHandler;->enabled:Z

    .line 113
    return-void
.end method

.method protected isPoweredAndDebugBuild()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/setup/ShutdownHandler;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScheduledForTesting()Z
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 161
    iget-boolean v0, p0, Lcom/google/glass/setup/ShutdownHandler;->isScheduled:Z

    return v0
.end method

.method public markActive()V
    .locals 3

    .prologue
    .line 78
    sget-object v0, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "markActive"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/setup/ShutdownHandler;->isActive:Z

    .line 80
    invoke-direct {p0}, Lcom/google/glass/setup/ShutdownHandler;->cancelShutDown()V

    .line 81
    return-void
.end method

.method public markInactive()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    sget-object v0, Lcom/google/glass/setup/ShutdownHandler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "markInactive"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iput-boolean v3, p0, Lcom/google/glass/setup/ShutdownHandler;->isActive:Z

    .line 87
    iget-object v0, p0, Lcom/google/glass/setup/ShutdownHandler;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/glass/setup/ShutdownHandler;->scheduleShutDown(I)V

    .line 88
    return-void
.end method
