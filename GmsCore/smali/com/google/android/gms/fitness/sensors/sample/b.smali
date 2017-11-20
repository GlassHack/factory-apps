.class public final Lcom/google/android/gms/fitness/sensors/sample/b;
.super Lcom/google/android/gms/fitness/sensors/b/c;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final c:Ljava/util/Map;


# instance fields
.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Landroid/content/Context;

.field private final g:J

.field private final h:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/sensors/sample/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/sensors/sample/b;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p4}, Lcom/google/android/gms/fitness/sensors/b/c;-><init>(Lcom/google/android/gms/fitness/sensors/a;)V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->d:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->e:Ljava/util/Map;

    .line 65
    iput-wide p1, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->g:J

    .line 66
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->f:Landroid/content/Context;

    .line 67
    iput-object p5, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->h:Ljava/util/Map;

    .line 68
    return-void
.end method

.method static a(J)Lcom/google/android/gms/fitness/sensors/sample/b;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/gms/fitness/sensors/sample/b;->c:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/sample/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;Ljava/util/Map;)Lcom/google/android/gms/fitness/sensors/sample/b;
    .locals 7

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 52
    new-instance v1, Lcom/google/android/gms/fitness/sensors/sample/b;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/fitness/sensors/sample/b;-><init>(JLandroid/content/Context;Lcom/google/android/gms/fitness/sensors/a;Ljava/util/Map;)V

    .line 54
    sget-object v0, Lcom/google/android/gms/fitness/sensors/sample/b;->c:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-object v1
.end method

.method private b(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/android/gms/fitness/sensors/sample/c;
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/sample/c;

    return-object v0
.end method


# virtual methods
.method final a(I)Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 6

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/sensors/sample/b;->b(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/android/gms/fitness/sensors/sample/c;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/fitness/sensors/sample/c;->c:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 83
    sget-object v0, Lcom/google/android/gms/fitness/sensors/sample/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/sample/b;->b(I)V

    .line 90
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sample rate is smaller than: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/google/android/gms/fitness/sensors/sample/c;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->a:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/fitness/sensors/a;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->a:Lcom/google/android/gms/fitness/sensors/a;

    return-object v0
.end method

.method final b(I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    .line 117
    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request no longer valid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/sensors/sample/b;->b(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/android/gms/fitness/sensors/sample/c;

    move-result-object v2

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->f:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 125
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->f:Landroid/content/Context;

    const-class v5, Lcom/google/android/gms/fitness/sensors/sample/CollectSensorReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v4, "adapter_id"

    iget-wide v6, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->g:J

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    const-string v4, "request_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v4, "max_sample_points"

    iget v5, v2, Lcom/google/android/gms/fitness/sensors/sample/c;->b:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v4, "max_sample_secs"

    iget v2, v2, Lcom/google/android/gms/fitness/sensors/sample/c;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/sample/b;->f:Landroid/content/Context;

    const/high16 v4, 0x10000000

    invoke-static {v2, p1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 134
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Manual Sample: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
