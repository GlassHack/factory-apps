.class public Lcom/google/glass/maps/map/Animations$PopUp;
.super Lcom/google/glass/maps/map/Animations$MarkerAnimation;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/glass/maps/map/Animations$MarkerAnimation;-><init>(J)V

    .line 83
    return-void
.end method


# virtual methods
.method public getScale(J)F
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/glass/maps/map/Animations$PopUp;->startTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 88
    if-ltz v0, :cond_0

    sget v1, Lcom/google/glass/maps/map/Animations$PopUp;->TOTAL_TIME:I

    if-lt v0, v1, :cond_1

    .line 89
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 91
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/google/glass/maps/map/Animations$PopUp;->SCALE:[F

    shr-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    goto :goto_0
.end method
