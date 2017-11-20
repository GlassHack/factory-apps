.class public final Lcom/google/android/gms/fitness/sensors/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/sensors/activity/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->d:Landroid/content/Context;

    .line 73
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/google/android/gms/fitness/sensors/activity/ActivityRecognitionService;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 77
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 78
    invoke-static {}, Lcom/google/android/gms/fitness/d/b;->values()[Lcom/google/android/gms/fitness/d/b;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    .line 79
    invoke-static {p1, v7}, Lcom/google/android/gms/fitness/d/a;->a(Landroid/content/Context;Lcom/google/android/gms/fitness/d/b;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {v7}, Lcom/google/android/gms/fitness/d/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/high16 v9, 0x8000000

    invoke-static {p1, v1, v8, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->c:Ljava/util/Map;

    .line 86
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->b:Ljava/util/Map;

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/fitness/sensors/activity/a;
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/gms/fitness/sensors/activity/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/activity/a;

    .line 58
    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/sensors/activity/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/fitness/sensors/activity/a;

    invoke-direct {v2, p0}, Lcom/google/android/gms/fitness/sensors/activity/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/google/android/gms/fitness/sensors/activity/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/activity/a;

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/fitness/d/b;)Lcom/google/android/gms/fitness/data/o;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    return-object v0
.end method

.method final declared-synchronized a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 111
    monitor-enter p0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 113
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/fitness/d/b;->values()[Lcom/google/android/gms/fitness/d/b;

    move-result-object v5

    array-length v6, v5

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v0, v5, v1

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/d/b;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 114
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 115
    const-string v1, "Registering for activity recognition %s every %dms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 118
    new-instance v1, Lcom/google/android/location/internal/h;

    invoke-direct {v1}, Lcom/google/android/location/internal/h;-><init>()V

    .line 119
    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fitness...ActivityClientManager..."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/internal/h;->a(JZLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;

    .line 121
    invoke-static {p1}, Lcom/google/android/gms/fitness/m/h;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Landroid/os/WorkSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/internal/h;->a(Landroid/os/WorkSource;)Lcom/google/android/location/internal/h;

    .line 123
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    .line 124
    const-string v0, "Unable to start the GMS NLP"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 132
    :goto_2
    monitor-exit p0

    return-object v0

    .line 113
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 128
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    .line 129
    if-eqz v0, :cond_3

    .line 130
    const-string v1, "Expected no registered listener, but found %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/fitness/d/b;->values()[Lcom/google/android/gms/fitness/d/b;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 157
    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p0, v4}, Lcom/google/android/gms/fitness/sensors/activity/a;->c(Lcom/google/android/gms/fitness/d/b;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    or-int/2addr v0, v4

    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    monitor-exit p0

    return v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Lcom/google/android/gms/fitness/d/b;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method final declared-synchronized c(Lcom/google/android/gms/fitness/d/b;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 140
    const-string v3, "Unregistering from activity recognition for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    new-instance v3, Lcom/google/android/location/internal/h;

    invoke-direct {v3}, Lcom/google/android/location/internal/h;-><init>()V

    .line 142
    invoke-virtual {v3, v0}, Lcom/google/android/location/internal/h;->a(Landroid/app/PendingIntent;)Lcom/google/android/location/internal/h;

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/activity/a;->d:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    const-string v0, "Unable to start the GMS NLP"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 147
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
