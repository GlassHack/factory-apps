.class public final Lcom/google/android/gms/fitness/sensors/c/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/sensors/a;


# static fields
.field private static final a:Lcom/google/android/gms/fitness/data/DataType;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/gms/common/util/i;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/h/a/b/b/y;

.field private final f:Lcom/google/android/gms/fitness/data/DataSource;

.field private final g:J

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;

.field private final i:Landroid/app/PendingIntent;

.field private final j:Ljava/util/LinkedList;

.field private final k:Ljava/util/concurrent/atomic/AtomicLong;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/gms/fitness/data/k;->b:Lcom/google/android/gms/fitness/data/DataType;

    sput-object v0, Lcom/google/android/gms/fitness/sensors/c/f;->a:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 8

    .prologue
    .line 85
    new-instance v1, Lcom/google/h/a/b/b/w;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->K:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->N:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/google/h/a/b/b/w;-><init>(JJIF)V

    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/google/android/gms/fitness/sensors/c/f;-><init>(Landroid/content/Context;Lcom/google/h/a/b/b/y;Lcom/google/android/gms/common/util/i;Landroid/os/Handler;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/h/a/b/b/y;Lcom/google/android/gms/common/util/i;Landroid/os/Handler;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->j:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    iput-object p2, p0, Lcom/google/android/gms/fitness/sensors/c/f;->e:Lcom/google/h/a/b/b/y;

    .line 95
    iput-object p3, p0, Lcom/google/android/gms/fitness/sensors/c/f;->c:Lcom/google/android/gms/common/util/i;

    .line 96
    iput-object p1, p0, Lcom/google/android/gms/fitness/sensors/c/f;->d:Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.fitness.soft_step_count.ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->i:Landroid/app/PendingIntent;

    .line 102
    new-instance v0, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    sget-object v1, Lcom/google/android/gms/fitness/sensors/c/f;->a:Lcom/google/android/gms/fitness/data/DataType;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Device;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Device;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    sget-object v1, Lcom/google/android/gms/fitness/data/Application;->a:Lcom/google/android/gms/fitness/data/Application;

    iput-object v1, v0, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/fitness/data/h;->b:I

    const-string v1, "soft_step_counter"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->f:Lcom/google/android/gms/fitness/data/DataSource;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.location.internal.SAMPLED_SENSOR"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Landroid/support/v4/a/i;->a(Landroid/content/Context;)Landroid/support/v4/a/i;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/a/i;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/c/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->g:J

    .line 114
    iput-object p4, p0, Lcom/google/android/gms/fitness/sensors/c/f;->b:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/sensors/c/f;)Lcom/google/android/gms/common/util/i;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->c:Lcom/google/android/gms/common/util/i;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/fitness/data/o;JJJ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->f:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/google/android/gms/fitness/data/DataPoint;->b(J)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/google/android/gms/fitness/data/DataPoint;->c(J)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/sensors/c/f;->g:J

    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    new-array v1, v5, [I

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/c/f;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/data/DataPoint;->a([I)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 264
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/data/o;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const-string v1, "Couldn\'t push event back to listener"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/sensors/c/f;Lcom/google/android/gms/fitness/data/o;JJ)V
    .locals 8

    .prologue
    .line 51
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/fitness/sensors/c/f;->a(Lcom/google/android/gms/fitness/data/o;JJJ)V

    return-void
.end method

.method private b()J
    .locals 4

    .prologue
    .line 118
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/c/f;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/sensors/c/f;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v8

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "already registered to: %s"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/c/f;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-string v0, "Registering for AR for soft step counter every %dms"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Lcom/google/android/location/internal/h;

    invoke-direct {v1}, Lcom/google/android/location/internal/h;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/fitness/sensors/c/f;->i:Landroid/app/PendingIntent;

    const-string v6, "fitness...SoftStepCounter"

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/location/internal/h;->a(JZLandroid/app/PendingIntent;Ljava/lang/String;)Lcom/google/android/location/internal/h;

    invoke-static {p1}, Lcom/google/android/gms/fitness/m/h;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/location/internal/h;->a(Landroid/os/WorkSource;)Lcom/google/android/location/internal/h;

    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Unable to start the GMS NLP for soft step counter"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/fitness/sensors/c/g;

    invoke-direct {v1, p0, v8}, Lcom/google/android/gms/fitness/sensors/c/g;-><init>(Lcom/google/android/gms/fitness/sensors/c/f;Lcom/google/android/gms/fitness/data/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->k:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 131
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 134
    :goto_1
    return-object v0

    :cond_1
    move v0, v7

    .line 128
    goto :goto_0

    .line 134
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_1
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 312
    const-string v0, "SoftStepCounter.Queue"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/c/f;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 313
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/c/i;

    .line 314
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sensors/c/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 315
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/f;->f:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/google/android/gms/fitness/sensors/c/f;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    const-string v2, "Unregistering from activity recognition for soft step counter"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Lcom/google/android/location/internal/h;

    invoke-direct {v2}, Lcom/google/android/location/internal/h;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/c/f;->i:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Lcom/google/android/location/internal/h;->a(Landroid/app/PendingIntent;)Lcom/google/android/location/internal/h;

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/c/f;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/location/internal/h;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "Unable to unregister from AR"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/c/f;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/c/f;->k:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 160
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 154
    goto :goto_0

    :cond_1
    move v0, v1

    .line 160
    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/google/android/gms/fitness/sensors/c/f;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/sensors/c/f;->f:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/c/f;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/fitness/data/o;

    .line 220
    const-string v2, "triggered accelEvent with listener %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 221
    if-nez v10, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/c/f;->j:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/sensors/c/i;

    .line 227
    const-string v3, "accelEvents"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 229
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    const-string v2, "no accelEvents"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 234
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/d/i;

    iget-wide v0, v4, Lcom/google/android/location/d/i;->a:J

    move-wide/from16 v16, v0

    .line 236
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v3, 0x0

    move-object v11, v3

    .line 237
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/sensors/c/f;->j:Ljava/util/LinkedList;

    invoke-virtual {v3, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/sensors/c/f;->j:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_6

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/sensors/c/f;->j:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_2

    .line 236
    :cond_4
    new-instance v9, Lcom/google/android/gms/fitness/sensors/c/h;

    const/4 v4, 0x0

    invoke-direct {v9, v4}, Lcom/google/android/gms/fitness/sensors/c/h;-><init>(B)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/sensors/c/f;->e:Lcom/google/h/a/b/b/y;

    invoke-interface {v4, v9}, Lcom/google/h/a/b/b/y;->a(Lcom/google/h/a/b/b/z;)V

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/d/i;

    iget-wide v14, v4, Lcom/google/android/location/d/i;->a:J

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v12, v14

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/location/d/i;

    iget-object v3, v4, Lcom/google/android/location/d/i;->b:[F

    const/4 v5, 0x0

    aget v6, v3, v5

    iget-object v3, v4, Lcom/google/android/location/d/i;->b:[F

    const/4 v5, 0x1

    aget v7, v3, v5

    iget-object v3, v4, Lcom/google/android/location/d/i;->b:[F

    const/4 v5, 0x2

    aget v8, v3, v5

    iget-wide v0, v4, Lcom/google/android/location/d/i;->a:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/sensors/c/f;->e:Lcom/google/h/a/b/b/y;

    iget-wide v4, v4, Lcom/google/android/location/d/i;->a:J

    invoke-interface/range {v3 .. v8}, Lcom/google/h/a/b/b/y;->a(JFFF)V

    goto :goto_3

    :cond_5
    new-instance v3, Lcom/google/android/gms/fitness/sensors/c/i;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/fitness/sensors/c/f;->b()J

    move-result-wide v4

    sub-long v6, v12, v14

    iget v8, v9, Lcom/google/android/gms/fitness/sensors/c/h;->a:I

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/fitness/sensors/c/i;-><init>(JJIB)V

    move-object v11, v3

    goto :goto_1

    .line 243
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 245
    if-eqz v2, :cond_7

    if-nez v11, :cond_9

    :cond_7
    const/4 v3, 0x0

    .line 246
    :goto_4
    if-eqz v3, :cond_8

    iget v2, v3, Lcom/google/android/gms/fitness/sensors/c/i;->c:I

    if-lez v2, :cond_8

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/c/f;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v3, Lcom/google/android/gms/fitness/sensors/c/i;->c:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 248
    iget-wide v4, v3, Lcom/google/android/gms/fitness/sensors/c/i;->a:J

    move-object/from16 v2, p0

    move-object v3, v10

    move-wide v6, v12

    move-wide/from16 v8, v16

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/fitness/sensors/c/f;->a(Lcom/google/android/gms/fitness/data/o;JJJ)V

    .line 251
    :cond_8
    if-eqz v11, :cond_0

    iget v2, v11, Lcom/google/android/gms/fitness/sensors/c/i;->c:I

    if-lez v2, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/c/f;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v3, v11, Lcom/google/android/gms/fitness/sensors/c/i;->c:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 253
    iget-wide v4, v11, Lcom/google/android/gms/fitness/sensors/c/i;->a:J

    move-object/from16 v2, p0

    move-object v3, v10

    move-wide v6, v12

    move-wide/from16 v8, v16

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/fitness/sensors/c/f;->a(Lcom/google/android/gms/fitness/data/o;JJJ)V

    goto/16 :goto_0

    .line 245
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/sensors/c/f;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    mul-long/2addr v6, v4

    iget-wide v4, v11, Lcom/google/android/gms/fitness/sensors/c/i;->a:J

    iget-wide v8, v11, Lcom/google/android/gms/fitness/sensors/c/i;->b:J

    sub-long/2addr v4, v8

    iget-wide v8, v2, Lcom/google/android/gms/fitness/sensors/c/i;->a:J

    sub-long v8, v4, v8

    cmp-long v3, v8, v6

    if-lez v3, :cond_a

    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/fitness/sensors/c/i;->a(Lcom/google/android/gms/fitness/sensors/c/i;)D

    move-result-wide v2

    invoke-static {v11}, Lcom/google/android/gms/fitness/sensors/c/i;->a(Lcom/google/android/gms/fitness/sensors/c/i;)D

    move-result-wide v8

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v8

    long-to-double v8, v6

    mul-double/2addr v2, v8

    double-to-int v8, v2

    new-instance v3, Lcom/google/android/gms/fitness/sensors/c/i;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/fitness/sensors/c/i;-><init>(JJIB)V

    goto :goto_4

    :cond_a
    move-wide v6, v8

    goto :goto_5
.end method
