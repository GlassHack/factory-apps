.class public final Lcom/google/android/gms/fitness/sync/c;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 47
    return-void
.end method

.method private static a(Landroid/accounts/Account;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->k:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    .line 136
    const-string v0, "com.google.android.gms.fitness"

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/PeriodicSync;

    .line 140
    iget-wide v8, v0, Landroid/content/PeriodicSync;->period:J

    cmp-long v7, v8, v4

    if-nez v7, :cond_0

    move v1, v3

    .line 141
    goto :goto_0

    .line 143
    :cond_0
    const-string v7, "com.google.android.gms.fitness"

    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-static {p0, v7, v0}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 148
    :cond_1
    if-nez v1, :cond_2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set periodic sync to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    const-string v1, "sync_periodic"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    const-string v1, "com.google.android.gms.fitness"

    invoke-static {p0, v1, v0, v4, v5}, Landroid/content/ContentResolver;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 155
    :cond_2
    return-void
.end method

.method private b(Landroid/accounts/Account;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fitness_sync_account_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 16

    .prologue
    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/fitness/d;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v2, "initialize"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string v2, "Initializing account \'%s\' so is ready to sync settings."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    const-string v2, "com.google.android.gms.fitness"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 67
    const-string v2, "com.google.android.gms.fitness"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/sync/c;->a(Landroid/accounts/Account;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    .line 77
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/fitness/sync/c;->b(Landroid/accounts/Account;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sync_time"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 78
    sub-long v2, v4, v2

    .line 80
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sget-object v2, Lcom/google/android/gms/fitness/i/a;->l:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_3

    .line 81
    const-string v2, "Skipping Fitness sync under bad network conditions"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 76
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 86
    :cond_3
    const-string v2, "sync: %s, extras: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v3, v6

    const/4 v6, 0x1

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3039

    const-string v6, "Fit sync in progress"

    invoke-static {v2, v3, v6}, Lcom/google/android/gms/fitness/service/e;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 90
    new-instance v3, Lcom/google/android/gms/fitness/e/m;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v3, v2, v6}, Lcom/google/android/gms/fitness/e/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/fitness/j/d;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/j/f;

    move-result-object v2

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/gms/fitness/j/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/fitness/j/a;

    move-result-object v6

    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/j/f;->a()Ljava/util/List;

    move-result-object v7

    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/j/f;->b()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/fitness/j/a;->b(Landroid/os/Handler;)Lcom/google/android/gms/fitness/sensors/a/a;

    move-result-object v2

    .line 100
    invoke-virtual {v6, v7, v2}, Lcom/google/android/gms/fitness/j/a;->a(Ljava/util/List;Lcom/google/android/gms/fitness/sensors/a/a;)Lcom/google/android/gms/fitness/sensors/a;

    move-result-object v2

    .line 104
    invoke-virtual {v6, v2}, Lcom/google/android/gms/fitness/j/a;->a(Lcom/google/android/gms/fitness/sensors/a;)Lcom/google/android/gms/fitness/m/a;

    move-result-object v2

    .line 106
    invoke-virtual {v6}, Lcom/google/android/gms/fitness/j/a;->a()Lcom/google/android/gms/fitness/n/ar;

    move-result-object v6

    .line 108
    new-instance v7, Lcom/google/android/gms/fitness/sync/b;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/fitness/sync/b;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v9, Lcom/google/android/gms/fitness/sync/f;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/google/android/gms/fitness/sync/f;-><init>(Landroid/content/Context;)V

    .line 111
    :try_start_0
    invoke-virtual {v7, v3, v6, v2}, Lcom/google/android/gms/fitness/sync/b;->a(Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/m/a;)V

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v12

    :try_start_1
    invoke-interface {v6, v12, v13}, Lcom/google/android/gms/fitness/n/ar;->a(J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    iput v8, v9, Lcom/google/android/gms/fitness/sync/f;->a:I

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/n/c;

    invoke-static {v3, v2}, Lcom/google/android/gms/fitness/sync/f;->a(Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/n/c;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget-wide v14, v2, Lcom/google/android/gms/fitness/n/c;->a:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Lcom/google/android/gms/fitness/sync/g;

    const/4 v6, 0x0

    invoke-direct {v3, v6, v2}, Lcom/google/android/gms/fitness/sync/g;-><init>(ZLjava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    :catch_1
    move-exception v2

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/sync/g;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    const-string v2, "Sync thread interruputed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 112
    :cond_5
    :try_start_3
    invoke-interface {v6, v8}, Lcom/google/android/gms/fitness/n/ar;->c(Ljava/util/Collection;)I
    :try_end_3
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v9, v3, v6}, Lcom/google/android/gms/fitness/sync/f;->a(Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/n/ar;)V
    :try_end_4
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_4 .. :try_end_4} :catch_1

    .line 121
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/fitness/sync/c;->b(Landroid/accounts/Account;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "sync_time"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/fitness/sync/c;->a(Landroid/accounts/Account;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/fitness/c/a;->a(Landroid/content/Context;)V

    .line 124
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    iget v4, v7, Lcom/google/android/gms/fitness/sync/b;->a:I

    iget v5, v7, Lcom/google/android/gms/fitness/sync/b;->b:I

    iget v6, v7, Lcom/google/android/gms/fitness/sync/b;->c:I

    iget v7, v7, Lcom/google/android/gms/fitness/sync/b;->d:I

    iget v8, v9, Lcom/google/android/gms/fitness/sync/f;->a:I

    iget v9, v9, Lcom/google/android/gms/fitness/sync/f;->b:I

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/fitness/c/a;->a(JIIIIII)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/sync/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v10

    const/16 v3, 0x3039

    const-string v6, "Fit sync complete"

    invoke-static {v2, v3, v6, v4, v5}, Lcom/google/android/gms/fitness/service/e;->a(Landroid/content/Context;ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 118
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "sync error: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v6}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3
.end method
