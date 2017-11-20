.class public Lcom/google/glass/input/HeadScrollDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_PITCH_ACCUMULATIONS:I = 0x14

.field private static final SCROLL_PIXELS_PER_PITCH_DEGREE:F = 40.0f


# instance fields
.field private accumulatedPitchDelta:F

.field private hasPitch:Z

.field private lastHeadScrollTimeMillis:J

.field private lastPitch:F

.field private final listener:Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;

.field private numPitchAccumulations:I

.field private final pitchHelper:Lcom/google/glass/input/PitchHelper;

.field private final pitchListener:Lcom/google/glass/input/PitchHelper$PitchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/glass/input/HeadScrollDetector$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/HeadScrollDetector$1;-><init>(Lcom/google/glass/input/HeadScrollDetector;)V

    iput-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchListener:Lcom/google/glass/input/PitchHelper$PitchListener;

    .line 73
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;

    iput-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->listener:Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;

    .line 74
    new-instance v0, Lcom/google/glass/input/PitchHelper;

    iget-object v1, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchListener:Lcom/google/glass/input/PitchHelper$PitchListener;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/input/PitchHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/PitchHelper$PitchListener;)V

    iput-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/input/HeadScrollDetector;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/glass/input/HeadScrollDetector;->hasPitch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/input/HeadScrollDetector;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/google/glass/input/HeadScrollDetector;->hasPitch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/input/HeadScrollDetector;)F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/glass/input/HeadScrollDetector;->lastPitch:F

    return v0
.end method

.method static synthetic access$102(Lcom/google/glass/input/HeadScrollDetector;F)F
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/google/glass/input/HeadScrollDetector;->lastPitch:F

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/input/HeadScrollDetector;F)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/glass/input/HeadScrollDetector;->handleHeadScroll(F)V

    return-void
.end method

.method private dispatchVerticalHeadScroll(F)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->listener:Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;->onVerticalHeadScroll(F)Z

    .line 92
    return-void
.end method

.method private handleHeadScroll(F)V
    .locals 6

    .prologue
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 96
    iget-wide v2, p0, Lcom/google/glass/input/HeadScrollDetector;->lastHeadScrollTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/glass/input/HeadScrollDetector;->lastHeadScrollTimeMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 103
    iget v2, p0, Lcom/google/glass/input/HeadScrollDetector;->accumulatedPitchDelta:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/google/glass/input/HeadScrollDetector;->accumulatedPitchDelta:F

    .line 104
    iget v2, p0, Lcom/google/glass/input/HeadScrollDetector;->numPitchAccumulations:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/input/HeadScrollDetector;->numPitchAccumulations:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 106
    iget v2, p0, Lcom/google/glass/input/HeadScrollDetector;->accumulatedPitchDelta:F

    invoke-direct {p0, v2}, Lcom/google/glass/input/HeadScrollDetector;->dispatchVerticalHeadScroll(F)V

    .line 107
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/input/HeadScrollDetector;->accumulatedPitchDelta:F

    .line 112
    :cond_0
    iput-wide v0, p0, Lcom/google/glass/input/HeadScrollDetector;->lastHeadScrollTimeMillis:J

    .line 113
    return-void
.end method


# virtual methods
.method public areOrientationSensorsStarted()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/PitchHelper;->isStarted()Z

    move-result v0

    return v0
.end method

.method public startOrientationSensors()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/PitchHelper;->start()V

    .line 79
    return-void
.end method

.method public stopOrientationSensors()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/PitchHelper;->stop()V

    .line 88
    return-void
.end method
