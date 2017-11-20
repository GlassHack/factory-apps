.class public Lcom/google/glass/voice/network/NetworkHealthTracker;
.super Ljava/lang/Object;
.source "NetworkHealthTracker.java"


# static fields
.field private static final INTER_PING_TIME_MS:J


# instance fields
.field private final checkNetworkRunnable:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private lastCheckStartTime:J

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private stopTrackingTimeMsSinceEpoch:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/network/NetworkHealthTracker;->INTER_PING_TIME_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    new-instance v0, Lcom/google/glass/voice/network/NetworkHealthTracker$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/NetworkHealthTracker$1;-><init>(Lcom/google/glass/voice/network/NetworkHealthTracker;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->checkNetworkRunnable:Ljava/lang/Runnable;

    .line 32
    iput-object p1, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/network/NetworkHealthTracker;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/NetworkHealthTracker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/network/NetworkHealthTracker;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/voice/network/NetworkHealthTracker;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->lastCheckStartTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/glass/voice/network/NetworkHealthTracker;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/network/NetworkHealthTracker;
    .param p1, "x1"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->lastCheckStartTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/glass/voice/network/NetworkHealthTracker;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/voice/network/NetworkHealthTracker;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/voice/network/NetworkHealthTracker;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/network/NetworkHealthTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/NetworkHealthTracker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/network/NetworkHealthTracker;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/voice/network/NetworkHealthTracker;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->stopTrackingTimeMsSinceEpoch:J

    return-wide v0
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 19
    sget-wide v0, Lcom/google/glass/voice/network/NetworkHealthTracker;->INTER_PING_TIME_MS:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/network/NetworkHealthTracker;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/network/NetworkHealthTracker;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private getTime()J
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public startTrackingNetworkHealth()V
    .locals 2

    .prologue
    .line 70
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->stopTrackingTimeMsSinceEpoch:J

    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->checkNetworkRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 72
    return-void
.end method

.method public stopTrackingNetworkHealthDelayed(J)V
    .locals 2
    .param p1, "delayMs"    # J

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/glass/voice/network/NetworkHealthTracker;->getTime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/glass/voice/network/NetworkHealthTracker;->stopTrackingTimeMsSinceEpoch:J

    .line 76
    return-void
.end method
