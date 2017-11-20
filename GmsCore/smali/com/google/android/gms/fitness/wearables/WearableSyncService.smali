.class public Lcom/google/android/gms/fitness/wearables/WearableSyncService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/android/gms/fitness/wearables/WearableSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 45
    const-string v0, "WearableSyncService.start"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 46
    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/wearable/y;->f:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v4

    .line 50
    :try_start_0
    const-string v0, "accounts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WearableSyncService.syncAll: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v0}, Lcom/google/android/gms/common/api/j;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/wearable/y;->c:Lcom/google/android/gms/wearable/t;

    invoke-interface {v0, v4}, Lcom/google/android/gms/wearable/t;->a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    const-wide/16 v6, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v1}, Lcom/google/android/gms/common/api/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/u;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/u;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/wearable/u;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/s;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syncing to node: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/wearable/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    array-length v7, v5

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_0

    aget-object v8, v5, v2

    invoke-interface {v0}, Lcom/google/android/gms/wearable/s;->a()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "WearableSyncService syncing account:"

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v10}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {p0}, Lcom/google/android/gms/fitness/j/d;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/j/f;

    move-result-object v1

    invoke-static {p0, v8}, Lcom/google/android/gms/fitness/j/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/fitness/j/a;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/j/f;->a()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/j/f;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/android/gms/fitness/j/a;->b(Landroid/os/Handler;)Lcom/google/android/gms/fitness/sensors/a/a;

    move-result-object v1

    invoke-virtual {v10, v11, v1}, Lcom/google/android/gms/fitness/j/a;->a(Ljava/util/List;Lcom/google/android/gms/fitness/sensors/a/a;)Lcom/google/android/gms/fitness/sensors/a;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/android/gms/fitness/j/a;->a(Lcom/google/android/gms/fitness/sensors/a;)Lcom/google/android/gms/fitness/m/a;

    move-result-object v1

    invoke-virtual {v10}, Lcom/google/android/gms/fitness/j/a;->a()Lcom/google/android/gms/fitness/n/ar;

    move-result-object v10

    new-instance v11, Lcom/google/android/gms/fitness/wearables/a;

    invoke-direct {v11, v4, v8, v9}, Lcom/google/android/gms/fitness/wearables/a;-><init>(Lcom/google/android/gms/common/api/j;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v12, Lcom/google/android/gms/fitness/sync/b;

    invoke-direct {v12, p0}, Lcom/google/android/gms/fitness/sync/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v11, v10, v1}, Lcom/google/android/gms/fitness/sync/b;->a(Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/m/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "WearableSyncService. unable to sync: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " to: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 52
    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "WearableSyncService error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    invoke-interface {v4}, Lcom/google/android/gms/common/api/j;->b()V

    .line 56
    const-string v0, "WearableSyncService.done"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/fitness/wearables/WearableSyncServiceReceiver;->a(Landroid/content/Intent;)Z

    .line 58
    :goto_2
    return-void

    .line 51
    :cond_1
    :try_start_4
    const-string v0, "WearableSyncService.failed to enableConnection"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    :cond_2
    invoke-interface {v4}, Lcom/google/android/gms/common/api/j;->b()V

    .line 56
    const-string v0, "WearableSyncService.done"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/fitness/wearables/WearableSyncServiceReceiver;->a(Landroid/content/Intent;)Z

    goto :goto_2

    .line 55
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Lcom/google/android/gms/common/api/j;->b()V

    .line 56
    const-string v1, "WearableSyncService.done"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/fitness/wearables/WearableSyncServiceReceiver;->a(Landroid/content/Intent;)Z

    throw v0
.end method
