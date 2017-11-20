.class public final Lcom/google/glass/logging/FeedbackCleanupReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "FeedbackCleanupReceiver.java"


# static fields
.field private static final BASE_START_DELAY_MS:J = 0x493e0L

.field private static final JITTER_START_DELAY_MS:J = 0x2bf20L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/google/glass/logging/EngFeedbackService;

    invoke-direct {v4, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v4, "serviceIntent":Landroid/content/Intent;
    const-string v7, "cleanup_only"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {p1, v7, v4, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 45
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/google/glass/android/app/AlarmManagerProvider;->getInstance()Lcom/google/glass/android/app/AlarmManagerProvider;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/glass/android/app/AlarmManagerProvider;->from(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 46
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const-wide/32 v7, 0x493e0

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 47
    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const v10, 0x482fc800    # 180000.0f

    mul-float/2addr v9, v10

    float-to-long v9, v9

    add-long v1, v7, v9

    .line 48
    .local v1, "delayMillis":J
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v7

    add-long v5, v7, v1

    .line 49
    .local v5, "triggerstamp":J
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
