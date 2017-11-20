.class public final Lcom/google/android/gms/analytics/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/analytics/internal/u;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Landroid/content/Context;

.field private d:Lcom/google/android/gms/playlog/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "GoogleAnalyticsPlayLogs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/u;->c:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/google/android/gms/analytics/internal/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/internal/u;->a:Lcom/google/android/gms/analytics/internal/u;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/google/android/gms/analytics/internal/u;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/internal/u;->a:Lcom/google/android/gms/analytics/internal/u;

    .line 48
    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/internal/u;->a:Lcom/google/android/gms/analytics/internal/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    const-string v1, "hitsReceived"

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    const-string v3, "hitsReceived"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 5

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    const-string v1, "hitsDispatched"

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    const-string v3, "hitsDispatched"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 3

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    const-string v1, "hitsDeletedFromDb"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(I)V
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    const-string v1, "hitsInDb"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 6

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 105
    new-instance v2, Lcom/google/android/gms/analytics/at;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/at;-><init>()V

    .line 106
    new-instance v0, Lcom/google/android/gms/analytics/au;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/au;-><init>()V

    iput-object v0, v2, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    .line 107
    iget-object v0, v2, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    const-string v4, "hitsReceived"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/analytics/au;->a:I

    .line 108
    iget-object v0, v2, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    const-string v4, "hitsInDb"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/analytics/au;->b:I

    .line 109
    iget-object v0, v2, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    const-string v4, "hitsDispatched"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/analytics/au;->c:I

    .line 110
    iget-object v0, v2, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    iget-object v3, p0, Lcom/google/android/gms/analytics/internal/u;->b:Landroid/content/SharedPreferences;

    const-string v4, "hitsDeletedFromDb"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/google/android/gms/analytics/au;->e:Z

    .line 112
    iget-object v3, v2, Lcom/google/android/gms/analytics/at;->a:Lcom/google/android/gms/analytics/au;

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v3, Lcom/google/android/gms/analytics/au;->d:Z

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/u;->d:Lcom/google/android/gms/playlog/a;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/google/android/gms/playlog/a;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/u;->c:Landroid/content/Context;

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/playlog/a;-><init>(Landroid/content/Context;I)V

    .line 121
    :goto_0
    const-string v1, ""

    invoke-static {v2}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/playlog/a;->a(Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/playlog/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/u;->d:Lcom/google/android/gms/playlog/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
