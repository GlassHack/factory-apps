.class public Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final durationMs:J

.field private final end:Lcom/google/android/maps/driveabout/model/ab;

.field private final firstPaintTime:J

.field private isDone:Z

.field private final start:Lcom/google/android/maps/driveabout/model/ab;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;JJ)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->start:Lcom/google/android/maps/driveabout/model/ab;

    .line 123
    iput-object p2, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->end:Lcom/google/android/maps/driveabout/model/ab;

    .line 124
    iput-wide p3, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->firstPaintTime:J

    .line 125
    iput-wide p5, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->durationMs:J

    .line 126
    return-void
.end method


# virtual methods
.method public getPosition(J)Lcom/google/android/maps/driveabout/model/ab;
    .locals 6

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->firstPaintTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 130
    if-ltz v0, :cond_0

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->durationMs:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 131
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->isDone:Z

    .line 132
    iget-object v0, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->end:Lcom/google/android/maps/driveabout/model/ab;

    .line 134
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->start:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->end:Lcom/google/android/maps/driveabout/model/ab;

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-wide v4, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->durationMs:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;F)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/google/glass/maps/map/Animations$LinearPositionAnimator;->isDone:Z

    return v0
.end method
