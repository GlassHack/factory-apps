.class public Lcom/google/android/pano/widget/Speedbump;
.super Ljava/lang/Object;
.source "Speedbump.java"


# instance fields
.field private mBumpEnabled:Z

.field private mBumpTime:J

.field private mLife:J


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/pano/widget/Speedbump;->mBumpEnabled:Z

    return v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/pano/widget/Speedbump;->mBumpTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/pano/widget/Speedbump;->mLife:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/pano/widget/Speedbump;->mBumpEnabled:Z

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/pano/widget/Speedbump;->mBumpTime:J

    .line 40
    :cond_0
    return-void
.end method
