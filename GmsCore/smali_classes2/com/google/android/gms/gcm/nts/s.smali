.class public final Lcom/google/android/gms/gcm/nts/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/gcm/nts/a;)I
    .locals 10

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 37
    monitor-enter p0

    :try_start_0
    const-string v1, "NetworkScheduler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "NetworkScheduler.TaskExecutionDelegator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Executing: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 42
    if-eqz v4, :cond_c

    .line 43
    iget-boolean v1, p2, Lcom/google/android/gms/gcm/nts/a;->e:Z

    if-eqz v1, :cond_2

    move v1, v6

    :goto_0
    if-eqz v1, :cond_c

    .line 44
    iget v1, p2, Lcom/google/android/gms/gcm/nts/a;->f:I

    .line 45
    if-nez v1, :cond_9

    .line 46
    iget-object v1, p2, Lcom/google/android/gms/gcm/nts/a;->d:Landroid/content/Context;

    iget-object v2, p2, Lcom/google/android/gms/gcm/nts/a;->b:Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/google/android/gms/gcm/nts/a;->a:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/gcm/nts/a;->h:Landroid/os/Parcelable;

    invoke-static {v1, v2, v3, v5}, Lcom/google/android/gms/gcm/nts/a;->a(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_8

    .line 50
    :cond_1
    const-string v2, "NetworkScheduler.TaskExecutionDelegator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid service definition provided: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_1
    monitor-exit p0

    return v0

    .line 43
    :cond_2
    :try_start_1
    iget-object v1, p2, Lcom/google/android/gms/gcm/nts/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p2, Lcom/google/android/gms/gcm/nts/a;->b:Landroid/content/ComponentName;

    invoke-static {v2, v1}, Lcom/google/android/gms/gcm/nts/a;->a(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/google/android/gms/gcm/PendingCallback;

    new-instance v2, Lcom/google/android/gms/gcm/nts/c;

    const/4 v5, 0x0

    invoke-direct {v2, p2, v5}, Lcom/google/android/gms/gcm/nts/c;-><init>(Lcom/google/android/gms/gcm/nts/a;B)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/gcm/PendingCallback;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p2, Lcom/google/android/gms/gcm/nts/a;->h:Landroid/os/Parcelable;

    move v1, v3

    :goto_2
    if-nez v1, :cond_6

    move v1, v6

    goto :goto_0

    :cond_3
    const-string v2, "com.google.android.gms.gcm.nts.TASK_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/google/android/gms/gcm/nts/PendingCallback;

    new-instance v2, Lcom/google/android/gms/gcm/nts/b;

    const/4 v5, 0x0

    invoke-direct {v2, p2, v5}, Lcom/google/android/gms/gcm/nts/b;-><init>(Lcom/google/android/gms/gcm/nts/a;B)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/gcm/nts/PendingCallback;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p2, Lcom/google/android/gms/gcm/nts/a;->h:Landroid/os/Parcelable;

    move v1, v3

    goto :goto_2

    :cond_4
    const-string v1, "NetworkScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unable to resolve correct action against "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/google/android/gms/gcm/nts/a;->b:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " to instantiate callback. not executing task."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v1, v6

    goto :goto_2

    :cond_5
    const-string v1, "NetworkScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "PackageManager service unavailable, can\'t execute "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 43
    :cond_6
    :try_start_2
    invoke-virtual {p2}, Lcom/google/android/gms/gcm/nts/a;->a()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v6

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p2, Lcom/google/android/gms/gcm/nts/a;->g:J

    move v1, v3

    goto/16 :goto_0

    .line 54
    :cond_8
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v0, v6

    .line 55
    goto/16 :goto_1

    .line 57
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.gcm.ACTION_EXECUTE_TASK"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/google/android/gms/gcm/nts/a;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "tag"

    iget-object v7, p2, Lcom/google/android/gms/gcm/nts/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "component"

    iget-object v7, p2, Lcom/google/android/gms/gcm/nts/a;->b:Landroid/content/ComponentName;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "callback"

    iget-object v7, p2, Lcom/google/android/gms/gcm/nts/a;->h:Landroid/os/Parcelable;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 59
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 61
    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v3, :cond_b

    .line 62
    :cond_a
    const-string v2, "NetworkScheduler.TaskExecutionDelegator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to schedule task for user: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Can\'t find correct gmscore internal receiver"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 66
    :cond_b
    const-string v3, "com.google.android.gms.permission.INTERNAL_BROADCAST"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    .line 69
    goto/16 :goto_1

    :cond_c
    move v0, v3

    .line 73
    goto/16 :goto_1
.end method
