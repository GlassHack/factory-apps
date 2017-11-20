.class public Lcom/google/glass/input/HeadScrollDetector;
.super Ljava/lang/Object;
.source "HeadScrollDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;
    }
.end annotation


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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/glass/input/HeadScrollDetector$1;

    invoke-direct {v0, p0}, Lcom/google/glass/input/HeadScrollDetector$1;-><init>(Lcom/google/glass/input/HeadScrollDetector;)V

    iput-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchListener:Lcom/google/glass/input/PitchHelper$PitchListener;

    .line 72
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;

    iput-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->listener:Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;

    .line 73
    new-instance v0, Lcom/google/glass/input/PitchHelper;

    iget-object v1, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchListener:Lcom/google/glass/input/PitchHelper$PitchListener;

    invoke-direct {v0, p1, v1}, Lcom/google/glass/input/PitchHelper;-><init>(Landroid/content/Context;Lcom/google/glass/input/PitchHelper$PitchListener;)V

    iput-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/input/HeadScrollDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/input/HeadScrollDetector;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/glass/input/HeadScrollDetector;->hasPitch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/input/HeadScrollDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/input/HeadScrollDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/google/glass/input/HeadScrollDetector;->hasPitch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/input/HeadScrollDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/input/HeadScrollDetector;

    .prologue
    .line 15
    iget v0, p0, Lcom/google/glass/input/HeadScrollDetector;->lastPitch:F

    return v0
.end method

.method static synthetic access$102(Lcom/google/glass/input/HeadScrollDetector;F)F
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/input/HeadScrollDetector;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/google/glass/input/HeadScrollDetector;->lastPitch:F

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/input/HeadScrollDetector;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/input/HeadScrollDetector;
    .param p1, "x1"    # F

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/glass/input/HeadScrollDetector;->handleHeadScroll(F)V

    return-void
.end method

.method private dispatchVerticalHeadScroll(F)V
    .locals 1
    .param p1, "delta"    # F

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->listener:Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;

    invoke-interface {v0, p1}, Lcom/google/glass/input/HeadScrollDetector$HeadScrollListener;->onVerticalHeadScroll(F)Z

    .line 91
    return-void
.end method

.method private handleHeadScroll(F)V
    .locals 6
    .param p1, "deltaY"    # F

    .prologue
    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 95
    .local v0, "currentTimeMillis":J
    iget-wide v2, p0, Lcom/google/glass/input/HeadScrollDetector;->lastHeadScrollTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/glass/input/HeadScrollDetector;->lastHeadScrollTimeMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 102
    iget v2, p0, Lcom/google/glass/input/HeadScrollDetector;->accumulatedPitchDelta:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/google/glass/input/HeadScrollDetector;->accumulatedPitchDelta:F

    .line 103
    iget v2, p0, Lcom/google/glass/input/HeadScrollDetector;->numPitchAccumulations:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/input/HeadScrollDetector;->numPitchAccumulations:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 105
    iget v2, p0, Lcom/google/glass/input/HeadScrollDetector;->accumulatedPitchDelta:F

    invoke-direct {p0, v2}, Lcom/google/glass/input/HeadScrollDetector;->dispatchVerticalHeadScroll(F)V

    .line 106
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/input/HeadScrollDetector;->accumulatedPitchDelta:F

    .line 111
    :cond_0
    iput-wide v0, p0, Lcom/google/glass/input/HeadScrollDetector;->lastHeadScrollTimeMillis:J

    .line 112
    return-void
.end method


# virtual methods
.method public areOrientationSensorsStarted()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/PitchHelper;->isStarted()Z

    move-result v0

    return v0
.end method

.method public startOrientationSensors()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/PitchHelper;->start()V

    .line 78
    return-void
.end method

.method public stopOrientationSensors()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector;->pitchHelper:Lcom/google/glass/input/PitchHelper;

    invoke-virtual {v0}, Lcom/google/glass/input/PitchHelper;->stop()V

    .line 87
    return-void
.end method
