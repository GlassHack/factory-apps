.class public final Lcom/google/android/gms/gcm/nts/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/content/ComponentName;

.field c:Landroid/os/PowerManager$WakeLock;

.field final d:Landroid/content/Context;

.field e:Z

.field final f:I

.field g:J

.field h:Landroid/os/Parcelable;

.field private final i:Ljava/lang/String;

.field private final j:Landroid/os/Handler;

.field private final k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/nts/a;->e:Z

    .line 71
    iput-object p3, p0, Lcom/google/android/gms/gcm/nts/a;->a:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/google/android/gms/gcm/nts/a;->b:Landroid/content/ComponentName;

    .line 73
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/a;->i:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/google/android/gms/gcm/nts/a;->d:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/google/android/gms/gcm/nts/a;->j:Landroid/os/Handler;

    .line 76
    iput p5, p0, Lcom/google/android/gms/gcm/nts/a;->f:I

    .line 80
    sget-object v0, Lcom/google/android/gms/gcm/nts/m;->d:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/gcm/nts/a;->k:J

    .line 83
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 304
    invoke-static {p1, v0}, Lcom/google/android/gms/gcm/nts/a;->a(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_1

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "callback"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 319
    const-string v1, "NetworkScheduler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-string v1, "NetworkScheduler.ActiveTaskContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resolved : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    :goto_0
    return-object v0

    .line 308
    :cond_1
    const-string v0, "NetworkScheduler.ActiveTaskContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error finding compatible intent-filter to handle SERVICE_ACTION_EXECUTE_TASK for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const-string v0, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/gcm/nts/a;->a(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "com.google.android.gms.gcm.ACTION_TASK_READY"

    .line 339
    :goto_0
    return-object v0

    .line 336
    :cond_0
    const-string v0, "com.google.android.gms.gcm.nts.TASK_READY"

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/gcm/nts/a;->a(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const-string v0, "com.google.android.gms.gcm.nts.TASK_READY"

    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 349
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 350
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 351
    if-nez v0, :cond_0

    move v0, v1

    .line 359
    :goto_0
    return v0

    .line 354
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 355
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 359
    goto :goto_0
.end method


# virtual methods
.method final a(I)V
    .locals 4

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/nts/a;->e:Z

    if-nez v0, :cond_0

    .line 213
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/google/android/gms/gcm/nts/a;->f:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/a;->b:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/gcm/nts/a;->f:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/gcm/nts/k;->a(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    const-string v1, "FINISHED"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/gcm/nts/a;->a(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/a;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received callback from client for task that is already complete. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/a;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/nts/a;->e:Z

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Called closeAndCleanupTask for already completed task "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_1
    const-string v0, "NetworkScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string v0, "NetworkScheduler.ActiveTaskContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Completed \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/a;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/a;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 240
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/nts/a;->g:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    .line 242
    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/a;->b:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/gcm/nts/a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/gcm/nts/a;->f:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/gcm/nts/k;->a(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/gcm/nts/r;->a(Ljava/lang/String;I)V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/nts/a;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/a;->d:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 142
    if-eqz v0, :cond_1

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/gcm/nts/a;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/gcm/nts/a;->i:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 147
    const/4 v4, 0x1

    const-string v5, "*net_scheduler*"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/nts/a;->c:Landroid/os/PowerManager$WakeLock;

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/a;->d:Landroid/content/Context;

    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/a;->c:Landroid/os/PowerManager$WakeLock;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/google/android/gms/gcm/nts/a;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/util/ac;->a(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/a;->c:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/a;->c:Landroid/os/PowerManager$WakeLock;

    iget-wide v4, p0, Lcom/google/android/gms/gcm/nts/a;->k:J

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 167
    :goto_0
    return v0

    .line 161
    :catch_0
    move-exception v0

    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No application info available for task "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v2

    .line 167
    goto :goto_0

    .line 164
    :cond_1
    const-string v0, "NetworkScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PowerManager service unavailable, can\'t execute "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/gms/gcm/nts/a;->b:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/gcm/nts/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/gcm/nts/a;->f:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/gcm/nts/k;->a(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
