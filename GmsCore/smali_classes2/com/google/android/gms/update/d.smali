.class public final Lcom/google/android/gms/update/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Runnable;

.field private c:I

.field private d:Z

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput v2, p0, Lcom/google/android/gms/update/d;->c:I

    .line 50
    iput-boolean v2, p0, Lcom/google/android/gms/update/d;->d:Z

    .line 101
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/update/d;->e:I

    .line 102
    iput-boolean v2, p0, Lcom/google/android/gms/update/d;->f:Z

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/update/d;->a:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/google/android/gms/update/d;->b:Ljava/lang/Runnable;

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/update/d;->a:Landroid/content/Context;

    const-string v1, "update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "prior_battery_level"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/update/d;->c:I

    .line 60
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "com.google.android.checkin.CHECKIN_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/update/d;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/update/d;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/update/d;->a:Landroid/content/Context;

    const-string v1, "update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prior_battery_level"

    iget v2, p0, Lcom/google/android/gms/update/d;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/gms/update/d;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/gms/update/d;->d:Z

    return v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 110
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "level"

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/update/d;->e:I

    .line 112
    const-string v0, "plugged"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/update/d;->f:Z

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/update/d;->f:Z

    if-eqz v0, :cond_6

    .line 117
    iget v0, p0, Lcom/google/android/gms/update/d;->e:I

    iget-object v3, p0, Lcom/google/android/gms/update/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "update_min_battery_threshold"

    const/16 v6, 0x14

    invoke-static {v3, v4, v6}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ge v0, v3, :cond_5

    move v0, v1

    .line 124
    :goto_1
    iget v3, p0, Lcom/google/android/gms/update/d;->c:I

    if-eq v0, v3, :cond_a

    .line 125
    iput v0, p0, Lcom/google/android/gms/update/d;->c:I

    move v3, v1

    .line 129
    :goto_2
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-boolean v4, p0, Lcom/google/android/gms/update/d;->d:Z

    .line 131
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 133
    if-nez v0, :cond_8

    .line 134
    const-string v0, "StateWatcher"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 142
    :cond_1
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/gms/update/d;->d:Z

    if-eq v2, v0, :cond_2

    .line 143
    iput-boolean v2, p0, Lcom/google/android/gms/update/d;->d:Z

    move v3, v1

    .line 148
    :cond_2
    const-string v0, "com.google.android.checkin.CHECKIN_COMPLETE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 152
    :goto_4
    if-eqz v1, :cond_3

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/update/d;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 155
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 112
    goto :goto_0

    :cond_5
    move v0, v2

    .line 117
    goto :goto_1

    .line 120
    :cond_6
    iget v0, p0, Lcom/google/android/gms/update/d;->e:I

    iget-object v3, p0, Lcom/google/android/gms/update/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "update_battery_threshold"

    const/16 v6, 0x28

    invoke-static {v3, v4, v6}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ge v0, v3, :cond_7

    const/4 v0, 0x2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    .line 137
    :cond_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    .line 139
    goto :goto_3

    :cond_9
    move v1, v3

    goto :goto_4

    :cond_a
    move v3, v2

    goto :goto_2
.end method
