.class public Lcom/google/android/gms/auth/be/recovery/AccountRecoveryBackgroundService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "AccountRecoveryBackgroundService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private static a()J
    .locals 8

    .prologue
    .line 154
    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/e;->a()Lcom/google/android/gms/auth/be/recovery/e;

    move-result-object v0

    .line 155
    iget-object v1, v0, Lcom/google/android/gms/auth/be/recovery/e;->a:Landroid/content/Context;

    const-string v2, "auth_recovery_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    iget-object v1, v0, Lcom/google/android/gms/auth/be/recovery/e;->a:Landroid/content/Context;

    const-string v2, "account_recovery_silence_default_ms"

    const-wide/32 v4, 0x240c8400

    invoke-static {v1, v2, v4, v5}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, v0, Lcom/google/android/gms/auth/be/recovery/e;->a:Landroid/content/Context;

    const-string v1, "account_recovery_silence_randomize_ms"

    const-wide/32 v4, 0x48190800

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/gms/common/b/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v4, Lcom/google/android/gms/auth/be/recovery/g;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/android/gms/auth/be/recovery/g;-><init>(JJ)V

    .line 156
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 157
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, v4, Lcom/google/android/gms/auth/be/recovery/g;->a:J

    add-long/2addr v2, v6

    iget-wide v4, v4, Lcom/google/android/gms/auth/be/recovery/g;->b:J

    long-to-double v4, v4

    mul-double/2addr v0, v4

    double-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.recovery.WAKEUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 182
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/be/recovery/AccountRecoveryBackgroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 183
    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 184
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x2

    .line 55
    const-string v0, "Recovery"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "Recovery"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Action: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/e;->a()Lcom/google/android/gms/auth/be/recovery/e;

    move-result-object v3

    .line 63
    new-instance v0, Lcom/google/android/gms/common/b/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    const-string v1, "account_recovery_enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "Recovery"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Recovery"

    const-string v4, "Account recovery is disabled"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_3

    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/common/b/a;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/b/a;-><init>(Landroid/content/Context;)V

    const-string v4, "account_recovery_disabled_alarm_period_ms"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/b/a;->b(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v4, v4

    mul-double/2addr v0, v4

    double-to-long v0, v0

    add-long/2addr v0, v6

    .line 65
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/auth/be/recovery/e;->a(J)V

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/be/recovery/AccountRecoveryBackgroundService;->a(J)V

    .line 118
    :cond_2
    :goto_0
    return-void

    .line 70
    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    const-string v0, "Recovery"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const-string v0, "Recovery"

    const-string v1, "Account recovery is disabled for Restricted User profile."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "com.google.android.gms.recovery.WAKEUP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/e;->a()Lcom/google/android/gms/auth/be/recovery/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/auth/be/recovery/e;->b()J

    move-result-wide v0

    cmp-long v5, v0, v6

    if-gez v5, :cond_5

    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/AccountRecoveryBackgroundService;->a()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/auth/be/recovery/e;->a(J)V

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_8

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/auth/be/recovery/e;->b()J

    move-result-wide v0

    .line 83
    cmp-long v2, v0, v6

    if-gez v2, :cond_6

    .line 84
    const-string v2, "Recovery"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal next alarm time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/AccountRecoveryBackgroundService;->a()J

    move-result-wide v0

    .line 86
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/auth/be/recovery/e;->a(J)V

    .line 88
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/be/recovery/AccountRecoveryBackgroundService;->a(J)V

    goto :goto_0

    :cond_7
    move v0, v2

    .line 81
    goto :goto_1

    .line 92
    :cond_8
    invoke-static {}, Lcom/google/android/gms/auth/be/t;->a()Lcom/google/android/gms/auth/be/t;

    move-result-object v2

    .line 93
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v0, v4}, Lcom/google/android/gms/common/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 97
    :try_start_0
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/recovery/f;

    move-result-object v1

    .line 98
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v7, "background_service"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8, v4}, Lcom/google/android/gms/auth/be/t;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/gms/auth/be/recovery/b;

    move-result-object v6

    .line 103
    iget-object v7, v6, Lcom/google/android/gms/auth/be/recovery/b;->j:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 104
    const-string v1, "Recovery"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error while talking to server: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/google/android/gms/auth/be/recovery/b;->j:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 111
    :catch_0
    move-exception v1

    .line 112
    const-string v6, "Recovery"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error while checking recovery info for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 110
    :cond_9
    :try_start_1
    iget-boolean v7, v6, Lcom/google/android/gms/auth/be/recovery/b;->a:Z

    iput-boolean v7, v1, Lcom/google/android/gms/auth/be/recovery/f;->c:Z

    iget-boolean v7, v6, Lcom/google/android/gms/auth/be/recovery/b;->c:Z

    iput-boolean v7, v1, Lcom/google/android/gms/auth/be/recovery/f;->d:Z

    iget-boolean v6, v6, Lcom/google/android/gms/auth/be/recovery/b;->b:Z

    iput-boolean v6, v1, Lcom/google/android/gms/auth/be/recovery/f;->b:Z

    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/e;->a()Lcom/google/android/gms/auth/be/recovery/e;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/gms/auth/be/recovery/e;->a(Lcom/google/android/gms/auth/be/recovery/f;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 115
    :cond_a
    invoke-static {}, Lcom/google/android/gms/auth/be/recovery/AccountRecoveryBackgroundService;->a()J

    move-result-wide v0

    .line 116
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/auth/be/recovery/e;->a(J)V

    .line 117
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/be/recovery/AccountRecoveryBackgroundService;->a(J)V

    goto/16 :goto_0
.end method
