.class public final Lcom/google/android/gms/config/ConfigFetchService;
.super Lcom/google/android/gms/gcm/ae;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/config/f;

.field private b:Landroid/os/PowerManager$WakeLock;

.field private c:Lcom/google/android/gms/config/a/d;

.field private d:Landroid/content/SharedPreferences;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/util/HashSet;

.field private j:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/gcm/ae;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->b:Landroid/os/PowerManager$WakeLock;

    .line 31
    iput-object v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->c:Lcom/google/android/gms/config/a/d;

    .line 33
    iput-object v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->d:Landroid/content/SharedPreferences;

    .line 41
    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->e:Z

    .line 42
    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->f:Z

    .line 43
    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->g:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->h:Z

    .line 50
    iput-object v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->i:Ljava/util/HashSet;

    .line 52
    new-instance v0, Lcom/google/android/gms/config/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/config/d;-><init>(Lcom/google/android/gms/config/ConfigFetchService;)V

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->j:Landroid/content/ServiceConnection;

    .line 325
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/config/ConfigFetchService;Lcom/google/android/gms/config/a/d;)Lcom/google/android/gms/config/a/d;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/config/ConfigFetchService;->c:Lcom/google/android/gms/config/a/d;

    return-object p1
.end method

.method private static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 105
    if-nez p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/config/ConfigFetchService;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0xe10

    const-wide/16 v8, -0x4d2

    .line 26
    :try_start_0
    const-string v0, "ConfigFetchService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connected = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/config/a;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "config:fetch_interval"

    invoke-static {v0}, Lcom/google/android/gms/config/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "ConfigFetchService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "self-hosted config:fetch_interval = "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/config/ConfigFetchService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config:fetch_interval"

    invoke-static {v0, v1, v8, v9}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v6, v0, v8

    if-eqz v6, :cond_4

    const-string v2, "ConfigFetchService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "gservices config:fetch_interval = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/gcm/y;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/y;

    move-result-object v6

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/16 v2, 0x4

    div-long v2, v0, v2

    cmp-long v7, v2, v4

    if-lez v7, :cond_0

    move-wide v2, v4

    :cond_0
    new-instance v4, Lcom/google/android/gms/gcm/aq;

    invoke-direct {v4}, Lcom/google/android/gms/gcm/aq;-><init>()V

    const-class v5, Lcom/google/android/gms/config/ConfigFetchService;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/gcm/aq;->a(Ljava/lang/Class;)Lcom/google/android/gms/gcm/aq;

    move-result-object v4

    iput-wide v0, v4, Lcom/google/android/gms/gcm/aq;->a:J

    const-string v0, "configservice_periodic"

    invoke-virtual {v4, v0}, Lcom/google/android/gms/gcm/aq;->a(Ljava/lang/String;)Lcom/google/android/gms/gcm/aq;

    move-result-object v0

    iput-wide v2, v0, Lcom/google/android/gms/gcm/aq;->b:J

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/aq;->a()Lcom/google/android/gms/gcm/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/aq;->c()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/gcm/y;->a(Lcom/google/android/gms/gcm/Task;)V

    :goto_2
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->g:Z

    iget-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->e:Z

    if-nez v0, :cond_1

    const-string v0, "ConfigFetchService"

    const-string v1, "stopping self"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/config/ConfigFetchService;->stopSelf()V

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    const-string v0, "configservice_periodic"

    const-class v1, Lcom/google/android/gms/config/ConfigFetchService;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a valid tag."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/gcm/y;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/gcm/y;->a()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "scheduler_action"

    const-string v4, "CANCEL_TASK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "tag"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "component"

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v6, Lcom/google/android/gms/gcm/y;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, v6, Lcom/google/android/gms/gcm/y;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->h:Z

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 255
    if-nez p1, :cond_2

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->i:Ljava/util/HashSet;

    .line 277
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->e:Z

    if-nez v0, :cond_1

    .line 278
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/config/ConfigFetchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 279
    const/4 v1, 0x1

    const-string v2, "Config Service fetch"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->b:Landroid/os/PowerManager$WakeLock;

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 282
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigFetchService;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_1
    monitor-exit p0

    return-void

    .line 263
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 266
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->h:Z

    .line 267
    if-nez p1, :cond_4

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->i:Ljava/util/HashSet;

    goto :goto_0

    .line 272
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->i:Ljava/util/HashSet;

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized c()Z
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 130
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0

    .line 134
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->g:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->g:Z

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/config/e;

    invoke-direct {v1, p0}, Lcom/google/android/gms/config/e;-><init>(Lcom/google/android/gms/config/ConfigFetchService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 4

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigFetchService"

    const-string v1, "launchTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->e:Z

    .line 290
    new-instance v0, Lcom/google/android/gms/config/g;

    invoke-direct {v0}, Lcom/google/android/gms/config/g;-><init>()V

    .line 291
    invoke-virtual {p0}, Lcom/google/android/gms/config/ConfigFetchService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/config/g;->a:Landroid/content/pm/PackageManager;

    .line 292
    iput-object p0, v0, Lcom/google/android/gms/config/g;->b:Lcom/google/android/gms/config/ConfigFetchService;

    .line 293
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->i:Ljava/util/HashSet;

    iput-object v1, v0, Lcom/google/android/gms/config/g;->c:Ljava/util/Set;

    .line 294
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->i:Ljava/util/HashSet;

    .line 295
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->d:Landroid/content/SharedPreferences;

    iput-object v1, v0, Lcom/google/android/gms/config/g;->d:Landroid/content/SharedPreferences;

    .line 297
    new-instance v1, Lcom/google/android/gms/config/f;

    invoke-direct {v1}, Lcom/google/android/gms/config/f;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->a:Lcom/google/android/gms/config/f;

    .line 298
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->a:Lcom/google/android/gms/config/f;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/config/g;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/config/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/gcm/be;)I
    .locals 3

    .prologue
    .line 116
    const-string v0, "ConfigFetchService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "running network task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/gcm/be;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    monitor-enter p0

    .line 120
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/config/ConfigFetchService;->a(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigFetchService;->c()Z

    move-result v0

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "ConfigFetchService"

    const-string v1, "GmsCore updated; scheduling config fetches"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/config/ConfigFetchService;->a(Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigFetchService;->d()V

    .line 228
    return-void
.end method

.method final declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 306
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->e:Z

    .line 307
    iput-boolean p1, p0, Lcom/google/android/gms/config/ConfigFetchService;->f:Z

    .line 309
    iget-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->h:Z

    if-eqz v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigFetchService;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 312
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 313
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 314
    const-string v0, "ConfigFetchService"

    const-string v1, "fetch service done; releasing wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->b:Landroid/os/PowerManager$WakeLock;

    .line 318
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->g:Z

    if-nez v0, :cond_0

    .line 319
    const-string v0, "ConfigFetchService"

    const-string v1, "stopping self"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Lcom/google/android/gms/config/ConfigFetchService;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lcom/google/android/gms/config/a/d;
    .locals 8

    .prologue
    const-wide/16 v2, 0x2710

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 89
    monitor-enter p0

    move-wide v0, v2

    .line 90
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/config/ConfigFetchService;->c:Lcom/google/android/gms/config/a/d;

    if-nez v6, :cond_1

    .line 91
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->c:Lcom/google/android/gms/config/a/d;

    if-nez v0, :cond_1

    .line 93
    add-long v0, v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    .line 94
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 96
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->c:Lcom/google/android/gms/config/a/d;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.config.UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->j:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/config/ConfigFetchService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 76
    const-string v0, "config_removals"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/config/ConfigFetchService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->d:Landroid/content/SharedPreferences;

    .line 77
    invoke-static {p0}, Lcom/google/android/gms/config/a;->a(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/config/ConfigFetchService;->j:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/config/ConfigFetchService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 82
    invoke-static {}, Lcom/google/android/gms/config/a;->b()V

    .line 83
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const/4 v0, 0x2

    .line 139
    const-string v1, "ConfigFetchService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStartCommand "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-static {p1}, Lcom/google/android/gms/config/ConfigFetchService;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/config/ConfigFetchService;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    :cond_0
    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/config/ConfigFetchService;->e:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/config/ConfigFetchService;->stopSelf()V

    .line 148
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    return v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    invoke-static {p1}, Lcom/google/android/gms/config/ConfigFetchService;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/config/ConfigFetchService;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/gms/config/ConfigFetchService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_4
    const-string v2, "com.google.android.gms.config.CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    const-string v1, "ConfigFetchService"

    const-string v2, "GmsCore config value changed; rescheduling"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigFetchService;->d()V

    goto :goto_0

    .line 166
    :cond_5
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 167
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/config/ConfigFetchService;->a(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/google/android/gms/config/ConfigFetchService;->d()V

    goto :goto_0

    .line 172
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/gcm/ae;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method
