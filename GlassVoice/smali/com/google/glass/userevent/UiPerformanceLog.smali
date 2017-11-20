.class public Lcom/google/glass/userevent/UiPerformanceLog;
.super Ljava/lang/Object;
.source "UiPerformanceLog.java"


# static fields
.field private static final DECIMAL_FORMAT:Ljava/lang/String; = "%.3f"

.field private static final LOG_FLUSH_INTERVAL_MILLIS:J

.field private static final TIME_BETWEEN_RENDERS_NUM_SAMPLES:I = 0x400

.field private static final UI_THREAD_QUEUE_NUM_SAMPLES:I = 0x400

.field private static final UI_THREAD_QUEUE_TIME_SAMPLE_INTERVAL_MILLIS:J = 0xfaL


# instance fields
.field private final componentTag:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private isPerformanceMeasureEnabled:Z

.field private lastRenderStartTime:J

.field private final periodicFlushStatisticsRunnable:Ljava/lang/Runnable;

.field private final timeBetweenRendersSample:Lcom/google/glass/userevent/Sample;

.field private final uiThreadQueueEndRunnable:Ljava/lang/Runnable;

.field private final uiThreadQueueSample:Lcom/google/glass/userevent/Sample;

.field private final uiThreadQueueStartRunnable:Ljava/lang/Runnable;

.field private uiThreadScheduleTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/userevent/UiPerformanceLog;->LOG_FLUSH_INTERVAL_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentTag"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x400

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/glass/userevent/UiPerformanceLog$1;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UiPerformanceLog$1;-><init>(Lcom/google/glass/userevent/UiPerformanceLog;)V

    iput-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->periodicFlushStatisticsRunnable:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/google/glass/userevent/Sample;

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/Sample;-><init>(I)V

    .line 64
    invoke-virtual {v0}, Lcom/google/glass/userevent/Sample;->wantAverage()Lcom/google/glass/userevent/Sample;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/userevent/Sample;->wantVariance()Lcom/google/glass/userevent/Sample;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/userevent/Sample;->wantMinMax()Lcom/google/glass/userevent/Sample;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->uiThreadQueueSample:Lcom/google/glass/userevent/Sample;

    .line 70
    new-instance v0, Lcom/google/glass/userevent/UiPerformanceLog$2;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UiPerformanceLog$2;-><init>(Lcom/google/glass/userevent/UiPerformanceLog;)V

    iput-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->uiThreadQueueEndRunnable:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Lcom/google/glass/userevent/UiPerformanceLog$3;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UiPerformanceLog$3;-><init>(Lcom/google/glass/userevent/UiPerformanceLog;)V

    iput-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->uiThreadQueueStartRunnable:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/google/glass/userevent/Sample;

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/Sample;-><init>(I)V

    .line 95
    invoke-virtual {v0}, Lcom/google/glass/userevent/Sample;->wantAverage()Lcom/google/glass/userevent/Sample;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/userevent/Sample;->wantVariance()Lcom/google/glass/userevent/Sample;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/userevent/Sample;->wantMinMax()Lcom/google/glass/userevent/Sample;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->timeBetweenRendersSample:Lcom/google/glass/userevent/Sample;

    .line 101
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 102
    iput-object p1, p0, Lcom/google/glass/userevent/UiPerformanceLog;->context:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/google/glass/userevent/UiPerformanceLog;->componentTag:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->handler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/userevent/UiPerformanceLog;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UiPerformanceLog;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/userevent/UiPerformanceLog;->flushStatistics()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/userevent/UiPerformanceLog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/userevent/UiPerformanceLog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->periodicFlushStatisticsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/userevent/UiPerformanceLog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/userevent/UiPerformanceLog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 26
    sget-wide v0, Lcom/google/glass/userevent/UiPerformanceLog;->LOG_FLUSH_INTERVAL_MILLIS:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/glass/userevent/UiPerformanceLog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/userevent/UiPerformanceLog;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/userevent/UiPerformanceLog;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/userevent/UiPerformanceLog;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->uiThreadScheduleTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/glass/userevent/UiPerformanceLog;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UiPerformanceLog;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/google/glass/userevent/UiPerformanceLog;->uiThreadScheduleTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/google/glass/userevent/UiPerformanceLog;)Lcom/google/glass/userevent/Sample;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/userevent/UiPerformanceLog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->uiThreadQueueSample:Lcom/google/glass/userevent/Sample;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/userevent/UiPerformanceLog;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/userevent/UiPerformanceLog;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/userevent/UiPerformanceLog;->scheduleUiThreadQueueTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/userevent/UiPerformanceLog;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/userevent/UiPerformanceLog;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->uiThreadQueueEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private flushStatistics()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->uiThreadQueueSample:Lcom/google/glass/userevent/Sample;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UI_THREAD_QUEUE:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/userevent/UiPerformanceLog;->logStatistics(Lcom/google/glass/userevent/Sample;Lcom/google/glass/userevent/UserEventAction;)V

    .line 171
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->timeBetweenRendersSample:Lcom/google/glass/userevent/Sample;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->UI_TIME_BETWEEN_RENDERS:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/userevent/UiPerformanceLog;->logStatistics(Lcom/google/glass/userevent/Sample;Lcom/google/glass/userevent/UserEventAction;)V

    .line 172
    return-void
.end method

.method private logStatistics(Lcom/google/glass/userevent/Sample;Lcom/google/glass/userevent/UserEventAction;)V
    .locals 11
    .param p1, "sample"    # Lcom/google/glass/userevent/Sample;
    .param p2, "event"    # Lcom/google/glass/userevent/UserEventAction;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/google/glass/userevent/Sample;->getNumSamples()I

    move-result v1

    if-lez v1, :cond_0

    .line 176
    const-string v1, "tag"

    iget-object v2, p0, Lcom/google/glass/userevent/UiPerformanceLog;->componentTag:Ljava/lang/String;

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "a"

    aput-object v4, v3, v9

    const-string v4, "%.3f"

    new-array v5, v10, [Ljava/lang/Object;

    .line 179
    invoke-virtual {p1}, Lcom/google/glass/userevent/Sample;->getAverage()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v9

    .line 178
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const/4 v4, 0x2

    const-string/jumbo v5, "v"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "%.3f"

    new-array v6, v10, [Ljava/lang/Object;

    .line 181
    invoke-virtual {p1}, Lcom/google/glass/userevent/Sample;->getVariance()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    .line 180
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "min"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "%.3f"

    new-array v6, v10, [Ljava/lang/Object;

    .line 183
    invoke-virtual {p1}, Lcom/google/glass/userevent/Sample;->getMin()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    .line 182
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "max"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "%.3f"

    new-array v6, v10, [Ljava/lang/Object;

    .line 185
    invoke-virtual {p1}, Lcom/google/glass/userevent/Sample;->getMax()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    .line 184
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "c"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    .line 186
    invoke-virtual {p1}, Lcom/google/glass/userevent/Sample;->getNumSamples()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 176
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "tuple":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/glass/userevent/Sample;->reset()V

    .line 188
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v2, p0, Lcom/google/glass/userevent/UiPerformanceLog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 190
    .end local v0    # "tuple":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private scheduleUiThreadQueueTime()V
    .locals 4

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/userevent/UiPerformanceLog;->uiThreadQueueStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/userevent/UiPerformanceLog;->uiThreadQueueStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onRenderStart()V
    .locals 6

    .prologue
    .line 159
    iget-boolean v2, p0, Lcom/google/glass/userevent/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    if-nez v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 163
    .local v0, "now":J
    iget-wide v2, p0, Lcom/google/glass/userevent/UiPerformanceLog;->lastRenderStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/google/glass/userevent/UiPerformanceLog;->timeBetweenRendersSample:Lcom/google/glass/userevent/Sample;

    iget-wide v3, p0, Lcom/google/glass/userevent/UiPerformanceLog;->lastRenderStartTime:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/Sample;->record(J)V

    .line 166
    :cond_1
    iput-wide v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->lastRenderStartTime:J

    goto :goto_0
.end method

.method public startPerformanceLogging()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/userevent/UiPerformanceLog;->periodicFlushStatisticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/userevent/UiPerformanceLog;->periodicFlushStatisticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method public startPerformanceMeasure()V
    .locals 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    .line 117
    invoke-direct {p0}, Lcom/google/glass/userevent/UiPerformanceLog;->scheduleUiThreadQueueTime()V

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->lastRenderStartTime:J

    goto :goto_0
.end method

.method public stopPerformanceLogging()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/userevent/UiPerformanceLog;->periodicFlushStatisticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    invoke-direct {p0}, Lcom/google/glass/userevent/UiPerformanceLog;->flushStatistics()V

    .line 155
    return-void
.end method

.method public stopPerformanceMeasure()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/userevent/UiPerformanceLog;->isPerformanceMeasureEnabled:Z

    .line 126
    return-void
.end method
