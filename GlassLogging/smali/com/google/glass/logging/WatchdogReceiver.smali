.class public Lcom/google/glass/logging/WatchdogReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "WatchdogReceiver.java"


# static fields
.field static final WATCHDOG_INTERVAL:J = 0x493e0L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/WatchdogReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 33
    sget-object v1, Lcom/google/glass/logging/WatchdogReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Received intent: %s"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object p2, v5, v10

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 37
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    sget-object v1, Lcom/google/glass/logging/WatchdogReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Ignoring unexpected intent: [%s]"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object p2, v5, v10

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v9, "watchdogIntent":Landroid/content/Intent;
    const-class v1, Lcom/google/glass/logging/WatchdogService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/google/glass/logging/WatchdogService;

    .line 44
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v9, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-static {}, Lcom/google/glass/android/app/PendingIntentFactoryProvider;->getInstance()Lcom/google/glass/android/app/PendingIntentFactoryProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/android/app/PendingIntentFactoryProvider;->get()Lcom/google/glass/android/app/PendingIntentFactory;

    move-result-object v8

    .line 46
    .local v8, "pendingIntentFactory":Lcom/google/glass/android/app/PendingIntentFactory;
    const/high16 v1, 0x8000000

    invoke-interface {v8, p1, v10, v9, v1}, Lcom/google/glass/android/app/PendingIntentFactory;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 49
    .local v6, "watchdogPendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/google/glass/android/app/AlarmManagerProvider;->getInstance()Lcom/google/glass/android/app/AlarmManagerProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/android/app/AlarmManagerProvider;->from(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 50
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 52
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 53
    .local v2, "triggerAtTime":J
    const/4 v1, 0x3

    const-wide/32 v4, 0x493e0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 55
    sget-object v1, Lcom/google/glass/logging/WatchdogReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Have set a repeating alarm for watchdog."

    new-array v5, v10, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
