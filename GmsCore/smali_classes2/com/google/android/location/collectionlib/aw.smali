.class public final Lcom/google/android/location/collectionlib/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/av;

.field private b:J

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method protected constructor <init>(Lcom/google/android/location/collectionlib/av;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 195
    iput-object p1, p0, Lcom/google/android/location/collectionlib/aw;->a:Lcom/google/android/location/collectionlib/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->b:J

    .line 216
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->c:J

    .line 221
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/aw;->d:J

    .line 224
    iput-wide v2, p0, Lcom/google/android/location/collectionlib/aw;->e:J

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()Z
    .locals 12

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 228
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->e:J

    sub-long v0, v6, v0

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/aw;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/aw;->a:Lcom/google/android/location/collectionlib/av;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    move-wide v4, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aw;->a:Lcom/google/android/location/collectionlib/av;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/av;->b:Lcom/google/g/a/b/b/a;

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aw;->a:Lcom/google/android/location/collectionlib/av;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    :goto_2
    add-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->e:J

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/aw;->d:J

    iget-wide v8, p0, Lcom/google/android/location/collectionlib/aw;->c:J

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    iget-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->c:J

    :goto_3
    iput-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->c:J

    iput-wide v2, p0, Lcom/google/android/location/collectionlib/aw;->d:J

    iput-wide v6, p0, Lcom/google/android/location/collectionlib/aw;->e:J

    .line 229
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->d:J

    const-wide/16 v2, 0x7800

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v0, v6, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    :cond_1
    const/4 v0, 0x1

    :goto_4
    monitor-exit p0

    return v0

    .line 228
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aw;->a:Lcom/google/android/location/collectionlib/av;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/av;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->e()I

    move-result v0

    int-to-long v0, v0

    move-wide v4, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aw;->a:Lcom/google/android/location/collectionlib/av;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/av;->b:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->e()I

    move-result v0

    int-to-long v0, v0

    move-wide v2, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/collectionlib/aw;->a:Lcom/google/android/location/collectionlib/av;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/av;->c:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->e()I

    move-result v0

    int-to-long v0, v0

    goto :goto_2

    :cond_5
    sub-long v4, v2, v4

    long-to-double v4, v4

    sub-long v8, v6, v0

    long-to-double v8, v8

    div-double/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-lez v0, :cond_6

    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_6

    const-wide/16 v0, 0x7800

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    const-wide/16 v0, 0x7800

    sub-long/2addr v0, v2

    long-to-double v0, v0

    div-double/2addr v0, v4

    const-wide/16 v4, 0x7d0

    double-to-long v0, v0

    const-wide/16 v8, 0x2

    mul-long/2addr v0, v8

    const-wide/16 v8, 0x3

    div-long/2addr v0, v8

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_3

    :cond_6
    const-wide/16 v0, 0xc8

    goto :goto_3

    .line 229
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()V
    .locals 2

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->b:J

    .line 287
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->c:J

    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->d:J

    .line 289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/aw;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
