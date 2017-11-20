.class public final Lcom/google/android/gms/fitness/j/d;
.super Lcom/google/android/gms/fitness/j/f;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;

.field private static b:Lcom/google/android/gms/fitness/j/f;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/location/b/af;

.field private final e:Ljava/util/List;

.field private final f:Lcom/google/android/gms/fitness/f/h;

.field private g:Landroid/os/Handler;

.field private h:Landroid/os/Handler;

.field private i:Lcom/google/android/gms/fitness/service/ap;

.field private j:Lcom/google/c/j/a/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/j/d;->a:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 12

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/fitness/j/f;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/android/gms/fitness/j/d;->c:Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/google/android/location/b/af;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/d;->c:Landroid/content/Context;

    const-class v2, Lcom/google/android/gms/fitness/service/BrokeredFitnessService;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/b/af;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/d;->d:Lcom/google/android/location/b/af;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/d;->e:Ljava/util/List;

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/fitness/j/d;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/fitness/j/d;->d:Lcom/google/android/location/b/af;

    const-string v0, "sensor"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    new-instance v5, Lcom/google/android/gms/fitness/sensors/local/h;

    sget-object v0, Lcom/google/android/gms/fitness/j/d;->a:Ljava/util/Set;

    invoke-direct {v5, v0}, Lcom/google/android/gms/fitness/sensors/local/h;-><init>(Ljava/util/Set;)V

    const-class v0, Lcom/google/android/gms/fitness/sensors/local/d;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->J:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/fitness/sensors/local/d;->c:Lcom/google/android/gms/fitness/sensors/local/d;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/sensors/local/a;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/sensors/local/a;-><init>(Landroid/content/Context;Ljava/util/Set;Landroid/hardware/SensorManager;Lcom/google/android/location/b/af;Lcom/google/android/gms/fitness/sensors/local/h;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/google/android/gms/fitness/data/k;->k:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v4, Lcom/google/android/gms/fitness/sensors/sample/c;

    const/16 v6, 0xf

    const/4 v7, 0x5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x3c

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/fitness/sensors/sample/c;-><init>(IIJ)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/fitness/sensors/sample/b;->a(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;Ljava/util/Map;)Lcom/google/android/gms/fitness/sensors/sample/b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/fitness/sensors/e/f;

    const-string v2, "Local HW"

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/fitness/sensors/e/f;-><init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/fitness/sensors/local/i;

    sget-object v0, Lcom/google/android/gms/fitness/j/d;->a:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/fitness/j/e;

    invoke-direct {v3, p0}, Lcom/google/android/gms/fitness/j/e;-><init>(Lcom/google/android/gms/fitness/j/d;)V

    invoke-direct {v2, v0, v1, v5, v3}, Lcom/google/android/gms/fitness/sensors/local/i;-><init>(Ljava/util/Set;Lcom/google/android/gms/fitness/sensors/a;Lcom/google/android/gms/fitness/sensors/local/h;Lcom/google/c/a/ay;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/d;->c:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/google/android/gms/fitness/sensors/activity/b;

    invoke-static {v1}, Lcom/google/android/gms/fitness/sensors/activity/a;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/sensors/activity/a;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/fitness/sensors/activity/b;-><init>(Lcom/google/android/gms/fitness/sensors/activity/a;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/fitness/sensors/d/d;

    invoke-direct {v4, v1}, Lcom/google/android/gms/fitness/sensors/d/d;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/google/android/gms/fitness/data/k;->b:Lcom/google/android/gms/fitness/data/DataType;

    invoke-interface {v2, v4}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/google/android/gms/fitness/sensors/c/f;

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/j/d;->b()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/fitness/sensors/c/f;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/j/d;->a(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;)Lcom/google/android/gms/fitness/sensors/a;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Lcom/google/android/gms/fitness/sensors/e/f;

    new-instance v4, Lcom/google/android/gms/fitness/sensors/b/b;

    invoke-direct {v4, v3}, Lcom/google/android/gms/fitness/sensors/b/b;-><init>(Ljava/util/List;)V

    const-string v3, "Local SW"

    invoke-direct {v1, v4, v3}, Lcom/google/android/gms/fitness/sensors/e/f;-><init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->F:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Lcom/google/android/gms/fitness/sensors/g/i;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/sensors/g/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;)V

    .line 110
    invoke-static {v0}, Lcom/google/android/location/wearable/LocationWearableListenerService;->a(Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lcom/google/android/gms/fitness/j/d;->e:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/fitness/sensors/e/f;

    const-string v3, "Wear"

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/fitness/sensors/e/f;-><init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->e:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/fitness/sensors/e/f;

    new-instance v2, Lcom/google/android/gms/fitness/sensors/f/a;

    iget-object v3, p0, Lcom/google/android/gms/fitness/j/d;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/gms/fitness/sensors/f/a;-><init>(Landroid/content/Context;)V

    const-string v3, "App"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/fitness/sensors/e/f;-><init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Device;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    new-instance v0, Lcom/google/android/gms/fitness/f/q;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/f/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/d;->f:Lcom/google/android/gms/fitness/f/h;

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->f:Lcom/google/android/gms/fitness/f/h;

    invoke-static {v0}, Lcom/google/android/location/wearable/LocationWearableListenerService;->a(Ljava/lang/Object;)V

    .line 122
    return-void

    .line 106
    :cond_2
    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/j/d;->a(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;)Lcom/google/android/gms/fitness/sensors/a;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_3
    new-instance v0, Lcom/google/android/gms/fitness/f/j;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/f/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/d;->f:Lcom/google/android/gms/fitness/f/h;

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/fitness/j/f;
    .locals 3

    .prologue
    .line 91
    const-class v1, Lcom/google/android/gms/fitness/j/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/fitness/j/d;->b:Lcom/google/android/gms/fitness/j/f;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/google/android/gms/fitness/j/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/j/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/fitness/j/d;->b:Lcom/google/android/gms/fitness/j/f;

    .line 94
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/j/d;->b:Lcom/google/android/gms/fitness/j/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;)Lcom/google/android/gms/fitness/sensors/a;
    .locals 3

    .prologue
    .line 262
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/fitness/sensors/c/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/fitness/sensors/c/a;

    invoke-direct {v2, p0}, Lcom/google/android/gms/fitness/sensors/c/a;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/google/android/gms/fitness/sensors/c/c;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/fitness/sensors/c/c;-><init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/os/Handler;)Lcom/google/android/gms/fitness/service/ap;
    .locals 2

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->i:Lcom/google/android/gms/fitness/service/ap;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/google/android/gms/fitness/service/ap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/j/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/fitness/service/ap;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/j/d;->i:Lcom/google/android/gms/fitness/service/ap;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->i:Lcom/google/android/gms/fitness/service/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Ljava/util/List;
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->e:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 192
    invoke-static {p1}, Lcom/google/android/location/b/af;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->d:Lcom/google/android/location/b/af;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/af;->c(Landroid/content/Intent;)V

    .line 195
    :cond_0
    return-void
.end method

.method public final declared-synchronized b()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FitnessServiceForeground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 151
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 152
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/j/d;->g:Landroid/os/Handler;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->g:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lcom/google/c/j/a/x;
    .locals 3

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->j:Lcom/google/c/j/a/x;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/j/d;->b()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/fitness/h/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/h/e;-><init>(Landroid/os/Handler;B)V

    instance-of v1, v0, Lcom/google/c/j/a/x;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/c/j/a/x;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/fitness/j/d;->j:Lcom/google/c/j/a/x;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->j:Lcom/google/c/j/a/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 160
    :cond_1
    :try_start_1
    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/c/j/a/ac;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0}, Lcom/google/c/j/a/ac;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/c/j/a/aa;

    invoke-direct {v1, v0}, Lcom/google/c/j/a/aa;-><init>(Ljava/util/concurrent/ExecutorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FitnessServiceBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 170
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 171
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 172
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/fitness/j/d;->h:Landroid/os/Handler;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->h:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/google/android/gms/fitness/f/h;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/fitness/j/d;->f:Lcom/google/android/gms/fitness/f/h;

    return-object v0
.end method
