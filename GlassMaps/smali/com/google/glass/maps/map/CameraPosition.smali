.class public Lcom/google/glass/maps/map/CameraPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_ZOOM_LEVEL:I = 0x15

.field public static final MIN_ZOOM_LEVEL:I = 0x2


# instance fields
.field private final mBearing:F

.field private final mLookAhead:F

.field private final mTarget:Lcom/google/android/maps/driveabout/model/ab;

.field private final mViewingAngle:F

.field private final mZoom:F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ab;FFFF)V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mTarget:Lcom/google/android/maps/driveabout/model/ab;

    .line 74
    const/high16 v0, 0x41a80000    # 21.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mZoom:F

    .line 75
    iput p3, p0, Lcom/google/glass/maps/map/CameraPosition;->mViewingAngle:F

    .line 76
    iput p4, p0, Lcom/google/glass/maps/map/CameraPosition;->mBearing:F

    .line 77
    iput p5, p0, Lcom/google/glass/maps/map/CameraPosition;->mLookAhead:F

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/model/m;FFFF)V
    .locals 6

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->b(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/CameraPosition;-><init>(Lcom/google/android/maps/driveabout/model/ab;FFFF)V

    .line 88
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-ne p0, p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    instance-of v2, p1, Lcom/google/glass/maps/map/CameraPosition;

    if-eqz v2, :cond_3

    .line 97
    check-cast p1, Lcom/google/glass/maps/map/CameraPosition;

    .line 98
    iget-object v2, p0, Lcom/google/glass/maps/map/CameraPosition;->mTarget:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v3, p1, Lcom/google/glass/maps/map/CameraPosition;->mTarget:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/glass/maps/map/CameraPosition;->mZoom:F

    iget v3, p1, Lcom/google/glass/maps/map/CameraPosition;->mZoom:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/glass/maps/map/CameraPosition;->mViewingAngle:F

    iget v3, p1, Lcom/google/glass/maps/map/CameraPosition;->mViewingAngle:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/glass/maps/map/CameraPosition;->mBearing:F

    iget v3, p1, Lcom/google/glass/maps/map/CameraPosition;->mBearing:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/glass/maps/map/CameraPosition;->mLookAhead:F

    iget v3, p1, Lcom/google/glass/maps/map/CameraPosition;->mLookAhead:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mBearing:F

    return v0
.end method

.method public getLookAhead()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mLookAhead:F

    return v0
.end method

.method public getTarget()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mTarget:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method public getViewingAngle()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mViewingAngle:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mZoom:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 109
    .line 111
    iget v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mZoom:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    .line 112
    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/glass/maps/map/CameraPosition;->mBearing:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/glass/maps/map/CameraPosition;->mViewingAngle:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/glass/maps/map/CameraPosition;->mLookAhead:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mTarget:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 116
    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mTarget:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/maps/map/CameraPosition;->mTarget:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/maps/map/CameraPosition;->mZoom:F

    iget v2, p0, Lcom/google/glass/maps/map/CameraPosition;->mViewingAngle:F

    iget v3, p0, Lcom/google/glass/maps/map/CameraPosition;->mBearing:F

    iget v4, p0, Lcom/google/glass/maps/map/CameraPosition;->mLookAhead:F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x6d

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "[target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " zoom:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewingAngle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bearing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lookAhead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
