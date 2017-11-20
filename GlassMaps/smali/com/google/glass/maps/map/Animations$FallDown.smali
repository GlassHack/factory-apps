.class public Lcom/google/glass/maps/map/Animations$FallDown;
.super Lcom/google/glass/maps/map/Animations$MarkerAnimation;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/Animations$MarkerAnimation;-><init>(J)V

    .line 100
    return-void
.end method


# virtual methods
.method public getScale(J)F
    .locals 3

    .prologue
    .line 104
    sget v0, Lcom/google/glass/maps/map/Animations$FallDown;->TOTAL_TIME:I

    iget-wide v1, p0, Lcom/google/glass/maps/map/Animations$FallDown;->startTime:J

    sub-long v1, p1, v1

    long-to-int v1, v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 105
    if-ltz v0, :cond_0

    sget v1, Lcom/google/glass/maps/map/Animations$FallDown;->TOTAL_TIME:I

    if-lt v0, v1, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/google/glass/maps/map/Animations$FallDown;->SCALE:[F

    shr-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    goto :goto_0
.end method
