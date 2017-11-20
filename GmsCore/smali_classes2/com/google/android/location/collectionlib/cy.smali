.class public Lcom/google/android/location/collectionlib/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[S

.field public static final b:[S


# instance fields
.field final c:Landroid/os/PowerManager$WakeLock;

.field final d:[S

.field private final e:Ljava/lang/String;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 34
    new-array v0, v1, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/location/collectionlib/cy;->a:[S

    .line 39
    new-array v0, v1, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/location/collectionlib/cy;->b:[S

    return-void

    .line 34
    :array_0
    .array-data 2
        0xfas
        0x1f4s
        0x3e8s
        0x7d0s
        0xfa0s
        0x1f40s
    .end array-data

    .line 39
    :array_1
    .array-data 2
        0x19s
        0x32s
        0x64s
        0xc8s
        0x190s
        0x320s
    .end array-data
.end method

.method public constructor <init>(Landroid/os/PowerManager;IZLjava/lang/String;[S)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/cy;->f:J

    .line 69
    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "collector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NlpCollectorWakeLock"

    .line 71
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cy;->c:Landroid/os/PowerManager$WakeLock;

    .line 72
    if-nez p3, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cy;->c:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 75
    :cond_0
    iput-object p4, p0, Lcom/google/android/location/collectionlib/cy;->e:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/google/android/location/collectionlib/cy;->d:[S

    .line 77
    return-void

    .line 69
    :cond_1
    const-string v0, "NlpWakeLock"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/PowerManager;Ljava/lang/String;[S)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 89
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;IZLjava/lang/String;[S)V

    .line 90
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 163
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/location/collectionlib/cy;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 166
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/cy;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v0, p1, v0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cy;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 111
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/cy;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/cy;->f:J

    .line 113
    invoke-static {}, Lcom/google/android/location/collectionlib/dd;->a()Lcom/google/android/location/collectionlib/dd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/location/collectionlib/dd;->a(Lcom/google/android/location/collectionlib/cy;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/cy;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/location/p/j;)V
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cy;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Lcom/google/android/location/p/j;->a(Landroid/os/PowerManager$WakeLock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 125
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/cy;->f()V

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 131
    iget-object v2, p0, Lcom/google/android/location/collectionlib/cy;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/cy;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/cy;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/collectionlib/cy;->a(J)J

    move-result-wide v0

    .line 137
    invoke-static {}, Lcom/google/android/location/collectionlib/dd;->a()Lcom/google/android/location/collectionlib/dd;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/location/collectionlib/dd;->a(Lcom/google/android/location/collectionlib/cy;J)V

    .line 138
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/cy;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cy;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cy;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method
