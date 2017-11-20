.class public final Lcom/google/android/gms/fitness/sensors/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/concurrent/ConcurrentMap;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;

.field private final e:Lcom/google/android/gms/location/l;

.field private f:Lcom/google/android/location/o/n;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/sensors/d/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/location/o/n;

    invoke-direct {v0, p1}, Lcom/google/android/location/o/n;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/d/a;-><init>(Landroid/content/Context;Lcom/google/android/location/o/n;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/location/o/n;)V
    .locals 4

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->g:J

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 115
    invoke-static {}, Lcom/google/android/gms/fitness/sensors/d/c;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    .line 116
    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/sensors/d/c;->a(Landroid/content/Context;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->b:Ljava/util/Map;

    .line 120
    new-instance v0, Lcom/google/android/gms/fitness/sensors/d/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/sensors/d/e;-><init>(Lcom/google/android/gms/fitness/sensors/d/a;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->e:Lcom/google/android/gms/location/l;

    .line 122
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/d/a;->f:Lcom/google/android/location/o/n;

    .line 123
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/google/android/gms/fitness/sensors/d/a;
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/gms/fitness/sensors/d/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/d/a;

    .line 91
    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lcom/google/android/gms/fitness/sensors/d/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/fitness/sensors/d/a;

    invoke-direct {v2, p0}, Lcom/google/android/gms/fitness/sensors/d/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/google/android/gms/fitness/sensors/d/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/d/a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/sensors/d/a;)Lcom/google/android/location/o/n;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->f:Lcom/google/android/location/o/n;

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/internal/a;

    .line 231
    new-instance v3, Lcom/google/android/gms/location/internal/ClientIdentity;

    iget v4, v0, Lcom/google/android/gms/fitness/internal/a;->a:I

    iget-object v0, v0, Lcom/google/android/gms/fitness/internal/a;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/sensors/d/a;Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/sensors/d/a;->g:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->g:J

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->e:Lcom/google/android/gms/location/l;

    invoke-interface {v0, p1}, Lcom/google/android/gms/location/l;->a(Landroid/location/Location;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/o;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/d/b;

    .line 74
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/d/b;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v0

    goto :goto_0
.end method

.method final declared-synchronized a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 12

    .prologue
    const/16 v1, 0x66

    .line 157
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 158
    const-string v0, "Registering for location every %dms with %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object p0, v4, v2

    invoke-static {v0, v4}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/d/a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/fitness/sensors/d/b;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/fitness/sensors/d/b;-><init>(Lcom/google/android/gms/fitness/sensors/d/a;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V

    iget-object v5, v4, Lcom/google/android/gms/fitness/sensors/d/b;->b:Lcom/google/android/location/o/u;

    iget-object v6, v4, Lcom/google/android/gms/fitness/sensors/d/b;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iget-object v0, v4, Lcom/google/android/gms/fitness/sensors/d/b;->c:Lcom/google/android/gms/fitness/sensors/d/a;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/d/a;->f:Lcom/google/android/location/o/n;

    invoke-virtual {v0}, Lcom/google/android/location/o/n;->a()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    invoke-virtual {v7, v0}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/location/LocationRequest;->b(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationRequest;

    const-string v8, "fitness"

    invoke-static {v8, v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->i()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/fitness/sensors/d/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/util/List;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :pswitch_0
    const/16 v0, 0x64

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x68

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v5, v1, v0}, Lcom/google/android/location/o/u;->a(Ljava/util/List;Z)V

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/d/b;

    .line 162
    if-eqz v0, :cond_2

    .line 163
    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/d/b;->b:Lcom/google/android/location/o/u;

    invoke-virtual {v0}, Lcom/google/android/location/o/u;->a()V

    .line 166
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized a(Landroid/location/Location;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 133
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 134
    const-string v2, "Out of order location: %s is before %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 141
    :goto_0
    monitor-exit p0

    return v0

    .line 140
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/d/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 141
    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 195
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/d/b;

    .line 197
    iget-object v3, v0, Lcom/google/android/gms/fitness/sensors/d/b;->a:Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/d/a;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/d/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/d/a;->f:Lcom/google/android/location/o/n;

    invoke-virtual {v1}, Lcom/google/android/location/o/n;->b()V

    .line 208
    :cond_1
    if-eqz v0, :cond_2

    .line 209
    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/d/b;->b:Lcom/google/android/location/o/u;

    invoke-virtual {v0}, Lcom/google/android/location/o/u;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    const/4 v0, 0x1

    .line 212
    :goto_1
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method final declared-synchronized b()Landroid/location/Location;
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/d/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method
