.class public Lcom/google/glass/voice/network/GlassRetryStrategy;
.super Ljava/lang/Object;
.source "GlassRetryStrategy.java"


# static fields
.field static final MAX_RETRY_MS:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TOTAL_RETRY:I = 0x3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private clock:Lcom/google/glass/time/Clock;

.field private originalStableLength:I

.field private originalStablePrefix:Ljava/lang/String;

.field private originalUnstableLength:I

.field private originalUnstablePrefix:Ljava/lang/String;

.field receivedPartialResultFromRetry:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field recognitionStartedTimeMs:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field retryCounts:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/GlassRetryStrategy;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/network/GlassRetryStrategy;->MAX_RETRY_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/time/Clock;)V
    .locals 2
    .param p1, "clock"    # Lcom/google/glass/time/Clock;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalStablePrefix:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalUnstablePrefix:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalStableLength:I

    .line 38
    iput v1, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalUnstableLength:I

    .line 39
    iput-boolean v1, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->receivedPartialResultFromRetry:Z

    .line 43
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->clock:Lcom/google/glass/time/Clock;

    .line 44
    return-void
.end method

.method private onPartialResult()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->receivedPartialResultFromRetry:Z

    .line 123
    return-void
.end method

.method private storeStateBeforeRetry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "stablePrefix"    # Ljava/lang/String;
    .param p2, "unstablePrefix"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v0, Lcom/google/glass/voice/network/GlassRetryStrategy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#storeStateBeforeRetry: stablePrefix=%s; unstablePrefix=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalStablePrefix:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalUnstablePrefix:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalStableLength:I

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalUnstableLength:I

    .line 100
    return-void
.end method


# virtual methods
.method public canRetry(Lcom/google/glass/voice/network/SpeechException$Type;)Z
    .locals 7
    .param p1, "type"    # Lcom/google/glass/voice/network/SpeechException$Type;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    sget-object v2, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    if-eq p1, v2, :cond_0

    .line 73
    :goto_0
    return v0

    .line 60
    :cond_0
    iget v2, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->retryCounts:I

    if-gtz v2, :cond_1

    .line 61
    sget-object v1, Lcom/google/glass/voice/network/GlassRetryStrategy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Cannot retry: retry exhausted"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-wide v2, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->recognitionStartedTimeMs:J

    sget-wide v4, Lcom/google/glass/voice/network/GlassRetryStrategy;->MAX_RETRY_MS:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v4}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 66
    sget-object v2, Lcom/google/glass/voice/network/GlassRetryStrategy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Cannot retry: recognition started at: %s, current time is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->recognitionStartedTimeMs:J

    .line 67
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v5}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    .line 66
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_2
    iget v2, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->retryCounts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->retryCounts:I

    .line 72
    sget-object v2, Lcom/google/glass/voice/network/GlassRetryStrategy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "can Retry, decrementing counter to: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->retryCounts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public getOriginalStablePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalStablePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUnstablePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalUnstablePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCountPerformed()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->retryCounts:I

    rsub-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isRetrying()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/glass/voice/network/GlassRetryStrategy;->getRetryCountPerformed()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRetryStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "stablePrefix"    # Ljava/lang/String;
    .param p2, "unstablePrefix"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/glass/voice/network/GlassRetryStrategy;->getRetryCountPerformed()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->receivedPartialResultFromRetry:Z

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/GlassRetryStrategy;->storeStateBeforeRetry(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->retryCounts:I

    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->recognitionStartedTimeMs:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->receivedPartialResultFromRetry:Z

    .line 51
    return-void
.end method

.method public useNewResult(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newStableResult"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassRetryStrategy;->onPartialResult()V

    .line 117
    iget v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalStableLength:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalUnstableLength:I

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/glass/voice/network/GlassRetryStrategy;->originalStableLength:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
