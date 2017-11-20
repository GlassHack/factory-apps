.class public final Lcom/google/android/location/l/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/location/l/d;

.field private c:J


# direct methods
.method private constructor <init>(Lcom/google/android/location/l/d;J)V
    .locals 2

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/google/android/location/l/e;->b:Lcom/google/android/location/l/d;

    .line 435
    iput-wide p2, p0, Lcom/google/android/location/l/e;->a:J

    .line 436
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/l/e;->c:J

    .line 437
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/l/d;JB)V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/l/e;-><init>(Lcom/google/android/location/l/d;J)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 447
    monitor-enter p0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 452
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 450
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/location/l/e;->a:J

    iget-wide v2, p0, Lcom/google/android/location/l/e;->c:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 451
    iget-wide v2, p0, Lcom/google/android/location/l/e;->c:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/google/android/location/l/e;->a:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/l/e;->c:J

    .line 452
    iget-object v2, p0, Lcom/google/android/location/l/e;->b:Lcom/google/android/location/l/d;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/location/l/d;->c(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
