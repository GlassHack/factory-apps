.class public final Lcom/google/android/gms/gcm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/os/PowerManager$WakeLock;

.field b:Ljava/lang/String;

.field c:J

.field private d:Landroid/content/Context;

.field private e:Landroid/app/AlarmManager;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Intent;

.field private h:Landroid/app/PendingIntent;

.field private i:J

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/gms/gcm/a;->d:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/gcm/a;->d:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/gcm/a;->e:Landroid/app/AlarmManager;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/gcm/a;->d:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/a;->a:Landroid/os/PowerManager$WakeLock;

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/gcm/a;->a:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 60
    iput-object p2, p0, Lcom/google/android/gms/gcm/a;->f:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/google/android/gms/gcm/a;->j:Landroid/content/BroadcastReceiver;

    .line 62
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 183
    const-string v0, "GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Alarm("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/gcm/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/gcm/a;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/gcm/a;->e:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/gms/gcm/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/a;->i:J

    .line 161
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/gcm/a;->i:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/gcm/a;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/gcm/a;->f()V

    .line 128
    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/gcm/a;->c:J

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/gcm/a;->i:J

    .line 130
    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start mTimer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/a;->a(Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/a;->e:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/gcm/a;->i:J

    iget-object v4, p0, Lcom/google/android/gms/gcm/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/a;->g:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 88
    monitor-exit p0

    .line 99
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "GCM"

    const-string v1, "[Alarm] initAlarm: action is not set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/gcm/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/a;->g:Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/gcm/a;->d:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/gcm/a;->g:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/a;->h:Landroid/app/PendingIntent;

    .line 99
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/a;->g:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 108
    monitor-exit p0

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/a;->e()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/a;->g:Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/gcm/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/gcm/a;->h:Landroid/app/PendingIntent;

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/gcm/a;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "GCM"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "stop"

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/a;->a(Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/gcm/a;->f()V

    .line 153
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const-string v1, "alarm("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lcom/google/android/gms/gcm/a;->g:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 168
    const-string v1, "STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/gcm/a;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, " WAKE_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/gcm/a;->i:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/gcm/a;->c:J

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
