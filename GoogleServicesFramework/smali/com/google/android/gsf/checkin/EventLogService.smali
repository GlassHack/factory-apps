.class public Lcom/google/android/gsf/checkin/EventLogService;
.super Landroid/app/Service;
.source "EventLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/EventLogService$Receiver;
    }
.end annotation


# static fields
.field private static final sAggregator:Lcom/google/android/gsf/checkin/EventLogAggregator;

.field private static sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWorkerTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/gsf/checkin/EventLogAggregator;

    invoke-direct {v0}, Lcom/google/android/gsf/checkin/EventLogAggregator;-><init>()V

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sAggregator:Lcom/google/android/gsf/checkin/EventLogAggregator;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mWorkerTask:Landroid/os/AsyncTask;

    .line 57
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/android/gsf/checkin/EventLogService;->scheduleAggregation(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/android/gsf/checkin/EventLogAggregator;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sAggregator:Lcom/google/android/gsf/checkin/EventLogAggregator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/checkin/EventLogService;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/checkin/EventLogService;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/gsf/checkin/EventLogService;->mWorkerTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method public static captureLogs(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string v0, "EventLogService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 69
    .local v10, "sp":Landroid/content/SharedPreferences;
    const-string v0, "dropbox"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DropBoxManager;

    .line 71
    .local v6, "dropbox":Landroid/os/DropBoxManager;
    sget-object v11, Lcom/google/android/gsf/checkin/EventLogService;->sAggregator:Lcom/google/android/gsf/checkin/EventLogAggregator;

    monitor-enter v11

    .line 72
    :try_start_0
    const-string v0, "lastLog"

    const-wide/16 v4, 0x0

    invoke-interface {v10, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 73
    .local v2, "lastLog":J
    const-string v0, "EventLogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accumulating logs since "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    sget-object v0, Lcom/google/android/gsf/checkin/EventLogService;->sAggregator:Lcom/google/android/gsf/checkin/EventLogAggregator;

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/checkin/EventLogAggregator;->aggregate(Landroid/content/Context;JJLandroid/os/DropBoxManager;)J

    move-result-wide v7

    .line 77
    .local v7, "bookmark":J
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastLog"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v7    # "bookmark":J
    :goto_0
    :try_start_2
    monitor-exit v11

    .line 82
    return-void

    .line 78
    :catch_0
    move-exception v9

    .line 79
    .local v9, "e":Ljava/io/IOException;
    const-string v0, "EventLogService"

    const-string v1, "Can\'t capture logs"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 81
    .end local v2    # "lastLog":J
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static scheduleAggregation(Landroid/content/Context;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string v2, "EventLogService"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 165
    .local v15, "sp":Landroid/content/SharedPreferences;
    new-instance v14, Lcom/android/common/OperationScheduler;

    invoke-direct {v14, v15}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 167
    .local v14, "scheduler":Lcom/android/common/OperationScheduler;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 168
    .local v13, "resolver":Landroid/content/ContentResolver;
    new-instance v11, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v11}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    .line 169
    .local v11, "options":Lcom/android/common/OperationScheduler$Options;
    const-string v2, "aggregation_interval_seconds"

    const/16 v5, 0x708

    invoke-static {v13, v2, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    iput-wide v5, v11, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 174
    .local v9, "now":J
    invoke-virtual {v14, v11}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v3

    .line 176
    .local v3, "next":J
    cmp-long v2, v3, v9

    if-gtz v2, :cond_2

    .line 177
    const-class v5, Lcom/google/android/gsf/checkin/EventLogService;

    monitor-enter v5

    .line 178
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 179
    const-string v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 180
    .local v12, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v6, "Event Log Handoff"

    invoke-virtual {v12, v2, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 181
    sget-object v2, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 183
    .end local v12    # "pm":Landroid/os/PowerManager;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/google/android/gsf/checkin/EventLogService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 183
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 185
    :cond_2
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v2, v3, v5

    if-gez v2, :cond_1

    .line 186
    const-string v2, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 187
    .local v1, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/checkin/EventLogService$Receiver;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v8, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 189
    .local v7, "pi":Landroid/app/PendingIntent;
    iget-wide v5, v11, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    const-wide/16 v16, 0x0

    cmp-long v2, v5, v16

    if-lez v2, :cond_3

    .line 190
    const/4 v2, 0x0

    iget-wide v5, v11, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 192
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x1

    .line 94
    iget-object v2, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 95
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/EventLogService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 96
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "Event Log Service"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    iget-object v2, p0, Lcom/google/android/gsf/checkin/EventLogService;->mServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 100
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    const-class v3, Lcom/google/android/gsf/checkin/EventLogService;

    monitor-enter v3

    .line 101
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 102
    sget-object v2, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 103
    const/4 v2, 0x0

    sput-object v2, Lcom/google/android/gsf/checkin/EventLogService;->sHandoffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 105
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-object v2, p0, Lcom/google/android/gsf/checkin/EventLogService;->mWorkerTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_2

    .line 153
    :goto_0
    return v4

    .line 105
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 111
    :cond_2
    move-object v0, p0

    .line 113
    .local v0, "parentContext":Landroid/content/Context;
    new-instance v2, Lcom/google/android/gsf/checkin/EventLogService$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gsf/checkin/EventLogService$1;-><init>(Lcom/google/android/gsf/checkin/EventLogService;Landroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/checkin/EventLogService$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/checkin/EventLogService;->mWorkerTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method
