.class public Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private firstPaintTime:J

.field private isDone:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpacity(J)F
    .locals 4

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;->firstPaintTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 20
    iput-wide p1, p0, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;->firstPaintTime:J

    .line 21
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;->firstPaintTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 24
    if-ltz v0, :cond_1

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_2

    .line 25
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;->isDone:Z

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 28
    :cond_2
    int-to-float v0, v0

    const v1, 0x3b03126f    # 0.002f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/glass/maps/map/Animations$HalfSecondFadeIn;->isDone:Z

    return v0
.end method
