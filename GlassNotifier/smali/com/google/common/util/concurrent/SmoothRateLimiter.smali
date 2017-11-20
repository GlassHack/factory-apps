.class abstract Lcom/google/common/util/concurrent/SmoothRateLimiter;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;,
        Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;
    }
.end annotation


# instance fields
.field maxPermits:D

.field private nextFreeTicketMicros:J

.field stableIntervalMicros:D

.field storedPermits:D


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V
    .locals 2
    .param p1, "stopwatch"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V

    .line 331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/SmoothRateLimiter$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V

    return-void
.end method


# virtual methods
.method abstract coolDownIntervalMicros()D
.end method

.method final doGetRate()D
    .locals 4

    .prologue
    .line 349
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method abstract doSetRate(DD)V
.end method

.method final doSetRate(DJ)V
    .locals 7
    .param p1, "permitsPerSecond"    # D
    .param p3, "nowMicros"    # J

    .prologue
    .line 339
    invoke-virtual {p0, p3, p4}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->resync(J)V

    .line 340
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v0, v2, p1

    .line 341
    .local v0, "stableIntervalMicros":D
    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    .line 342
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->doSetRate(DD)V

    .line 343
    return-void
.end method

.method final queryEarliestAvailable(J)J
    .locals 2
    .param p1, "nowMicros"    # J

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    return-wide v0
.end method

.method final reserveEarliestAvailable(IJ)J
    .locals 12
    .param p1, "requiredPermits"    # I
    .param p2, "nowMicros"    # J

    .prologue
    .line 359
    invoke-virtual {p0, p2, p3}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->resync(J)V

    .line 360
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    .line 361
    .local v2, "returnValue":J
    int-to-double v8, p1

    iget-wide v10, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 362
    .local v4, "storedPermitsToSpend":D
    int-to-double v8, p1

    sub-double v0, v8, v4

    .line 363
    .local v0, "freshPermits":D
    iget-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    .line 364
    invoke-virtual {p0, v8, v9, v4, v5}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermitsToWaitTime(DD)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    mul-double/2addr v10, v0

    double-to-long v10, v10

    add-long v6, v8, v10

    .line 367
    .local v6, "waitMicros":J
    iget-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    invoke-static {v8, v9, v6, v7}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    .line 368
    iget-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    sub-double/2addr v8, v4

    iput-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    .line 369
    return-wide v2
.end method

.method resync(J)V
    .locals 7
    .param p1, "nowMicros"    # J

    .prologue
    .line 391
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 392
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->coolDownIntervalMicros()D

    move-result-wide v4

    div-double v0, v2, v4

    .line 393
    .local v0, "newPermits":D
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->maxPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    add-double/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    .line 394
    iput-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    .line 396
    .end local v0    # "newPermits":D
    :cond_0
    return-void
.end method

.method abstract storedPermitsToWaitTime(DD)J
.end method
