.class public final Lcom/google/android/gms/fitness/sensors/local/a;
.super Lcom/google/android/gms/fitness/sensors/b/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Lcom/google/android/location/b/af;

.field private final c:Lcom/google/android/gms/fitness/data/Device;

.field private final d:Lcom/google/android/gms/fitness/sensors/e/i;

.field private final e:Lcom/google/android/gms/fitness/sensors/local/h;

.field private final f:Lcom/google/android/gms/fitness/sensors/local/l;

.field private final g:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Landroid/hardware/SensorManager;Lcom/google/android/location/b/af;Lcom/google/android/gms/fitness/sensors/local/h;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/b/a;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/local/a;->g:Ljava/util/Set;

    .line 69
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/local/a;->a:Landroid/hardware/SensorManager;

    .line 70
    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/local/a;->b:Lcom/google/android/location/b/af;

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Device;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/a;->c:Lcom/google/android/gms/fitness/data/Device;

    .line 72
    new-instance v0, Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/sensors/e/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/a;->d:Lcom/google/android/gms/fitness/sensors/e/i;

    .line 73
    iput-object p5, p0, Lcom/google/android/gms/fitness/sensors/local/a;->e:Lcom/google/android/gms/fitness/sensors/local/h;

    .line 74
    new-instance v0, Lcom/google/android/gms/fitness/sensors/local/l;

    invoke-direct {v0, p5}, Lcom/google/android/gms/fitness/sensors/local/l;-><init>(Lcom/google/android/gms/fitness/sensors/local/h;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/a;->f:Lcom/google/android/gms/fitness/sensors/local/l;

    .line 75
    return-void
.end method

.method private static a(JLcom/google/android/gms/fitness/request/SensorRegistrationRequest;)I
    .locals 4

    .prologue
    .line 218
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 219
    const-string v0, "Request specified a duration in micros which SensorManager won\'t support %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 222
    const v0, 0x7fffffff

    .line 224
    :goto_0
    return v0

    :cond_0
    long-to-int v0, p0

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/sensors/local/d;)Ljava/util/List;
    .locals 3

    .prologue
    .line 134
    sget-object v0, Lcom/google/android/gms/fitness/sensors/local/d;->c:Lcom/google/android/gms/fitness/sensors/local/d;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->J:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/sensors/local/d;->b()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/a;->a:Landroid/hardware/SensorManager;

    const-string v2, "Sensor manager null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/a;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/sensors/local/d;
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/local/d;

    .line 84
    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/local/d;->d:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 145
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/fitness/sensors/local/a;->c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/sensors/local/d;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/a;->c:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/Device;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v7

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/fitness/sensors/local/b;

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/local/a;->b:Lcom/google/android/location/b/af;

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/local/a;->e:Lcom/google/android/gms/fitness/sensors/local/h;

    iget-object v6, p0, Lcom/google/android/gms/fitness/sensors/local/a;->f:Lcom/google/android/gms/fitness/sensors/local/l;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/fitness/sensors/local/b;-><init>(Lcom/google/android/gms/fitness/data/o;Lcom/google/android/gms/fitness/sensors/local/d;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/location/b/af;Lcom/google/android/gms/fitness/sensors/local/h;Lcom/google/android/gms/fitness/sensors/local/l;)V

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/sensors/local/d;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/local/a;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/fitness/sensors/local/a;->a(JLcom/google/android/gms/fitness/request/SensorRegistrationRequest;)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v4

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/fitness/sensors/local/a;->a(JLcom/google/android/gms/fitness/request/SensorRegistrationRequest;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/local/a;->d:Lcom/google/android/gms/fitness/sensors/e/i;

    new-instance v5, Lcom/google/android/gms/fitness/sensors/e/h;

    invoke-direct {v5}, Lcom/google/android/gms/fitness/sensors/e/h;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/fitness/sensors/e/h;->a:Lcom/google/android/gms/fitness/data/o;

    iput-object v0, v5, Lcom/google/android/gms/fitness/sensors/e/h;->b:Landroid/hardware/SensorEventListener;

    int-to-long v8, v2

    int-to-long v10, v3

    invoke-virtual {v5, v8, v9, v10, v11}, Lcom/google/android/gms/fitness/sensors/e/h;->a(JJ)Lcom/google/android/gms/fitness/sensors/e/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/sensors/e/h;->a()Lcom/google/android/gms/fitness/sensors/e/g;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/fitness/sensors/e/i;->a(Lcom/google/android/gms/fitness/sensors/e/g;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/fitness/sensors/local/a;->a:Landroid/hardware/SensorManager;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/local/a;->a:Landroid/hardware/SensorManager;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v3, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_0
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 150
    const-string v0, "  LocalSensorAdapter["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/local/d;

    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/local/d;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 154
    :cond_0
    const-string v0, "]\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/a;->b:Lcom/google/android/location/b/af;

    invoke-virtual {v0}, Lcom/google/android/location/b/af;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;

    .line 157
    const-string v2, "    bootTimeNanos: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-wide v4, v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 160
    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;

    .line 161
    const-string v3, "    sensorOffset[name="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ",sensorType="

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ",offsetNanos="

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/fitness/sensors/local/LocalSensorState$SensorOffset;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v3, "]\n"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/a;->d:Lcom/google/android/gms/fitness/sensors/e/i;

    const-string v1, "    registrations"

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/e/i;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, v0, Lcom/google/android/gms/fitness/sensors/e/i;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/e/g;

    const-string v2, "%s(%ds/%ds)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/google/android/gms/fitness/sensors/e/g;->a:Lcom/google/android/gms/fitness/data/o;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/google/android/gms/fitness/sensors/e/g;->e:J

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/google/android/gms/fitness/sensors/e/g;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_2

    :cond_3
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 169
    :cond_4
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/local/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/local/a;->c:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/Device;->equals(Ljava/lang/Object;)Z

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
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/sensors/local/a;->c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/sensors/local/d;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/sensors/local/a;->a(Lcom/google/android/gms/fitness/sensors/local/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/local/a;->d:Lcom/google/android/gms/fitness/sensors/e/i;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/sensors/e/i;->a(Lcom/google/android/gms/fitness/data/o;)Lcom/google/android/gms/fitness/sensors/e/g;

    move-result-object v2

    .line 232
    if-eqz v2, :cond_0

    .line 233
    const-string v3, "Removing hardware listener for registration %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/local/a;->a:Landroid/hardware/SensorManager;

    iget-object v2, v2, Lcom/google/android/gms/fitness/sensors/e/g;->b:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 237
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 6

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/sensors/local/a;->c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/sensors/local/d;

    move-result-object v2

    .line 108
    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/fitness/sensors/local/a;->a(Lcom/google/android/gms/fitness/sensors/local/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    new-instance v4, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v4}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/sensors/local/d;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/local/a;->c:Lcom/google/android/gms/fitness/data/Device;

    iput-object v5, v4, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    const/4 v5, 0x0

    iput v5, v4, Lcom/google/android/gms/fitness/data/h;->b:I

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/a/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
