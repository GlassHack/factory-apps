.class final Lcom/google/android/gms/usagereporting/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/usagereporting/service/a;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/usagereporting/service/a;->a:Lcom/google/android/gms/usagereporting/service/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "usagereporting"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/usagereporting/service/a;->b:Landroid/content/SharedPreferences;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/usagereporting/service/a;->c:Ljava/util/HashSet;

    .line 40
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/usagereporting/service/a;
    .locals 3

    .prologue
    .line 28
    const-class v1, Lcom/google/android/gms/usagereporting/service/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/usagereporting/service/a;->a:Lcom/google/android/gms/usagereporting/service/a;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/google/android/gms/usagereporting/service/a;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/usagereporting/service/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/usagereporting/service/a;->a:Lcom/google/android/gms/usagereporting/service/a;

    .line 31
    :cond_0
    sget-object v0, Lcom/google/android/gms/usagereporting/service/a;->a:Lcom/google/android/gms/usagereporting/service/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;->a()I

    move-result v2

    .line 63
    if-nez v2, :cond_0

    .line 75
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/usagereporting/service/a;->b:Landroid/content/SharedPreferences;

    monitor-enter v3

    .line 67
    if-ne v2, v1, :cond_1

    move v2, v1

    .line 68
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/service/a;->b()Z

    move-result v4

    if-ne v2, v4, :cond_2

    .line 69
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    move v2, v0

    .line 67
    goto :goto_1

    .line 71
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/service/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    const-string v4, "OptInUsageReporting"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 74
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 75
    goto :goto_0
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/service/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "OptInUsageReporting"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;Lcom/google/android/gms/usagereporting/a/a;)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/gms/usagereporting/service/a;->a(Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)Z

    move-result v0

    .line 55
    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p2, v1}, Lcom/google/android/gms/usagereporting/a/a;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 56
    if-eqz v0, :cond_1

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/service/a;->c:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/service/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/usagereporting/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/usagereporting/a/d;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/usagereporting/a/a;)V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/service/a;->b:Landroid/content/SharedPreferences;

    monitor-enter v1

    .line 45
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/usagereporting/service/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v2, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;

    invoke-direct {v2, v0}, Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;-><init>(I)V

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/usagereporting/a/a;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/usagereporting/UsageReportingOptInOptions;)V

    .line 50
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/usagereporting/a/d;Lcom/google/android/gms/usagereporting/a/a;)V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/service/a;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/service/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p2, v0}, Lcom/google/android/gms/usagereporting/a/a;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 94
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/google/android/gms/usagereporting/a/d;Lcom/google/android/gms/usagereporting/a/a;)V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/android/gms/usagereporting/service/a;->c:Ljava/util/HashSet;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/service/a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p2, v0}, Lcom/google/android/gms/usagereporting/a/a;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
