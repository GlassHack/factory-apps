.class final Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;
.super Lcom/google/common/util/concurrent/SmoothRateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SmoothRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmoothWarmingUp"
.end annotation


# instance fields
.field private coldFactor:D

.field private slope:D

.field private thresholdPermits:D

.field private final warmupPeriodMicros:J


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;JLjava/util/concurrent/TimeUnit;D)V
    .locals 2
    .param p1, "stopwatch"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
    .param p2, "warmupPeriod"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "coldFactor"    # D

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    .line 219
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    .line 220
    iput-wide p5, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->coldFactor:D

    .line 221
    return-void
.end method

.method private permitsToTime(D)D
    .locals 5
    .param p1, "permits"    # D

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->stableIntervalMicros:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->slope:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method coolDownIntervalMicros()D
    .locals 4

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method doSetRate(DD)V
    .locals 11
    .param p1, "permitsPerSecond"    # D
    .param p3, "stableIntervalMicros"    # D

    .prologue
    .line 225
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    .line 226
    .local v2, "oldMaxPermits":D
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->coldFactor:D

    mul-double v0, p3, v4

    .line 227
    .local v0, "coldIntervalMicros":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, p3

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    .line 228
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    add-double v8, p3, v0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    .line 230
    sub-double v4, v0, p3

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    iget-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->slope:D

    .line 231
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v2, v4

    if-nez v4, :cond_0

    .line 233
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    .line 240
    :goto_0
    return-void

    .line 235
    :cond_0
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    .line 237
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    .line 238
    :goto_1
    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    mul-double/2addr v4, v6

    div-double/2addr v4, v2

    goto :goto_1
.end method

.method storedPermitsToWaitTime(DD)J
    .locals 15
    .param p1, "storedPermits"    # D
    .param p3, "permitsToTake"    # D

    .prologue
    .line 244
    iget-wide v10, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->thresholdPermits:D

    sub-double v2, p1, v10

    .line 245
    .local v2, "availablePermitsAboveThreshold":D
    const-wide/16 v6, 0x0

    .line 247
    .local v6, "micros":J
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-lez v10, :cond_0

    .line 248
    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 250
    .local v8, "permitsAboveThresholdToTake":D
    invoke-direct {p0, v2, v3}, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->permitsToTime(D)D

    move-result-wide v10

    sub-double v12, v2, v8

    .line 251
    invoke-direct {p0, v12, v13}, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->permitsToTime(D)D

    move-result-wide v12

    add-double v4, v10, v12

    .line 252
    .local v4, "length":D
    mul-double v10, v8, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-long v6, v10

    .line 253
    sub-double p3, p3, v8

    .line 256
    .end local v4    # "length":D
    .end local v8    # "permitsAboveThresholdToTake":D
    :cond_0
    long-to-double v10, v6

    iget-wide v12, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->stableIntervalMicros:D

    mul-double v12, v12, p3

    add-double/2addr v10, v12

    double-to-long v6, v10

    .line 257
    return-wide v6
.end method
