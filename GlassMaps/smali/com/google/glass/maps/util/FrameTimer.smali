.class public Lcom/google/glass/maps/util/FrameTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TARGET_FPS:F = 20.0f

.field private static final DEFAULT_WARM_UP_FRAMES:I = 0x14

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private frameNum:I

.field private frameStartTime:J

.field private final maxFrameTimeMs:I

.field private numConsecutiveSlowFrames:I

.field private numSlowFrames:I

.field private final numWarmUpFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/util/FrameTimer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    const/high16 v0, 0x41a00000    # 20.0f

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/google/glass/maps/util/FrameTimer;-><init>(FI)V

    .line 32
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/glass/maps/util/FrameTimer;->maxFrameTimeMs:I

    .line 40
    iput p2, p0, Lcom/google/glass/maps/util/FrameTimer;->numWarmUpFrames:I

    .line 41
    invoke-virtual {p0}, Lcom/google/glass/maps/util/FrameTimer;->reset()V

    .line 42
    return-void
.end method

.method private logSlowFrame(J)V
    .locals 7

    .prologue
    .line 72
    iget v0, p0, Lcom/google/glass/maps/util/FrameTimer;->frameNum:I

    iget v1, p0, Lcom/google/glass/maps/util/FrameTimer;->numWarmUpFrames:I

    sub-int/2addr v0, v1

    .line 73
    iget v1, p0, Lcom/google/glass/maps/util/FrameTimer;->numSlowFrames:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 74
    sget-object v2, Lcom/google/glass/maps/util/FrameTimer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "%s slow frame(s)! %sms, frame: %s, %s of %s (%s%%)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/glass/maps/util/FrameTimer;->numConsecutiveSlowFrames:I

    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/google/glass/maps/util/FrameTimer;->frameNum:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/google/glass/maps/util/FrameTimer;->numSlowFrames:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 74
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onEndFrame()V
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/maps/util/FrameTimer;->frameStartTime:J

    sub-long/2addr v0, v2

    .line 59
    iget v2, p0, Lcom/google/glass/maps/util/FrameTimer;->frameNum:I

    iget v3, p0, Lcom/google/glass/maps/util/FrameTimer;->numWarmUpFrames:I

    if-gt v2, v3, :cond_0

    .line 69
    :goto_0
    return-void

    .line 62
    :cond_0
    iget v2, p0, Lcom/google/glass/maps/util/FrameTimer;->maxFrameTimeMs:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 63
    iget v2, p0, Lcom/google/glass/maps/util/FrameTimer;->numSlowFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/maps/util/FrameTimer;->numSlowFrames:I

    .line 64
    iget v2, p0, Lcom/google/glass/maps/util/FrameTimer;->numConsecutiveSlowFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/maps/util/FrameTimer;->numConsecutiveSlowFrames:I

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/google/glass/maps/util/FrameTimer;->logSlowFrame(J)V

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/util/FrameTimer;->numConsecutiveSlowFrames:I

    goto :goto_0
.end method

.method public onStartFrame()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/util/FrameTimer;->frameStartTime:J

    .line 53
    iget v0, p0, Lcom/google/glass/maps/util/FrameTimer;->frameNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/util/FrameTimer;->frameNum:I

    .line 54
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/glass/maps/util/FrameTimer;->frameNum:I

    .line 46
    iput v0, p0, Lcom/google/glass/maps/util/FrameTimer;->numSlowFrames:I

    .line 47
    iput v0, p0, Lcom/google/glass/maps/util/FrameTimer;->numConsecutiveSlowFrames:I

    .line 48
    return-void
.end method
