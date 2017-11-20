.class public final Lcom/google/android/gms/gcm/bc;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field a:Landroid/app/KeyguardManager;

.field b:Z

.field c:Landroid/content/Context;

.field d:Lcom/google/android/gms/gcm/a;

.field e:Z

.field f:Z

.field g:J

.field h:Z

.field i:Z

.field private j:Lcom/google/android/gms/gcm/g;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/gcm/g;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    iput-boolean v2, p0, Lcom/google/android/gms/gcm/bc;->e:Z

    .line 55
    iput-boolean v1, p0, Lcom/google/android/gms/gcm/bc;->f:Z

    .line 57
    iput-boolean v1, p0, Lcom/google/android/gms/gcm/bc;->k:Z

    .line 64
    iput-object p2, p0, Lcom/google/android/gms/gcm/bc;->j:Lcom/google/android/gms/gcm/g;

    .line 65
    iput-object p1, p0, Lcom/google/android/gms/gcm/bc;->c:Landroid/content/Context;

    .line 66
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/gcm/bc;->a:Landroid/app/KeyguardManager;

    .line 67
    new-instance v0, Lcom/google/android/gms/gcm/a;

    iget-object v3, p0, Lcom/google/android/gms/gcm/bc;->c:Landroid/content/Context;

    const-string v4, "GCM_IDLE_ALARM"

    invoke-direct {v0, v3, v4, p0}, Lcom/google/android/gms/gcm/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/google/android/gms/gcm/bc;->d:Lcom/google/android/gms/gcm/a;

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->d:Lcom/google/android/gms/gcm/a;

    const-string v3, "com.google.android.intent.action.SEND_IDLE"

    iput-object v3, v0, Lcom/google/android/gms/gcm/a;->b:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->d:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->b()V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->c:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.intent.action.SEND_IDLE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->c:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    const-string v3, "plugged"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 77
    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/gcm/bc;->h:Z

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_idle_timeout_ms"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/bc;->g:J

    .line 81
    return-void

    :cond_1
    move v0, v1

    .line 77
    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/gcm/bc;->b:Z

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/bc;->e:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/bc;->c()V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/b/a/a/e;)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p1, Lcom/google/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/b;

    .line 92
    iget-object v2, v0, Lcom/google/b/a/a/b;->a:Ljava/lang/String;

    .line 93
    iget-object v0, v0, Lcom/google/b/a/a/b;->b:Ljava/lang/String;

    .line 94
    const-string v3, "IdleNotification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/bc;->e:Z

    goto :goto_0

    .line 96
    :cond_1
    const-string v3, "PowerNotification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/bc;->f:Z

    goto :goto_0

    .line 98
    :cond_2
    const-string v3, "DataActiveNotification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/bc;->k:Z

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/bc;->c()V

    .line 104
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/gcm/bc;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->d:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->d:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->e()V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/bc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/bc;->a(Z)V

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/gcm/bc;->e()V

    .line 127
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->j:Lcom/google/android/gms/gcm/g;

    iget-object v0, v0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    invoke-virtual {v0}, Lcom/google/b/a/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance v2, Lcom/google/b/a/a/e;

    invoke-direct {v2}, Lcom/google/b/a/a/e;-><init>()V

    .line 147
    const/4 v0, 0x0

    .line 151
    iget-boolean v3, p0, Lcom/google/android/gms/gcm/bc;->f:Z

    if-eqz v3, :cond_2

    .line 153
    const-string v0, "PowerNotification"

    iget-boolean v3, p0, Lcom/google/android/gms/gcm/bc;->h:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 155
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/gms/gcm/bc;->e:Z

    if-eqz v3, :cond_3

    .line 157
    const-string v0, "IdleNotification"

    iget-boolean v3, p0, Lcom/google/android/gms/gcm/bc;->b:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 160
    :cond_3
    iget-boolean v3, p0, Lcom/google/android/gms/gcm/bc;->k:Z

    if-eqz v3, :cond_4

    .line 162
    const-string v0, "DataActiveNotification"

    iget-boolean v3, p0, Lcom/google/android/gms/gcm/bc;->i:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/gcm/g;->a(Lcom/google/b/a/a/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_1
    if-eqz v1, :cond_0

    .line 165
    const-string v0, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v2, v0}, Lcom/google/b/a/a/e;->d(Ljava/lang/String;)Lcom/google/b/a/a/e;

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->j:Lcom/google/android/gms/gcm/g;

    iget-object v0, v0, Lcom/google/android/gms/gcm/g;->h:Lcom/google/b/a/a;

    invoke-virtual {v0, v2}, Lcom/google/b/a/a;->d(Lcom/google/protobuf/a/f;)V

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method final d()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/bc;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->d:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->d:Lcom/google/android/gms/gcm/a;

    iget-wide v2, p0, Lcom/google/android/gms/gcm/bc;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/gcm/a;->a(J)V

    .line 177
    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/bc;->a(Z)V

    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/gcm/bc;->e()V

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/gcm/bc;->d:Lcom/google/android/gms/gcm/a;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->e()V

    .line 203
    return-void
.end method
