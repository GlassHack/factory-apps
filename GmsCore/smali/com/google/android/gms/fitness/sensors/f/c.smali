.class final Lcom/google/android/gms/fitness/sensors/f/c;
.super Lcom/google/android/gms/fitness/sensors/b/a;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/content/Intent;

.field final c:Ljava/util/concurrent/ConcurrentMap;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/b/a;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/f/c;->a:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/f/c;->b:Landroid/content/Intent;

    .line 66
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/f/c;->d:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/c;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 69
    return-void
.end method

.method private b()Lcom/google/c/j/a/v;
    .locals 5

    .prologue
    .line 88
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/j/a/v;

    monitor-exit v1

    .line 104
    :goto_0
    return-object v0

    .line 92
    :cond_0
    const-string v0, "Connecting to service %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/f/c;->b:Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    new-instance v0, Lcom/google/android/gms/fitness/h/g;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/f/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/h/g;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 94
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/f/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/f/c;->b:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 95
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/f/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/google/android/gms/fitness/sensors/f/d;

    invoke-direct {v3, p0}, Lcom/google/android/gms/fitness/sensors/f/d;-><init>(Lcom/google/android/gms/fitness/sensors/f/c;)V

    invoke-static {v0, v3}, Lcom/google/c/j/a/n;->b(Lcom/google/c/j/a/v;Lcom/google/c/a/y;)Lcom/google/c/j/a/v;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/j/a/v;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/f/c;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 172
    :cond_0
    invoke-static {}, Lcom/google/c/j/a/ad;->a()Lcom/google/c/j/a/ad;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/google/android/gms/fitness/sensors/f/g;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/f/g;-><init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Lcom/google/c/j/a/ad;)V

    .line 182
    new-instance v2, Lcom/google/android/gms/fitness/sensors/f/h;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/gms/fitness/sensors/f/h;-><init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Lcom/google/android/gms/fitness/internal/v;Lcom/google/c/j/a/ad;)V

    .line 202
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/f/c;->b()Lcom/google/c/j/a/v;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/fitness/sensors/f/c;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/f/c;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/c;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/f/c;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 221
    if-nez v0, :cond_0

    .line 222
    const-string v0, "Couldn\'t find a data source for listener %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 251
    :goto_0
    return v0

    .line 227
    :cond_0
    new-instance v1, Lcom/google/android/gms/fitness/sensors/f/i;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/fitness/sensors/f/i;-><init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/android/gms/fitness/data/o;)V

    .line 237
    new-instance v3, Lcom/google/android/gms/fitness/sensors/f/j;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/fitness/sensors/f/j;-><init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/internal/w;)V

    .line 250
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/f/c;->b()Lcom/google/c/j/a/v;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    move v0, v2

    .line 251
    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/sensors/f/c;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-static {}, Lcom/google/c/j/a/ad;->a()Lcom/google/c/j/a/ad;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/google/android/gms/fitness/sensors/f/e;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/fitness/sensors/f/e;-><init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/c/j/a/ad;)V

    .line 133
    new-instance v2, Lcom/google/android/gms/fitness/sensors/f/f;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/gms/fitness/sensors/f/f;-><init>(Lcom/google/android/gms/fitness/sensors/f/c;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/internal/e;Lcom/google/c/j/a/ad;)V

    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/f/c;->b()Lcom/google/c/j/a/v;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    .line 153
    const-wide/16 v2, 0x12c

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/c/j/a/ad;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    const-string v1, "Interrupted while waiting on FitnessSensorService"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    const-string v1, "Execution exception waiting on FitnessSensorService"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 159
    :catch_2
    move-exception v0

    const-string v0, "Application %s didn\'t respond in time"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/f/c;->b:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method
