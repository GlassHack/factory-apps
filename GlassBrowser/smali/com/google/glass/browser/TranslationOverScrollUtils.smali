.class final Lcom/google/glass/browser/TranslationOverScrollUtils;
.super Ljava/lang/Object;
.source "TranslationOverScrollUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method static computeTranslationOverScroll(FIIFFLcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;)V
    .locals 6
    .param p0, "delta"    # F
    .param p1, "scroll"    # I
    .param p2, "scrollRange"    # I
    .param p3, "translation"    # F
    .param p4, "maxTranslation"    # F
    .param p5, "result"    # Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-virtual {p5}, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->reset()V

    .line 42
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 86
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 47
    .local v2, "maxRightTranslation":F
    neg-float v1, v2

    .line 49
    .local v1, "maxLeftTranslation":F
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 50
    int-to-float v3, p1

    add-float v0, v3, p0

    .line 52
    .local v0, "finalScroll":F
    cmpg-float v3, v0, v5

    if-gez v3, :cond_2

    .line 53
    if-lez p1, :cond_1

    .line 54
    neg-int v3, p1

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->scrollBy:I

    .line 58
    :cond_1
    neg-float v3, p0

    iget v4, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->scrollBy:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, v2, p3

    .line 59
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    goto :goto_0

    .line 60
    :cond_2
    int-to-float v3, p2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 61
    if-ge p1, p2, :cond_3

    .line 62
    sub-int v3, p2, p1

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->scrollBy:I

    .line 66
    :cond_3
    neg-float v3, p0

    iget v4, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->scrollBy:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, v1, p3

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    goto :goto_0

    .line 69
    :cond_4
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->scrollBy:I

    goto :goto_0

    .line 71
    .end local v0    # "finalScroll":F
    :cond_5
    cmpl-float v3, p3, v5

    if-lez v3, :cond_7

    .line 72
    cmpg-float v3, p0, v5

    if-gez v3, :cond_6

    .line 73
    neg-float v3, p0

    sub-float v4, v2, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    goto :goto_0

    .line 75
    :cond_6
    neg-float v3, p0

    neg-float v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    .line 76
    sub-float v3, p0, p3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->scrollBy:I

    goto :goto_0

    .line 79
    :cond_7
    cmpl-float v3, p0, v5

    if-lez v3, :cond_8

    .line 80
    neg-float v3, p0

    sub-float v4, v1, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    goto :goto_0

    .line 82
    :cond_8
    neg-float v3, p0

    neg-float v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->translateBy:F

    .line 83
    sub-float v3, p0, p3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p5, Lcom/google/glass/browser/TranslationOverScrollUtils$TranslationScrollResult;->scrollBy:I

    goto/16 :goto_0
.end method
