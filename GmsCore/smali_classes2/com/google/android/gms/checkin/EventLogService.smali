.class public Lcom/google/android/gms/checkin/EventLogService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/checkin/i;

.field private static b:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private c:Landroid/os/PowerManager$WakeLock;

.field private d:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/android/gms/checkin/i;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/checkin/EventLogService;->a:Lcom/google/android/gms/checkin/i;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/checkin/EventLogService;->b:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->c:Landroid/os/PowerManager$WakeLock;

    .line 50
    iput-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->d:Landroid/os/AsyncTask;

    .line 55
    return-void
.end method

.method static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/checkin/EventLogService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 86
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-interface {p0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 90
    :goto_0
    return-wide v0

    .line 88
    :catch_0
    move-exception v2

    const-string v2, "EventLogService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Non-long value in sharedPrefs. key: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/checkin/EventLogService;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->d:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic a()Lcom/google/android/gms/checkin/i;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gms/checkin/EventLogService;->a:Lcom/google/android/gms/checkin/i;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 66
    const-string v0, "EventLogService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 67
    const-string v0, "dropbox"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DropBoxManager;

    .line 69
    sget-object v8, Lcom/google/android/gms/checkin/EventLogService;->a:Lcom/google/android/gms/checkin/i;

    monitor-enter v8

    .line 70
    :try_start_0
    const-string v0, "lastLog"

    const-wide/16 v2, 0x0

    invoke-static {v7, v0, v2, v3}, Lcom/google/android/gms/checkin/EventLogService;->a(Landroid/content/SharedPreferences;Ljava/lang/String;J)J

    move-result-wide v2

    .line 71
    const-string v0, "EventLogService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Accumulating logs since "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    sget-object v0, Lcom/google/android/gms/checkin/EventLogService;->a:Lcom/google/android/gms/checkin/i;

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/checkin/i;->a(Landroid/content/Context;JJLandroid/os/DropBoxManager;)J

    move-result-wide v0

    .line 75
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastLog"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_0
    :try_start_2
    monitor-exit v8

    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "EventLogService"

    const-string v2, "Can\'t capture logs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v0, "EventLogService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v2, Lcom/android/a/a;

    invoke-direct {v2, v0}, Lcom/android/a/a;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v4, Lcom/android/a/b;

    invoke-direct {v4}, Lcom/android/a/b;-><init>()V

    const-string v3, "aggregation_interval_seconds"

    const/16 v5, 0x708

    invoke-static {v0, v3, v5}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    iput-wide v6, v4, Lcom/android/a/b;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v4}, Lcom/android/a/a;->a(Lcom/android/a/b;)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-gtz v0, :cond_2

    const-class v1, Lcom/google/android/gms/checkin/EventLogService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/checkin/EventLogService;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "Event Log Handoff"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/checkin/EventLogService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/checkin/EventLogService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gms/checkin/EventLogService$Receiver;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v5, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-wide v8, v4, Lcom/android/a/b;->f:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_3

    iget-wide v4, v4, Lcom/android/a/b;->f:J

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->c:Landroid/os/PowerManager$WakeLock;

    .line 98
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->c:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 102
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/EventLogService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 103
    const-string v1, "Event Log Service"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->c:Landroid/os/PowerManager$WakeLock;

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 107
    :cond_0
    const-class v1, Lcom/google/android/gms/checkin/EventLogService;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v0, Lcom/google/android/gms/checkin/EventLogService;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/google/android/gms/checkin/EventLogService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/checkin/EventLogService;->b:Landroid/os/PowerManager$WakeLock;

    .line 112
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->d:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    .line 160
    :goto_0
    return v2

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 120
    :cond_2
    new-instance v0, Lcom/google/android/gms/checkin/aa;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/checkin/aa;-><init>(Lcom/google/android/gms/checkin/EventLogService;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/checkin/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/EventLogService;->d:Landroid/os/AsyncTask;

    goto :goto_0
.end method
