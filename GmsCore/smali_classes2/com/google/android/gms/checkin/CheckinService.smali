.class public Lcom/google/android/gms/checkin/CheckinService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;

.field private static volatile g:Z


# instance fields
.field private b:Landroid/os/PowerManager$WakeLock;

.field private c:Lcom/google/android/gms/checkin/d;

.field private d:Lcom/google/android/gms/checkin/f;

.field private e:J

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/checkin/CheckinService;->a:Landroid/os/PowerManager$WakeLock;

    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/checkin/CheckinService;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->b:Landroid/os/PowerManager$WakeLock;

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/checkin/CheckinService;->e:J

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/checkin/CheckinService;->f:I

    .line 635
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 602
    const-string v0, "Checkin"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 318
    iget v0, p0, Lcom/google/android/gms/checkin/CheckinService;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/checkin/CheckinService;->f:I

    .line 320
    invoke-static {p0}, Lcom/google/android/gms/c/a;->c(Landroid/content/Context;)V

    .line 322
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/CheckinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    const-string v0, "CheckinService"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v0, "CheckinService"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    const-string v0, "CheckinService"

    const-string v1, "launchTask"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->d:Lcom/google/android/gms/checkin/f;

    if-eqz v0, :cond_5

    .line 333
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/CheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/checkin/CheckinService;->e:J

    sub-long/2addr v2, v4

    .line 335
    const-wide/16 v4, 0x3e8

    const-string v1, "checkin_watchdog_seconds"

    const-wide/16 v6, 0xe10

    invoke-static {v0, v1, v6, v7}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    mul-long/2addr v4, v6

    .line 338
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 341
    const-string v1, "wtf_is_fatal"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 346
    :cond_3
    const-string v0, "CheckinService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Checkin still running after "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 348
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 351
    :cond_4
    const-string v0, "CheckinService"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "CheckinService"

    const-string v1, "checkinRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_5
    iget v1, p0, Lcom/google/android/gms/checkin/CheckinService;->f:I

    .line 358
    new-instance v2, Lcom/google/android/gms/checkin/g;

    invoke-direct {v2}, Lcom/google/android/gms/checkin/g;-><init>()V

    .line 359
    iput-object p0, v2, Lcom/google/android/gms/checkin/g;->a:Landroid/content/Context;

    .line 360
    const-string v0, "dropbox"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, v2, Lcom/google/android/gms/checkin/g;->b:Landroid/os/DropBoxManager;

    .line 361
    const-string v0, "Checkin"

    invoke-virtual {p0, v0, v8}, Lcom/google/android/gms/checkin/CheckinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/checkin/g;->c:Landroid/content/SharedPreferences;

    .line 362
    new-instance v0, Lcom/android/a/a;

    iget-object v3, v2, Lcom/google/android/gms/checkin/g;->c:Landroid/content/SharedPreferences;

    invoke-direct {v0, v3}, Lcom/android/a/a;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, v2, Lcom/google/android/gms/checkin/g;->d:Lcom/android/a/a;

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/checkin/CheckinService;->e:J

    .line 365
    new-instance v0, Lcom/google/android/gms/checkin/c;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/checkin/c;-><init>(Lcom/google/android/gms/checkin/CheckinService;II)V

    iput-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->d:Lcom/google/android/gms/checkin/f;

    .line 403
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/checkin/CheckinService;->d:Lcom/google/android/gms/checkin/f;

    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    invoke-static {}, Lcom/google/android/gms/c/a;->k()Ljava/util/concurrent/Executor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/checkin/g;

    aput-object v2, v4, v8

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/c/a;->a(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/content/Context;ZZZZ)V
    .locals 4

    .prologue
    .line 58
    const-class v1, Lcom/google/android/gms/checkin/CheckinService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/checkin/CheckinService;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "Checkin Handoff"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/checkin/CheckinService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/checkin/CheckinService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CheckinService_onStart_resetTransientErrorCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CheckinService_onStart_ignoreNetworkState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CheckinService_onStart_resetTriggerTime"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CheckinService_onStart_showNotification"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/checkin/CheckinService;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/checkin/CheckinService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/checkin/CheckinService;Lcom/google/android/gms/checkin/b/b;Lcom/google/android/gms/checkin/b/c;)V
    .locals 12

    .prologue
    const v11, 0x108008a

    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 58
    const-string v0, "Checkin"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/checkin/CheckinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/google/android/gms/checkin/b/c;->c()I

    move-result v0

    new-array v6, v0, [Landroid/content/Intent;

    move v1, v2

    :goto_0
    array-length v0, v6

    if-ge v1, v0, :cond_6

    invoke-virtual {p2, v1}, Lcom/google/android/gms/checkin/b/c;->a(I)Lcom/google/android/gms/checkin/b/l;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    aput-object v8, v6, v1

    iget-boolean v0, v7, Lcom/google/android/gms/checkin/b/l;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/google/android/gms/checkin/b/l;->b:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-boolean v0, v7, Lcom/google/android/gms/checkin/b/l;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/google/android/gms/checkin/b/l;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    iget-boolean v0, v7, Lcom/google/android/gms/checkin/b/l;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/google/android/gms/checkin/b/l;->f:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    move v3, v2

    :goto_1
    iget-object v0, v7, Lcom/google/android/gms/checkin/b/l;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    iget-object v0, v7, Lcom/google/android/gms/checkin/b/l;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/m;

    iget-boolean v4, v0, Lcom/google/android/gms/checkin/b/m;->a:Z

    if-eqz v4, :cond_4

    const-string v4, ""

    iget-boolean v9, v0, Lcom/google/android/gms/checkin/b/m;->c:Z

    if-eqz v9, :cond_3

    iget-object v4, v0, Lcom/google/android/gms/checkin/b/m;->d:Ljava/lang/String;

    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/checkin/b/m;->b:Ljava/lang/String;

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    array-length v1, v6

    move v0, v2

    :goto_2
    if-ge v0, v1, :cond_8

    aget-object v3, v6, v0

    const-string v4, "CheckinService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "From server: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.google.android.checkin.INVALIDATE"

    if-ne v4, v7, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/checkin/b/b;->l:Ljava/util/List;

    invoke-static {p0, v3}, Lcom/google/android/gms/checkin/a;->a(Landroid/content/Context;Ljava/util/List;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Lcom/google/android/gms/checkin/CheckinService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_8
    const-string v0, "CheckinService_ignore_net"

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CheckinService_ignore_net"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_9
    iget-boolean v0, p2, Lcom/google/android/gms/checkin/b/c;->m:Z

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/google/android/gms/checkin/b/c;->n:Ljava/lang/String;

    const-string v1, "CheckinService_versionInfo"

    const-string v3, ""

    invoke-interface {v5, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CheckinService_versionInfo"

    iget-object v3, p2, Lcom/google/android/gms/checkin/b/c;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a
    iget-boolean v0, p2, Lcom/google/android/gms/checkin/b/c;->o:Z

    if-eqz v0, :cond_10

    iget-object v0, p2, Lcom/google/android/gms/checkin/b/c;->p:Ljava/lang/String;

    const-string v1, "CheckinService_deviceDataVersionInfo"

    const-string v3, ""

    invoke-interface {v5, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "CheckinService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "CheckinService"

    const-string v1, "Storing the new deviceDataVersionInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CheckinService_deviceDataVersionInfo"

    iget-object v3, p2, Lcom/google/android/gms/checkin/b/c;->p:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_4
    invoke-virtual {p2}, Lcom/google/android/gms/checkin/b/c;->f()I

    move-result v0

    if-lez v0, :cond_e

    const-string v0, "CheckinService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "CheckinService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalidating "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/checkin/b/c;->f()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " tokens."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p2, Lcom/google/android/gms/checkin/b/c;->q:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/google/android/gms/checkin/a;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_e
    const-string v0, "CheckinService_notify"

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p2, :cond_12

    const-string v0, "checkin succeeded"

    :goto_5
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v11, v0, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v11, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CheckinService_notify"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_f
    return-void

    :cond_10
    const-string v0, "CheckinService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "CheckinService"

    const-string v1, "Clearing the deviceDataVersionInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CheckinService_deviceDataVersionInfo"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_4

    :cond_12
    const-string v0, "checkin failed"

    goto :goto_5
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 593
    const-string v2, "CheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "active receiver: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/CheckinService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v0, Lcom/google/android/gms/checkin/CheckinService$ActiveReceiver;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 599
    return-void

    .line 593
    :cond_0
    const-string v0, "disabled"

    goto :goto_0

    .line 594
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/checkin/CheckinService;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/checkin/CheckinService;)Z
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 58
    const-string v0, "Checkin"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/checkin/CheckinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v7, Lcom/android/a/a;

    invoke-direct {v7, v5}, Lcom/android/a/a;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {p0}, Lcom/google/android/gms/checkin/CheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v0, v7, Lcom/android/a/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "OperationScheduler_enabledState"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {p0}, Lcom/google/android/gms/checkin/CheckinService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CheckinService"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CheckinService"

    const-string v2, "system was upgraded"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v7}, Lcom/android/a/a;->a()V

    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_5

    const-string v0, "no-sim"

    :goto_0
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v3, :cond_6

    const-string v0, "no-imsi"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CheckinService_lastSim"

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CheckinService"

    invoke-static {v2, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "subscriberid changed to "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v7}, Lcom/android/a/a;->a()V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CheckinService_lastSim"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    new-instance v8, Lcom/android/a/b;

    invoke-direct {v8}, Lcom/android/a/b;-><init>()V

    const-wide/16 v2, 0x7530

    iput-wide v2, v8, Lcom/android/a/b;->e:J

    const-wide/16 v2, 0x3e8

    const-string v0, "checkin_interval"

    const-wide/32 v10, 0xa8c0

    invoke-static {v6, v0, v10, v11}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    mul-long/2addr v2, v10

    iput-wide v2, v8, Lcom/android/a/b;->f:J

    const/16 v0, 0x1388

    iput v0, v8, Lcom/android/a/b;->c:I

    const-string v0, "CheckinService"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CheckinService"

    invoke-virtual {v7}, Lcom/android/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/checkin/CheckinService$Receiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v8}, Lcom/android/a/a;->a(Lcom/android/a/b;)J

    move-result-wide v2

    cmp-long v7, v2, v10

    if-gtz v7, :cond_d

    invoke-direct {p0, v4}, Lcom/google/android/gms/checkin/CheckinService;->a(Z)V

    const-string v2, "CheckinService_ignore_net"

    invoke-interface {v5, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_2
    if-eqz v2, :cond_c

    move v1, v4

    :goto_3
    return v1

    :cond_5
    move-object v0, v2

    goto/16 :goto_0

    :cond_6
    move-object v0, v3

    goto/16 :goto_1

    :cond_7
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    const-string v5, "CheckinService"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v3, :cond_9

    const-string v5, "CheckinService"

    const-string v7, "checkin scheduled: no active network"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v4

    goto :goto_2

    :cond_9
    const-string v5, "CheckinService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "checked scheduled: connected/background: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move v2, v1

    goto :goto_2

    :cond_b
    move v2, v1

    goto :goto_2

    :cond_c
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_3

    :cond_d
    invoke-direct {p0, v1}, Lcom/google/android/gms/checkin/CheckinService;->a(Z)V

    const-string v4, "CheckinService"

    invoke-static {v4, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "CheckinService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Checkin scheduled at "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-wide v4, v8, Lcom/android/a/b;->f:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_f

    iget-wide v4, v8, Lcom/android/a/b;->f:J

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/google/android/gms/checkin/CheckinService;)Lcom/google/android/gms/checkin/f;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->d:Lcom/google/android/gms/checkin/f;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 607
    sget-boolean v2, Lcom/google/android/gms/checkin/CheckinService;->g:Z

    if-eqz v2, :cond_0

    .line 623
    :goto_0
    return v0

    .line 611
    :cond_0
    const-string v2, "Checkin"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 613
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

    move-result-object v3

    .line 614
    const-string v4, "CheckinService_lastBuild"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 615
    goto :goto_0

    .line 620
    :cond_1
    sput-boolean v0, Lcom/google/android/gms/checkin/CheckinService;->g:Z

    .line 622
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "CheckinService_lastBuild"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/checkin/CheckinService;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/gms/checkin/CheckinService;->f:I

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.checkin.BIND_TO_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->c:Lcom/google/android/gms/checkin/d;

    invoke-virtual {v0}, Lcom/google/android/gms/checkin/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 231
    :cond_0
    const-string v0, "CheckinService"

    const-string v1, "onBind is called with an unexpected intent, returning null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/google/android/gms/checkin/d;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/checkin/d;-><init>(Lcom/google/android/gms/checkin/CheckinService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->c:Lcom/google/android/gms/checkin/d;

    .line 225
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->b:Landroid/os/PowerManager$WakeLock;

    .line 240
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 244
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/CheckinService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 245
    const-string v1, "Checkin Service"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->b:Landroid/os/PowerManager$WakeLock;

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/checkin/CheckinService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 249
    :cond_0
    const-class v1, Lcom/google/android/gms/checkin/CheckinService;

    monitor-enter v1

    .line 250
    :try_start_0
    sget-object v0, Lcom/google/android/gms/checkin/CheckinService;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 251
    sget-object v0, Lcom/google/android/gms/checkin/CheckinService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 252
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/checkin/CheckinService;->a:Landroid/os/PowerManager$WakeLock;

    .line 254
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    if-eqz p1, :cond_5

    .line 257
    const-string v0, "Checkin"

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/checkin/CheckinService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/android/a/a;

    invoke-direct {v1, v0}, Lcom/android/a/a;-><init>(Landroid/content/SharedPreferences;)V

    .line 259
    const-string v2, "CheckinService_onStart_resetTransientErrorCount"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    invoke-virtual {v1}, Lcom/android/a/a;->d()V

    .line 261
    const-string v2, "CheckinService"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    const-string v2, "CheckinService"

    const-string v3, "Reset transient errors before launching task."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    const-string v2, "CheckinService_onStart_ignoreNetworkState"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CheckinService_ignore_net"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    const-string v2, "CheckinService"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    const-string v2, "CheckinService"

    const-string v3, "Set ignore_net_state before launching task."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_3
    const-string v2, "CheckinService_onStart_resetTriggerTime"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 272
    invoke-virtual {v1}, Lcom/android/a/a;->a()V

    .line 273
    const-string v1, "CheckinService"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    const-string v1, "CheckinService"

    const-string v2, "Reset trigger time millis before launching task."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_4
    const-string v1, "CheckinService_onStart_showNotification"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CheckinService_notify"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    const-string v0, "CheckinService"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    const-string v0, "CheckinService"

    const-string v1, "Set notify_pref before launching task."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/gms/checkin/CheckinService;->a(I)V

    .line 286
    return v5

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
