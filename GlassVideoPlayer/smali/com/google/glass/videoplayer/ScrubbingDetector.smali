.class public Lcom/google/glass/videoplayer/ScrubbingDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;
.implements Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;
.implements Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;


# static fields
.field private static final SCRUBBING_THRESHOLD_MS:I = 0x32

.field private static final TOUCH_GAIN_CONTROL:F = 0.5f


# instance fields
.field private final detector:Lcom/google/android/glass/touchpad/GestureDetector;

.field private lastScrubMs:J

.field private listener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

.field private scrubbing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-direct {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->detector:Lcom/google/android/glass/touchpad/GestureDetector;

    .line 39
    iget-object v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->detector:Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-virtual {v0, p0}, Lcom/google/android/glass/touchpad/GestureDetector;->setBaseListener(Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Lcom/google/android/glass/touchpad/GestureDetector;->setFingerListener(Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    .line 41
    return-void
.end method


# virtual methods
.method public isScrubbing()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->scrubbing:Z

    return v0
.end method

.method public onEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->detector:Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFingerCountChanged(II)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->listener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 96
    iget-boolean v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->scrubbing:Z

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->scrubbing:Z

    .line 98
    iget-object v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->listener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

    invoke-interface {v0}, Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;->onScrubbingEnd()V

    goto :goto_0
.end method

.method public onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->listener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    sget-object v1, Lcom/google/android/glass/touchpad/Gesture;->TAP:Lcom/google/android/glass/touchpad/Gesture;

    if-ne p1, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->listener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

    invoke-interface {v0}, Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;->onTap()Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll(FFF)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->listener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

    if-nez v1, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 78
    iget-boolean v3, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->scrubbing:Z

    if-nez v3, :cond_2

    .line 79
    iput-boolean v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->scrubbing:Z

    .line 80
    iget-object v3, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->listener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

    invoke-interface {v3}, Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;->onScrubbingStart()V

    .line 81
    iput-wide v1, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->lastScrubMs:J

    goto :goto_0

    .line 82
    :cond_2
    iget-wide v3, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->lastScrubMs:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x32

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->listener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, p1

    invoke-interface {v0, v3}, Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;->onScrubbing(F)Z

    move-result v0

    .line 84
    iput-wide v1, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->lastScrubMs:J

    goto :goto_0
.end method

.method public setListener(Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/videoplayer/ScrubbingDetector;->listener:Lcom/google/glass/videoplayer/ScrubbingDetector$Listener;

    .line 45
    return-void
.end method
