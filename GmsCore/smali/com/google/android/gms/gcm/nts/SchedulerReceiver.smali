.class public Lcom/google/android/gms/gcm/nts/SchedulerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/gcm/nts/m;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    const-string v1, "NetworkScheduler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const-string v1, "NetworkScheduler.SchedulerReceiver"

    const-string v2, "Must provide a package name in the intent."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    const/4 v0, 0x1

    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    const-string v1, "NetworkScheduler.SchedulerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Provided package not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;)V

    .line 91
    iput-object p1, p0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->b:Landroid/content/Context;

    .line 92
    invoke-static {}, Lcom/google/android/gms/gcm/f;->d()I

    move-result v0

    .line 93
    const-string v1, "NetworkScheduler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "NetworkScheduler.SchedulerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive, running as u"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scheduler_action"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    if-eqz v0, :cond_5

    .line 98
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "user_serial"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.google.android.gms.gcm.ACTION_PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 99
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 101
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    .line 148
    :cond_2
    :goto_1
    return-void

    .line 98
    :cond_3
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.google.android.gms.gcm.ACTION_PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v0, "com.google.android.gms.gcm.ACTION_SCHEDULE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms.gcm.nts.ACTION_SCHEDULE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto :goto_0

    .line 103
    :cond_5
    if-nez v0, :cond_23

    .line 104
    invoke-static {p1}, Lcom/google/android/gms/gcm/nts/m;->a(Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lcom/google/android/gms/gcm/nts/m;->a()Lcom/google/android/gms/gcm/nts/m;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->a:Lcom/google/android/gms/gcm/nts/m;

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->a:Lcom/google/android/gms/gcm/nts/m;

    if-nez v1, :cond_6

    .line 107
    const-string v1, "NetworkScheduler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    const-string v1, "NetworkScheduler.SchedulerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduler was not initialised, although userSerial: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    :cond_6
    const-string v0, "user_serial"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "com.google.android.gms.gcm.ACTION_SCHEDULE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.google.android.gms.gcm.nts.ACTION_SCHEDULE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 119
    :cond_7
    const-string v0, "scheduler_action"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "NetworkScheduler.SchedulerReceiver"

    const-string v1, "Broadcast provided with no action to the scheduler in Intent."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string v0, "app"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_9

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-nez v1, :cond_b

    :cond_9
    const-string v0, "NetworkScheduler.SchedulerReceiver"

    const-string v1, "Invalid parameter app"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    if-nez v1, :cond_d

    const-string v0, "NetworkScheduler.SchedulerReceiver"

    const-string v1, "Invalid package name : Perhaps you didn\'t include a PendingIntent in the extras?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    check-cast v0, Landroid/app/PendingIntent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_c

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, v0

    goto :goto_2

    :cond_c
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_d
    const-string v0, "SCHEDULE_TASK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "task"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/gcm/Task;

    if-eqz v0, :cond_f

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/Task;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lcom/google/android/gms/gcm/PeriodicTask;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->a:Lcom/google/android/gms/gcm/nts/m;

    check-cast v0, Lcom/google/android/gms/gcm/PeriodicTask;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/PeriodicTask;Landroid/content/ComponentName;I)V

    goto/16 :goto_1

    :cond_e
    instance-of v1, v0, Lcom/google/android/gms/gcm/OneoffTask;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->a:Lcom/google/android/gms/gcm/nts/m;

    check-cast v0, Lcom/google/android/gms/gcm/OneoffTask;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/gcm/nts/m;->a(Lcom/google/android/gms/gcm/OneoffTask;Landroid/content/ComponentName;I)V

    goto/16 :goto_1

    :cond_f
    const-string v0, "NetworkScheduler.SchedulerReceiver"

    const-string v1, "Empty task parameter for schedule request. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_10
    const-string v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "component"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_11

    const-string v0, "NetworkScheduler.SchedulerReceiver"

    const-string v1, "Invalid component specified."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_11
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ACTION_SCHEDULE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "ACTION_SCHEDULE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_12
    const-string v0, "window_start"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_13

    const-string v0, "NetworkScheduler.SchedulerReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Cannot specify a start time in the past: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", aborting"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v0, "window_end"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gez v0, :cond_14

    const-string v0, "NetworkScheduler.SchedulerReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Cannot specify an end time in the past: "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", aborting"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string v0, "update_current"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->a:Lcom/google/android/gms/gcm/nts/m;

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/gcm/nts/m;->a(Landroid/content/ComponentName;IJJLjava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_15
    const-string v0, "SCHEDULE_RECURRING"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "NTS_SCHEDULE_RECURRING"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const-string v0, "period"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "period_flex"

    long-to-float v1, v4

    const v6, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v6

    float-to-long v6, v1

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->a:Lcom/google/android/gms/gcm/nts/m;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/gcm/nts/m;->b(Landroid/content/ComponentName;IJJLjava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_17
    const-string v0, "CANCEL_TASK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "NTS_CANCEL_TASK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-virtual {v0, v2, v8, v3}, Lcom/google/android/gms/gcm/nts/m;->a(Landroid/content/ComponentName;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_19
    const-string v0, "CANCEL_ALL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "NTS_CANCEL_ALL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/SchedulerReceiver;->a:Lcom/google/android/gms/gcm/nts/m;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/nts/m;->a(Landroid/content/ComponentName;I)V

    goto/16 :goto_1

    .line 121
    :cond_1b
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "com.google.android.gms.gcm.ACTION_PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 123
    :cond_1c
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v0, "NetworkScheduler.SchedulerReceiver"

    const-string v1, "No package name provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/gcm/nts/m;->a()Lcom/google/android/gms/gcm/nts/m;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 130
    :cond_1e
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "com.google.android.gms.gcm.ACTION_PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 132
    :cond_1f
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "NetworkScheduler.SchedulerReceiver"

    const-string v1, "No package name provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_20
    invoke-static {}, Lcom/google/android/gms/gcm/nts/m;->a()Lcom/google/android/gms/gcm/nts/m;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/gcm/nts/m;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 135
    :cond_21
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 136
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 137
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 138
    invoke-static {v0}, Lcom/google/android/gms/gcm/f;->a(I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/gcm/nts/m;->a()Lcom/google/android/gms/gcm/nts/m;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/gcm/nts/m;->a(I)V

    goto/16 :goto_1

    .line 142
    :cond_22
    const-string v1, "NetworkScheduler.SchedulerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognised action provided: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 146
    :cond_23
    const-string v1, "NetworkScheduler.SchedulerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid user serial: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
