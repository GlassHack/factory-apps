.class public Lcom/google/android/setupwizard/util/StickyHeaderScrollView;
.super Lcom/google/android/setupwizard/util/BottomScrollView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/setupwizard/util/BottomScrollView;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->c:I

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->d:Landroid/graphics/RectF;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupwizard/util/BottomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->c:I

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->d:Landroid/graphics/RectF;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupwizard/util/BottomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->c:I

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->d:Landroid/graphics/RectF;

    .line 64
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 83
    iget-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/util/BottomScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0, v2}, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 92
    invoke-super {p0, p1}, Lcom/google/android/setupwizard/util/BottomScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 96
    iget-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->b:Landroid/view/View;

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->b:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 100
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    .line 101
    add-int v5, v4, v1

    iget v6, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->c:I

    if-lt v5, v6, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_4

    .line 103
    :cond_0
    iget-object v5, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->d:Landroid/graphics/RectF;

    neg-int v6, v1

    iget v7, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->c:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int v1, v8, v1

    iget v8, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->c:I

    add-int/2addr v1, v8

    int-to-float v1, v1

    invoke-virtual {v5, v9, v6, v7, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    neg-int v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    invoke-virtual {p1, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v1, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 107
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 111
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 114
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 116
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->a:Landroid/view/View;

    goto :goto_0

    :cond_3
    move v1, v2

    .line 98
    goto :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->c:I

    .line 123
    :cond_0
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 68
    invoke-super/range {p0 .. p5}, Lcom/google/android/setupwizard/util/BottomScrollView;->onLayout(ZIIII)V

    .line 69
    iget-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "sticky"

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->a:Landroid/view/View;

    const-string v0, "stickyContainer"

    invoke-virtual {p0, v0}, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupwizard/util/StickyHeaderScrollView;->b:Landroid/view/View;

    .line 72
    :cond_0
    return-void
.end method
