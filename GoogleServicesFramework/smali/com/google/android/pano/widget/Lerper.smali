.class public final Lcom/google/android/pano/widget/Lerper;
.super Ljava/lang/Object;
.source "Lerper.java"


# instance fields
.field private mDivisor:F

.field private mMinDelta:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/pano/widget/Lerper;->mMinDelta:F

    return-void
.end method


# virtual methods
.method public getValue(FF)F
    .locals 3
    .param p1, "currentValue"    # F
    .param p2, "targetValue"    # F

    .prologue
    .line 59
    sub-float v0, p2, p1

    .line 61
    .local v0, "delta":F
    iget v2, p0, Lcom/google/android/pano/widget/Lerper;->mMinDelta:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 63
    iget v2, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    div-float/2addr v0, v2

    .line 64
    add-float v1, p1, v0

    .line 65
    .local v1, "retValue":F
    cmpl-float v2, v1, p2

    if-lez v2, :cond_0

    .line 66
    move v1, p2

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 68
    .end local v1    # "retValue":F
    :cond_1
    iget v2, p0, Lcom/google/android/pano/widget/Lerper;->mMinDelta:F

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 70
    iget v2, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    div-float/2addr v0, v2

    .line 71
    add-float v1, p1, v0

    .line 72
    .restart local v1    # "retValue":F
    cmpg-float v2, v1, p2

    if-gez v2, :cond_0

    .line 73
    move v1, p2

    goto :goto_0

    .line 76
    .end local v1    # "retValue":F
    :cond_2
    move v1, p2

    .restart local v1    # "retValue":F
    goto :goto_0
.end method

.method public setDivisor(F)V
    .locals 2
    .param p1, "divisor"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 17
    :cond_0
    iput p1, p0, Lcom/google/android/pano/widget/Lerper;->mDivisor:F

    .line 18
    div-float v0, v1, p1

    iput v0, p0, Lcom/google/android/pano/widget/Lerper;->mMinDelta:F

    .line 19
    return-void
.end method
