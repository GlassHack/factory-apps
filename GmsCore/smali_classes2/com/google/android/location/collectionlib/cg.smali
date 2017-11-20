.class final Lcom/google/android/location/collectionlib/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field a:Lcom/google/android/location/collectionlib/ci;

.field final b:Ljava/lang/Runnable;

.field private final d:Lcom/google/android/location/p/a/c;

.field private final e:Landroid/hardware/SensorManager;

.field private final f:Lcom/google/android/location/collectionlib/cy;

.field private final g:Lcom/google/android/location/k/b;

.field private final h:Ljava/lang/Object;

.field private i:Z

.field private j:Z

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/location/collectionlib/cg;->c:[I

    .line 68
    return-void

    .line 66
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/location/k/b;Lcom/google/android/location/collectionlib/cy;Lcom/google/android/location/p/a/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cg;->h:Ljava/lang/Object;

    .line 44
    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/cg;->i:Z

    .line 47
    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/cg;->j:Z

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/cg;->k:J

    .line 51
    new-instance v0, Lcom/google/android/location/collectionlib/ch;

    invoke-direct {v0, p0}, Lcom/google/android/location/collectionlib/ch;-><init>(Lcom/google/android/location/collectionlib/cg;)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cg;->b:Ljava/lang/Runnable;

    .line 77
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cg;->e:Landroid/hardware/SensorManager;

    .line 78
    iput-object p2, p0, Lcom/google/android/location/collectionlib/cg;->g:Lcom/google/android/location/k/b;

    .line 79
    invoke-static {p4}, Lcom/google/android/location/collectionlib/db;->a(Lcom/google/android/location/p/a/c;)Lcom/google/android/location/p/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cg;->d:Lcom/google/android/location/p/a/c;

    .line 80
    iput-object p3, p0, Lcom/google/android/location/collectionlib/cg;->f:Lcom/google/android/location/collectionlib/cy;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/p/a/c;)V
    .locals 7

    .prologue
    .line 71
    new-instance v6, Lcom/google/android/location/os/real/ap;

    invoke-direct {v6}, Lcom/google/android/location/os/real/ap;-><init>()V

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    new-instance v0, Lcom/google/android/location/collectionlib/cy;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "SensorTimestampCalibrator"

    sget-object v5, Lcom/google/android/location/collectionlib/cy;->b:[S

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;IZLjava/lang/String;[S)V

    invoke-direct {p0, p1, v6, v0, p2}, Lcom/google/android/location/collectionlib/cg;-><init>(Landroid/content/Context;Lcom/google/android/location/k/b;Lcom/google/android/location/collectionlib/cy;Lcom/google/android/location/p/a/c;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/cg;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cg;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/collectionlib/cg;ZJ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/collectionlib/cg;->a(ZJ)V

    return-void
.end method

.method private a(ZJ)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cg;->a:Lcom/google/android/location/collectionlib/ci;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cg;->e:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cg;->a:Lcom/google/android/location/collectionlib/ci;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 161
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/location/collectionlib/cg;->i:Z

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/cg;->j:Z

    .line 163
    iput-wide p2, p0, Lcom/google/android/location/collectionlib/cg;->k:J

    .line 164
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cg;->d:Lcom/google/android/location/p/a/c;

    const-string v1, "Released wakelock."

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cg;->f:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V

    .line 166
    return-void
.end method

.method static synthetic b(Lcom/google/android/location/collectionlib/cg;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/cg;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/location/collectionlib/cg;)Lcom/google/android/location/p/a/c;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cg;->d:Lcom/google/android/location/p/a/c;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/collectionlib/cg;)Lcom/google/android/location/k/b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cg;->g:Lcom/google/android/location/k/b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/collectionlib/cg;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/cg;->k:J

    return-wide v0
.end method


# virtual methods
.method public final a()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 95
    iget-object v4, p0, Lcom/google/android/location/collectionlib/cg;->h:Ljava/lang/Object;

    monitor-enter v4

    .line 96
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/location/collectionlib/cg;->j:Z

    if-eqz v3, :cond_1

    .line 97
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cg;->d:Lcom/google/android/location/p/a/c;

    const-string v2, "Already calibrating."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 98
    :cond_0
    monitor-exit v4

    .line 124
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/location/collectionlib/cg;->i:Z

    if-eqz v3, :cond_3

    .line 101
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cg;->d:Lcom/google/android/location/p/a/c;

    const-string v2, "Already calibrated."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 102
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 104
    :cond_3
    :try_start_1
    sget-object v5, Lcom/google/android/location/collectionlib/cg;->c:[I

    array-length v6, v5

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_6

    aget v0, v5, v3

    iget-object v7, p0, Lcom/google/android/location/collectionlib/cg;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v7, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 105
    :goto_2
    if-nez v0, :cond_7

    .line 106
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/location/collectionlib/cg;->d:Lcom/google/android/location/p/a/c;

    const-string v2, "Couldn\'t find sensor for calibration"

    invoke-virtual {v0, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 107
    :cond_4
    monitor-exit v4

    move v0, v1

    goto :goto_0

    .line 104
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_2

    .line 110
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/collectionlib/cg;->f:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/cy;->a()V

    .line 111
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cg;->d:Lcom/google/android/location/p/a/c;

    const-string v2, "Acquired wakelock."

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 112
    :cond_8
    new-instance v1, Lcom/google/android/location/collectionlib/ci;

    invoke-direct {v1, p0}, Lcom/google/android/location/collectionlib/ci;-><init>(Lcom/google/android/location/collectionlib/cg;)V

    iput-object v1, p0, Lcom/google/android/location/collectionlib/cg;->a:Lcom/google/android/location/collectionlib/ci;

    .line 113
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/location/collectionlib/cg;->j:Z

    .line 114
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    iget-object v2, p0, Lcom/google/android/location/collectionlib/cg;->e:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/google/android/location/collectionlib/cg;->a:Lcom/google/android/location/collectionlib/ci;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v0, v5, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    .line 117
    if-nez v0, :cond_9

    .line 118
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/location/collectionlib/cg;->a(ZJ)V

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/location/collectionlib/cg;->a:Lcom/google/android/location/collectionlib/ci;

    .line 124
    :goto_3
    monitor-exit v4

    goto :goto_0

    .line 121
    :cond_9
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/location/collectionlib/cg;->d:Lcom/google/android/location/p/a/c;

    const-string v3, "Calibration started."

    invoke-virtual {v2, v3}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    .line 122
    :cond_a
    iget-object v2, p0, Lcom/google/android/location/collectionlib/cg;->b:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/google/android/location/collectionlib/cg;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/cg;->i:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/google/android/location/collectionlib/cg;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/location/collectionlib/cg;->k:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
