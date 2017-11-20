.class public Lcom/google/glass/voice/menu/OverscrollView;
.super Landroid/widget/ScrollView;
.source "OverscrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/OverscrollView$OverscrollViewListener;
    }
.end annotation


# static fields
.field private static final OVERSCROLL_AMOUNT:F = 0.49f


# instance fields
.field private item:F

.field private itemSnapAnimator:Landroid/animation/ValueAnimator;

.field private listener:Lcom/google/glass/voice/menu/OverscrollView$OverscrollViewListener;

.field private shouldHighlightSelectedItem:Z

.field private shouldOverscroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->itemSnapAnimator:Landroid/animation/ValueAnimator;

    .line 44
    iget-object v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->itemSnapAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    iget-object v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->itemSnapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 46
    iget-object v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->itemSnapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/glass/voice/menu/OverscrollView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/menu/OverscrollView$1;-><init>(Lcom/google/glass/voice/menu/OverscrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/menu/OverscrollView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/menu/OverscrollView;
    .param p1, "x1"    # F

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/OverscrollView;->setItem(F)V

    return-void
.end method

.method private getItemHeight()F
    .locals 4

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getNumberOfItems()I

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 115
    :goto_0
    return v1

    .line 113
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 114
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getNumberOfItems()I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v1, v2

    .line 115
    .local v1, "height":F
    goto :goto_0
.end method

.method private getMaxScrollY()I
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getNumberOfItems()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 98
    :goto_0
    return v1

    .line 96
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 97
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 98
    .local v1, "numberOfItems":I
    goto :goto_0
.end method

.method private hasItems()Z
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getNumberOfItems()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOverscrolledDown()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getNumberOfItems()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOverscrolledUp()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setItem(F)V
    .locals 8
    .param p1, "newItem"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getItem()I

    move-result v2

    .line 150
    .local v2, "previouslySelectedItem":I
    iput p1, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    .line 151
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getItem()I

    move-result v1

    .line 153
    .local v1, "newlySelected":I
    iget v4, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getItemHeight()F

    move-result v5

    mul-float v3, v4, v5

    .line 154
    .local v3, "scrollY":F
    cmpg-float v4, v3, v7

    if-gez v4, :cond_2

    .line 157
    invoke-virtual {p0, v6, v6}, Lcom/google/glass/voice/menu/OverscrollView;->scrollTo(II)V

    .line 158
    neg-float v4, v3

    invoke-direct {p0, v4}, Lcom/google/glass/voice/menu/OverscrollView;->translateChildY(F)V

    .line 176
    :goto_0
    if-eq v1, v2, :cond_0

    .line 177
    iget-object v4, p0, Lcom/google/glass/voice/menu/OverscrollView;->listener:Lcom/google/glass/voice/menu/OverscrollView$OverscrollViewListener;

    if-eqz v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/google/glass/voice/menu/OverscrollView;->listener:Lcom/google/glass/voice/menu/OverscrollView$OverscrollViewListener;

    invoke-interface {v4, v1}, Lcom/google/glass/voice/menu/OverscrollView$OverscrollViewListener;->onSelectedItemChanged(I)V

    .line 182
    :cond_0
    iget-boolean v4, p0, Lcom/google/glass/voice/menu/OverscrollView;->shouldHighlightSelectedItem:Z

    if-eqz v4, :cond_1

    if-eq v1, v2, :cond_1

    .line 183
    invoke-virtual {p0, v6}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setSelected(Z)V

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 187
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getMaxScrollY()I

    move-result v4

    if-gez v4, :cond_3

    .line 162
    invoke-virtual {p0, v6, v6}, Lcom/google/glass/voice/menu/OverscrollView;->scrollTo(II)V

    .line 163
    neg-float v4, v3

    invoke-direct {p0, v4}, Lcom/google/glass/voice/menu/OverscrollView;->translateChildY(F)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getMaxScrollY()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    .line 167
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getMaxScrollY()I

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/google/glass/voice/menu/OverscrollView;->scrollTo(II)V

    .line 168
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getMaxScrollY()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v3, v4

    neg-float v4, v4

    invoke-direct {p0, v4}, Lcom/google/glass/voice/menu/OverscrollView;->translateChildY(F)V

    goto :goto_0

    .line 172
    :cond_4
    invoke-direct {p0, v7}, Lcom/google/glass/voice/menu/OverscrollView;->translateChildY(F)V

    .line 173
    float-to-int v4, v3

    invoke-virtual {p0, v6, v4}, Lcom/google/glass/voice/menu/OverscrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method private translateChildY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    return-void
.end method


# virtual methods
.method public getItem()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public isOverscrolled()Z
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->isOverscrolledUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->isOverscrolledDown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollByItem(F)V
    .locals 3
    .param p1, "deltaItem"    # F

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->hasItems()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->itemSnapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "amountOfOverscroll":F
    iget v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 231
    iget v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    neg-float v0, v1

    .line 235
    :cond_2
    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3efae148    # 0.49f

    div-float v2, v0, v2

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    .line 237
    iget v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/menu/OverscrollView;->scrollToItem(F)V

    goto :goto_0

    .line 232
    :cond_3
    iget v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getNumberOfItems()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 233
    iget v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getNumberOfItems()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float v0, v1, v2

    goto :goto_1
.end method

.method public scrollToItem(F)V
    .locals 4
    .param p1, "newItem"    # F

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->hasItems()Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->shouldOverscroll:Z

    if-eqz v1, :cond_2

    .line 200
    const v1, -0x41051eb8    # -0.49f

    .line 201
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getNumberOfItems()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const v3, 0x3efae148    # 0.49f

    add-float/2addr v2, v3

    .line 200
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 215
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/OverscrollView;->setItem(F)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getItemHeight()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getItemHeight()F

    move-result v2

    div-float v0, v1, v2

    .line 213
    .local v0, "viewHeightInItems":F
    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getNumberOfItems()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 212
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1
.end method

.method public setListener(Lcom/google/glass/voice/menu/OverscrollView$OverscrollViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/voice/menu/OverscrollView$OverscrollViewListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/glass/voice/menu/OverscrollView;->listener:Lcom/google/glass/voice/menu/OverscrollView$OverscrollViewListener;

    .line 56
    return-void
.end method

.method public setShouldHighlightSelectedItem(Z)V
    .locals 5
    .param p1, "shouldHighlightSelectedItem"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    iget-boolean v2, p0, Lcom/google/glass/voice/menu/OverscrollView;->shouldHighlightSelectedItem:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 69
    invoke-virtual {p0, v3}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 70
    .local v0, "container":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/OverscrollView;->getItem()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 77
    .end local v0    # "container":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1
    if-nez p1, :cond_2

    .line 80
    invoke-virtual {p0, v3}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    .restart local v0    # "container":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    .end local v0    # "container":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_2
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/OverscrollView;->shouldHighlightSelectedItem:Z

    .line 86
    return-void
.end method

.method public setShouldOverscroll(Z)V
    .locals 0
    .param p1, "shouldOverscroll"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/OverscrollView;->shouldOverscroll:Z

    .line 61
    return-void
.end method

.method public snapToNearest()V
    .locals 5

    .prologue
    .line 132
    iget-object v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->itemSnapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 133
    iget v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 134
    .local v0, "nearest":I
    iget-object v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->itemSnapAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/glass/voice/menu/OverscrollView;->item:F

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, v0

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 135
    iget-object v1, p0, Lcom/google/glass/voice/menu/OverscrollView;->itemSnapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 136
    return-void
.end method
