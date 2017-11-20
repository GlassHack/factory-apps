.class public Lcom/google/android/gsf/checkin/CheckinService;
.super Landroid/app/Service;
.source "CheckinService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/CheckinService$SecretCodeReceiver;,
        Lcom/google/android/gsf/checkin/CheckinService$TriggerReceiver;,
        Lcom/google/android/gsf/checkin/CheckinService$Receiver;
    }
.end annotation


# static fields
.field private static sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static volatile sSystemWasUpgraded:Z


# instance fields
.field private mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTask:Lcom/google/android/gsf/checkin/CheckinTask;

.field private mTaskStartedUptime:J

.field private mTaskTriggerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/checkin/CheckinService;->sSystemWasUpgraded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 88
    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskStartedUptime:J

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I

    .line 134
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->launchService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/checkin/CheckinService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/checkin/CheckinService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gsf/checkin/CheckinService;->checkSchedule()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/checkin/CheckinService;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/checkin/CheckinService;
    .param p1, "x1"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/gsf/checkin/CheckinService;->handleResponse(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;)V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/google/android/gsf/checkin/CheckinService;->sSystemWasUpgraded:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/checkin/CheckinService;Lcom/google/android/gsf/checkin/CheckinTask;)Lcom/google/android/gsf/checkin/CheckinTask;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/checkin/CheckinService;
    .param p1, "x1"    # Lcom/google/android/gsf/checkin/CheckinTask;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/gsf/checkin/CheckinService;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/checkin/CheckinService;

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/checkin/CheckinService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/checkin/CheckinService;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gsf/checkin/CheckinService;->launchTask()V

    return-void
.end method

.method private checkSchedule()Z
    .locals 24

    .prologue
    .line 317
    const-string v4, "CheckinService"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 318
    .local v20, "sp":Landroid/content/SharedPreferences;
    new-instance v18, Lcom/android/common/OperationScheduler;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 319
    .local v18, "scheduler":Lcom/android/common/OperationScheduler;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/checkin/CheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 320
    .local v17, "resolver":Landroid/content/ContentResolver;
    const-string v4, "CheckinService_ignore_net"

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 321
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    .line 332
    :cond_0
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/checkin/CheckinService;->wasSystemUpgraded(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    const-string v4, "CheckinService"

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "CheckinService"

    const-string v7, "system was upgraded"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    const-wide/16 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 338
    :cond_2
    const-string v4, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    .line 339
    .local v21, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v19

    .line 340
    .local v19, "sim":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "imsi":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v19, :cond_3

    const-string v19, "no-sim"

    .end local v19    # "sim":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v12, :cond_4

    const-string v12, "no-imsi"

    .end local v12    # "imsi":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 342
    .local v11, "id":Ljava/lang/String;
    const-string v4, "CheckinService_lastSim"

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 343
    const-string v4, "CheckinService"

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "CheckinService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subscriberid changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_5
    const-wide/16 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 345
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "CheckinService_lastSim"

    invoke-interface {v4, v7, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    :cond_6
    new-instance v16, Lcom/android/common/OperationScheduler$Options;

    invoke-direct/range {v16 .. v16}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    .line 349
    .local v16, "options":Lcom/android/common/OperationScheduler$Options;
    const-wide/16 v7, 0x7530

    move-object/from16 v0, v16

    iput-wide v7, v0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    .line 350
    const-wide/16 v7, 0x3e8

    const-string v4, "checkin_interval"

    const-wide/32 v22, 0xa8c0

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v22

    mul-long v7, v7, v22

    move-object/from16 v0, v16

    iput-wide v7, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    .line 352
    const/16 v4, 0x1388

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    .line 356
    const-string v4, "CheckinService"

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 357
    const-string v4, "CheckinService"

    invoke-virtual/range {v18 .. v18}, Lcom/android/common/OperationScheduler;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 361
    .local v14, "now":J
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v5

    .line 362
    .local v5, "next":J
    cmp-long v4, v5, v14

    if-gtz v4, :cond_a

    const/4 v4, 0x1

    .line 380
    :goto_1
    return v4

    .line 323
    .end local v5    # "next":J
    .end local v11    # "id":Ljava/lang/String;
    .end local v14    # "now":J
    .end local v16    # "options":Lcom/android/common/OperationScheduler$Options;
    .end local v21    # "tm":Landroid/telephony/TelephonyManager;
    :cond_8
    const-string v4, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 324
    .local v10, "cm":Landroid/net/ConnectivityManager;
    if-eqz v10, :cond_0

    .line 325
    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 326
    .local v13, "ni":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    .line 364
    .end local v10    # "cm":Landroid/net/ConnectivityManager;
    .end local v13    # "ni":Landroid/net/NetworkInfo;
    .restart local v5    # "next":J
    .restart local v11    # "id":Ljava/lang/String;
    .restart local v14    # "now":J
    .restart local v16    # "options":Lcom/android/common/OperationScheduler$Options;
    .restart local v21    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    const/4 v4, 0x0

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/google/android/gsf/checkin/CheckinService$Receiver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 365
    .local v9, "pi":Landroid/app/PendingIntent;
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v4, v5, v7

    if-nez v4, :cond_c

    .line 366
    const-string v4, "CheckinService"

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "CheckinService"

    const-string v7, "Checkin disabled"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_b
    invoke-virtual {v9}, Landroid/app/PendingIntent;->cancel()V

    .line 368
    const/4 v4, 0x0

    goto :goto_1

    .line 371
    :cond_c
    const-string v4, "CheckinService"

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 372
    const-string v4, "CheckinService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checkin scheduled at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_d
    const-string v4, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 375
    .local v3, "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    const-wide/16 v22, 0x0

    cmp-long v4, v7, v22

    if-lez v4, :cond_e

    .line 376
    const/4 v4, 0x0

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 377
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 379
    :cond_e
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, v6, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 380
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public static getLastCheckinSuccessTime(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 411
    new-instance v0, Lcom/android/common/OperationScheduler;

    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Lcom/android/common/OperationScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    const-string v0, "CheckinService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleResponse(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;)V
    .locals 13
    .param p1, "response"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    .prologue
    const v12, 0x108008a

    const/4 v11, 0x0

    .line 278
    const-string v8, "CheckinService"

    invoke-virtual {p0, v8, v11}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 279
    .local v7, "sp":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_2

    .line 280
    invoke-static {p1}, Lcom/google/android/gsf/checkin/CheckinResponseProcessor;->getIntents(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;)[Landroid/content/Intent;

    move-result-object v0

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 281
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "CheckinService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "From server: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.google.android.checkin.INVALIDATE"

    if-ne v8, v9, :cond_0

    .line 283
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->invalidateAuthTokens(Landroid/content/Context;)V

    .line 280
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/CheckinService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 288
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v8, "CheckinService_ignore_net"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 289
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "CheckinService_ignore_net"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 294
    .end local v0    # "arr$":[Landroid/content/Intent;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    const-string v8, "CheckinService_notify"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 295
    if-eqz p1, :cond_4

    const-string v4, "checkin succeeded"

    .line 296
    .local v4, "message":Ljava/lang/String;
    :goto_2
    new-instance v5, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v12, v4, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 298
    .local v5, "n":Landroid/app/Notification;
    iget v8, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 299
    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v11, v9, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v5, p0, v4, v8, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 302
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 303
    .local v6, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v6, v12, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 304
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "CheckinService_notify"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 306
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "n":Landroid/app/Notification;
    .end local v6    # "nm":Landroid/app/NotificationManager;
    :cond_3
    return-void

    .line 295
    :cond_4
    const-string v4, "checkin failed"

    goto :goto_2
.end method

.method private static launchService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const-class v2, Lcom/google/android/gsf/checkin/CheckinService;

    monitor-enter v2

    .line 180
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 181
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 182
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "Checkin Handoff"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 183
    sget-object v1, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 185
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/checkin/CheckinService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 187
    return-void

    .line 185
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private launchTask()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 195
    iget v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I

    .line 197
    const-string v7, "CheckinService"

    invoke-static {v7, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 198
    const-string v7, "CheckinService"

    const-string v8, "launchTask"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    iget-object v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;

    if-eqz v7, :cond_4

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 204
    .local v6, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskStartedUptime:J

    sub-long v3, v7, v9

    .line 205
    .local v3, "millisRunning":J
    const-wide/16 v7, 0x3e8

    const-string v9, "checkin_watchdog_seconds"

    const-wide/16 v10, 0xe10

    invoke-static {v6, v9, v10, v11}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    mul-long v1, v7, v9

    .line 208
    .local v1, "millisMax":J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_2

    cmp-long v7, v3, v1

    if-lez v7, :cond_2

    .line 211
    const-string v7, "wtf_is_fatal"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 212
    const-wide/32 v7, 0xea60

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 216
    :cond_1
    const-string v7, "CheckinService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checkin still running after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    .line 218
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 221
    :cond_2
    const-string v7, "CheckinService"

    invoke-static {v7, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 222
    const-string v7, "CheckinService"

    const-string v8, "checkinRunning"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v1    # "millisMax":J
    .end local v3    # "millisRunning":J
    .end local v6    # "resolver":Landroid/content/ContentResolver;
    :cond_3
    :goto_0
    return-void

    .line 227
    :cond_4
    iget v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I

    .line 228
    .local v0, "lastTriggerCount":I
    new-instance v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;

    invoke-direct {v5}, Lcom/google/android/gsf/checkin/CheckinTask$Params;-><init>()V

    .line 229
    .local v5, "params":Lcom/google/android/gsf/checkin/CheckinTask$Params;
    iput-object p0, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    .line 230
    const-string v7, "dropbox"

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/DropBoxManager;

    iput-object v7, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->dropbox:Landroid/os/DropBoxManager;

    .line 231
    const-string v7, "CheckinService"

    invoke-virtual {p0, v7, v12}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    .line 232
    new-instance v7, Lcom/android/common/OperationScheduler;

    iget-object v8, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    invoke-direct {v7, v8}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v7, v5, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTaskStartedUptime:J

    .line 235
    new-instance v7, Lcom/google/android/gsf/checkin/CheckinService$1;

    invoke-direct {v7, p0, v0}, Lcom/google/android/gsf/checkin/CheckinService$1;-><init>(Lcom/google/android/gsf/checkin/CheckinService;I)V

    iput-object v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;

    .line 266
    iget-object v7, p0, Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/android/gsf/checkin/CheckinTask$Params;

    aput-object v5, v8, v12

    invoke-virtual {v7, v8}, Lcom/google/android/gsf/checkin/CheckinTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static wasSystemUpgraded(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 391
    sget-boolean v3, Lcom/google/android/gsf/checkin/CheckinService;->sSystemWasUpgraded:Z

    if-eqz v3, :cond_0

    .line 407
    :goto_0
    return v2

    .line 395
    :cond_0
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 397
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "build":Ljava/lang/String;
    const-string v3, "CheckinService_lastBuild"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 399
    const/4 v2, 0x0

    goto :goto_0

    .line 404
    :cond_1
    sput-boolean v2, Lcom/google/android/gsf/checkin/CheckinService;->sSystemWasUpgraded:Z

    .line 406
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CheckinService_lastBuild"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 158
    iget-object v1, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 159
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 160
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "Checkin Service"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    iget-object v1, p0, Lcom/google/android/gsf/checkin/CheckinService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 164
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const-class v2, Lcom/google/android/gsf/checkin/CheckinService;

    monitor-enter v2

    .line 165
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 166
    sget-object v1, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 167
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gsf/checkin/CheckinService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 169
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-direct {p0}, Lcom/google/android/gsf/checkin/CheckinService;->launchTask()V

    .line 172
    return v3

    .line 169
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
