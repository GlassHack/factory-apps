.class public final Lcom/google/android/gms/auth/be/recovery/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/google/android/gms/auth/be/recovery/e;


# instance fields
.field final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/gms/auth/be/recovery/e;->a:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/auth/be/recovery/e;
    .locals 3

    .prologue
    .line 54
    const-class v1, Lcom/google/android/gms/auth/be/recovery/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/recovery/e;->b:Lcom/google/android/gms/auth/be/recovery/e;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/google/android/gms/auth/be/recovery/e;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/recovery/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/auth/be/recovery/e;->b:Lcom/google/android/gms/auth/be/recovery/e;

    .line 57
    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/be/recovery/e;->b:Lcom/google/android/gms/auth/be/recovery/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/recovery/f;
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/recovery/e;->a:Landroid/content/Context;

    const-string v1, "auth_recovery_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 91
    const-string v0, "notification_id"

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    if-ne v0, v3, :cond_0

    .line 93
    const-string v0, "next_notification_id"

    const v2, 0x1574c

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 94
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 95
    const-string v3, "notification_id"

    invoke-static {p1, v3}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v3, "next_notification_id"

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    :cond_0
    new-instance v2, Lcom/google/android/gms/auth/be/recovery/f;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/google/android/gms/auth/be/recovery/f;-><init>(Ljava/lang/String;IB)V

    .line 101
    const-string v0, "recovery_needed_flag_id"

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    iput-boolean v0, v2, Lcom/google/android/gms/auth/be/recovery/f;->b:Z

    .line 104
    const-string v0, "recovery_suggested_flag_id"

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    iput-boolean v0, v2, Lcom/google/android/gms/auth/be/recovery/f;->c:Z

    .line 107
    const-string v0, "recovery_allowed_flag_id"

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 109
    iput-boolean v0, v2, Lcom/google/android/gms/auth/be/recovery/f;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-object v2

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/auth/be/recovery/e;->a:Landroid/content/Context;

    const-string v1, "auth_recovery_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    const-string v1, "next_alarm_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/auth/be/recovery/f;)V
    .locals 4

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/auth/be/recovery/f;->a:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/google/android/gms/auth/be/recovery/e;->a:Landroid/content/Context;

    const-string v2, "auth_recovery_state"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 119
    const-string v2, "recovery_needed_flag_id"

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gms/auth/be/recovery/f;->b:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v2, "recovery_suggested_flag_id"

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gms/auth/be/recovery/f;->c:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v2, "recovery_allowed_flag_id"

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/be/recovery/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/gms/auth/be/recovery/f;->d:Z

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/auth/be/recovery/e;->a:Landroid/content/Context;

    const-string v1, "auth_recovery_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    const-string v1, "next_alarm_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
