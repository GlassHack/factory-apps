.class public final Lcom/google/android/gms/fitness/service/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Landroid/app/Application;

.field private final c:Lcom/google/android/gms/fitness/j/f;

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/google/android/gms/fitness/j/f;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/f;->a:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/f;->b:Landroid/app/Application;

    .line 59
    iput-object p2, p0, Lcom/google/android/gms/fitness/service/f;->c:Lcom/google/android/gms/fitness/j/f;

    .line 60
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/f;->d:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/google/android/gms/fitness/service/i;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/service/i;

    .line 85
    if-nez v0, :cond_2

    .line 86
    const-string v0, "starting fitness service for: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v13

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->c:Lcom/google/android/gms/fitness/j/f;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/j/f;->b()Landroid/os/Handler;

    move-result-object v3

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->c:Lcom/google/android/gms/fitness/j/f;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/j/f;->c()Lcom/google/c/j/a/x;

    move-result-object v4

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->c:Lcom/google/android/gms/fitness/j/f;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/j/f;->d()Landroid/os/Handler;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/f;->c:Lcom/google/android/gms/fitness/j/f;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/j/f;->a(Landroid/os/Handler;)Lcom/google/android/gms/fitness/service/ap;

    move-result-object v12

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/f;->c:Lcom/google/android/gms/fitness/j/f;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/j/f;->a()Ljava/util/List;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/f;->c:Lcom/google/android/gms/fitness/j/f;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/j/f;->e()Lcom/google/android/gms/fitness/f/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/gms/fitness/f/h;->d(Ljava/lang/String;)Lcom/google/android/gms/fitness/f/d;

    move-result-object v10

    .line 99
    iget-object v2, p0, Lcom/google/android/gms/fitness/service/f;->b:Landroid/app/Application;

    invoke-static {v2, p1}, Lcom/google/android/gms/fitness/j/a;->a(Landroid/app/Application;Ljava/lang/String;)Lcom/google/android/gms/fitness/j/a;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/j/a;->a()Lcom/google/android/gms/fitness/n/ar;

    move-result-object v5

    .line 102
    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/j/a;->b(Landroid/os/Handler;)Lcom/google/android/gms/fitness/sensors/a/a;

    move-result-object v6

    .line 104
    invoke-virtual {v2, v1, v6}, Lcom/google/android/gms/fitness/j/a;->a(Ljava/util/List;Lcom/google/android/gms/fitness/sensors/a/a;)Lcom/google/android/gms/fitness/sensors/a;

    move-result-object v6

    .line 106
    invoke-virtual {v2, v6}, Lcom/google/android/gms/fitness/j/a;->a(Lcom/google/android/gms/fitness/sensors/a;)Lcom/google/android/gms/fitness/m/a;

    move-result-object v7

    .line 108
    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/j/a;->a(Landroid/os/Handler;)Lcom/google/android/gms/fitness/n/d;

    move-result-object v8

    .line 110
    invoke-virtual {v2, v6, v8}, Lcom/google/android/gms/fitness/j/a;->a(Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/n/d;)Lcom/google/android/gms/fitness/service/au;

    move-result-object v9

    .line 112
    invoke-virtual {v2, v7}, Lcom/google/android/gms/fitness/j/a;->a(Lcom/google/android/gms/fitness/m/a;)Lcom/google/android/gms/fitness/a/o;

    move-result-object v11

    .line 116
    new-instance v0, Lcom/google/android/gms/fitness/service/i;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/f;->d:Landroid/content/Context;

    move-object v2, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/fitness/service/i;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/google/c/j/a/x;Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/m/a;Lcom/google/android/gms/fitness/n/d;Lcom/google/android/gms/fitness/service/au;Lcom/google/android/gms/fitness/f/d;Lcom/google/android/gms/fitness/a/o;Lcom/google/android/gms/fitness/service/ap;)V

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/service/i;->a()V

    .line 121
    iget-object v1, p0, Lcom/google/android/gms/fitness/service/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Device;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 126
    const-string v0, "none"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->d:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v3, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/f;->d:Landroid/content/Context;

    const-class v4, Lcom/google/android/gms/fitness/wearables/WearableSyncServiceReceiver;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "accounts"

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/f;->d:Landroid/content/Context;

    const/high16 v4, 0x10000000

    invoke-static {v1, v13, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WearableSyncServiceReceiver.cancel"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 131
    :cond_0
    :goto_1
    return-object v7

    .line 128
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "schedule to sync accounts: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/google/android/gms/fitness/i/a;->I:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_2
    move-object v7, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/gms/fitness/service/i;
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/service/f;->c(Ljava/lang/String;)Lcom/google/android/gms/fitness/service/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->c:Lcom/google/android/gms/fitness/j/f;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/j/f;->e()Lcom/google/android/gms/fitness/f/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/f/h;->b()Ljava/util/Set;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/service/f;->c(Ljava/lang/String;)Lcom/google/android/gms/fitness/service/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 68
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/service/i;

    .line 75
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/fitness/service/i;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final b(Ljava/lang/String;)Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->d:Landroid/content/Context;

    const-string v3, "fitness_account_service_manager"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".lastChecked"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".supported"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 172
    const-wide/high16 v6, -0x8000000000000000L

    invoke-interface {v4, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 174
    sub-long v6, v8, v6

    .line 176
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->ay:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    mul-long/2addr v10, v12

    cmp-long v0, v6, v10

    if-lez v0, :cond_1

    move v0, v1

    .line 178
    :goto_0
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v0, :cond_5

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/f;->b:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/google/android/gms/fitness/j/a;->a(Landroid/app/Application;Ljava/lang/String;)Lcom/google/android/gms/fitness/j/a;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/j/a;->b()Lcom/google/android/gms/fitness/sync/d;

    move-result-object v0

    .line 183
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/fitness/sync/d;->c()Z

    move-result v0

    .line 184
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    const-string v3, "Account supported from server: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v3, v8}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 176
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 191
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->ax:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    mul-long/2addr v8, v12

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    move v0, v1

    .line 192
    :goto_2
    if-nez v0, :cond_2

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 193
    :cond_2
    throw v3

    :cond_3
    move v0, v2

    .line 191
    goto :goto_2

    .line 196
    :cond_4
    const-string v0, "Error determining account supported for %s. Returning cached value."

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v2

    const-string v7, "Fitness"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "Fitness"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    :cond_5
    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 204
    const-string v3, "Account supported from cache: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method
