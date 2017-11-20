.class public abstract Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:Landroid/widget/Scroller;

.field private g:Landroid/view/VelocityTracker;

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Lcom/google/android/youtube/core/ui/b;

.field private s:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c:Z

    .line 53
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    .line 64
    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    .line 66
    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->l:Z

    .line 74
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    .line 742
    new-instance v0, Lcom/google/android/youtube/core/ui/a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/ui/a;-><init>(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a:Ljava/lang/Runnable;

    .line 123
    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b:I

    .line 125
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHapticFeedbackEnabled(Z)V

    .line 126
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHorizontalFadingEdgeEnabled(Z)V

    .line 129
    sget-object v0, Lcom/google/android/youtube/R$styleable;->Workspace:[I

    sget v1, Lcom/google/android/youtube/R$style;->Workspace:I

    invoke-virtual {p1, p2, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->values()[Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    move-result-object v1

    .line 131
    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 130
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setInteractionMode(Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;)V

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a()V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    return v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    .line 142
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b:I

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    .line 144
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->m:I

    .line 148
    const/16 v1, 0x32

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->n:I

    .line 149
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->o:I

    .line 150
    return-void
.end method

.method private a(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 698
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 700
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    sub-int v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 702
    iput v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    .line 704
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 705
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 706
    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 707
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c()I

    move-result v1

    mul-int v3, v4, v1

    .line 711
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v1

    .line 712
    sub-int/2addr v3, v1

    .line 714
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->s:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    iget-boolean v5, v5, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->enableSmoothScroll:Z

    if-eqz v5, :cond_5

    .line 715
    mul-int/lit16 v0, v0, 0x12c

    .line 716
    if-nez v0, :cond_1

    .line 717
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 719
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->awakenScrollBars(I)Z

    move v5, v0

    .line 722
    :goto_0
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    iget v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-eq v0, v6, :cond_2

    .line 724
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 728
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 729
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a:Ljava/lang/Runnable;

    add-int/lit8 v6, v5, 0xa

    int-to-long v6, v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 732
    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(I)V

    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->r:Lcom/google/android/youtube/core/ui/b;

    if-eqz v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->r:Lcom/google/android/youtube/core/ui/b;

    .line 737
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 738
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 739
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->invalidate()V

    .line 740
    return-void

    :cond_5
    move v5, v2

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 563
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 564
    iget v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    if-ne v1, v2, :cond_0

    .line 568
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 569
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->h:F

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    .line 570
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->j:F

    .line 571
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    .line 572
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 576
    :cond_0
    return-void

    .line 568
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()I
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 210
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 212
    :cond_0
    return v0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getWidth()I

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    :cond_0
    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c()I

    move-result v0

    .line 684
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    .line 686
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d(I)V

    .line 687
    return-void
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 690
    sget-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->FLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V

    .line 691
    return-void
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2

    .prologue
    .line 401
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    .line 402
    if-nez v0, :cond_1

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tab index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 407
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 408
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-lez v0, :cond_0

    .line 409
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 411
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 412
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 413
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 159
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 165
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 166
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 178
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 183
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void
.end method

.method final b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected final c(I)V
    .locals 1

    .prologue
    .line 694
    sget-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->TAP:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V

    .line 695
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollTo(II)V

    .line 255
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->postInvalidate()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    if-eq v0, v3, :cond_0

    .line 257
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    .line 258
    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->r:Lcom/google/android/youtube/core/ui/b;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->r:Lcom/google/android/youtube/core/ui/b;

    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 267
    .line 275
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move v1, v2

    .line 277
    :goto_0
    if-eqz v1, :cond_2

    .line 278
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 298
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v0

    .line 275
    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getDrawingTime()J

    move-result-wide v3

    .line 282
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 283
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    iget v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 284
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 285
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v1

    .line 289
    :goto_2
    if-ge v0, v1, :cond_0

    .line 290
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 385
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 386
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-lez v1, :cond_1

    .line 387
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d(I)V

    .line 396
    :goto_0
    return v0

    .line 390
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 391
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 392
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d(I)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 427
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    .line 430
    :goto_0
    if-ne v0, v1, :cond_1

    .line 431
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 441
    :cond_0
    return-void

    .line 434
    :cond_1
    if-eq v0, p0, :cond_0

    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 438
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->s:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;->enableFling:Z

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return v1

    .line 473
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 474
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    if-eqz v3, :cond_2

    move v1, v2

    .line 475
    goto :goto_0

    .line 478
    :cond_2
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 557
    :cond_3
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 489
    :pswitch_1
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 490
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 491
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 492
    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    sub-float v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    .line 493
    iget v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->j:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 495
    iget v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->m:I

    .line 496
    iget v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->n:I

    if-le v3, v4, :cond_6

    move v4, v2

    .line 497
    :goto_2
    if-le v3, v6, :cond_7

    move v3, v2

    .line 498
    :goto_3
    if-le v0, v6, :cond_8

    move v0, v2

    .line 500
    :goto_4
    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    .line 502
    :cond_4
    if-eqz v4, :cond_5

    .line 504
    iput v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    .line 505
    iput v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    .line 508
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->l:Z

    if-eqz v0, :cond_3

    .line 509
    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->l:Z

    .line 513
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    :cond_6
    move v4, v1

    .line 496
    goto :goto_2

    :cond_7
    move v3, v1

    .line 497
    goto :goto_3

    :cond_8
    move v0, v1

    .line 498
    goto :goto_4

    .line 521
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 524
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->h:F

    .line 525
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    .line 526
    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->j:F

    .line 527
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    .line 528
    iput-boolean v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->l:Z

    .line 535
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_5
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_5

    .line 542
    :pswitch_3
    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    .line 543
    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->l:Z

    .line 544
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    goto :goto_1

    .line 549
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 346
    .line 347
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    .line 348
    :goto_0
    if-lt v1, v3, :cond_0

    .line 356
    return-void

    .line 349
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 350
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 351
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 352
    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 353
    add-int/2addr v0, v5

    .line 348
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 309
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 311
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 312
    if-eq v0, v2, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 317
    if-eq v0, v2, :cond_1

    .line 318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v2

    move v0, v1

    .line 323
    :goto_0
    if-lt v0, v2, :cond_4

    .line 332
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c:Z

    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHorizontalScrollBarEnabled(Z)V

    .line 334
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 335
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 336
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 338
    :cond_2
    iget v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollTo(II)V

    .line 339
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHorizontalScrollBarEnabled(Z)V

    .line 340
    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c:Z

    .line 342
    :cond_3
    return-void

    .line 324
    :cond_4
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    and-int/lit8 v3, v0, 0x1

    if-ne v3, v5, :cond_5

    .line 326
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    .line 323
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 372
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->e:I

    .line 376
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 380
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 759
    check-cast p1, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;

    .line 760
    invoke-virtual {p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 761
    iget v0, p1, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->a:I

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    .line 762
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 763
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    .line 765
    :cond_1
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(I)V

    .line 766
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 752
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 753
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    iput v1, v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->a:I

    .line 754
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 303
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setCurrentScreen(I)V

    .line 304
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(I)V

    .line 305
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 590
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 596
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 679
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 602
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 607
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->h:F

    .line 608
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    goto :goto_0

    .line 612
    :pswitch_2
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    if-ne v0, v1, :cond_1

    .line 614
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 615
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 616
    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 617
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->i:F

    .line 619
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v0

    .line 620
    if-gez v3, :cond_3

    .line 621
    if-lez v0, :cond_1

    .line 622
    neg-int v0, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollBy(II)V

    goto :goto_0

    .line 624
    :cond_3
    if-lez v3, :cond_4

    .line 625
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v0, v4, v0

    .line 626
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getWidth()I

    move-result v4

    .line 625
    sub-int/2addr v0, v4

    .line 627
    if-lez v0, :cond_1

    .line 628
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollBy(II)V

    goto :goto_0

    .line 631
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->awakenScrollBars()Z

    goto :goto_0

    .line 637
    :pswitch_3
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    if-ne v0, v1, :cond_5

    .line 638
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    .line 639
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 640
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 641
    iget-object v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    .line 642
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->o:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 643
    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    .line 644
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->h:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    move v0, v1

    .line 646
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getWidth()I

    move-result v3

    .line 647
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v5

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    div-int v3, v5, v3

    .line 649
    if-eqz v0, :cond_7

    const/16 v5, 0x1f4

    if-le v4, v5, :cond_7

    iget v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-lez v5, :cond_7

    .line 651
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d(I)V

    .line 660
    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    .line 661
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->g:Landroid/view/VelocityTracker;

    .line 665
    :cond_5
    iput v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    .line 666
    iput v7, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 644
    goto :goto_1

    .line 652
    :cond_7
    if-eqz v0, :cond_8

    const/16 v0, -0x1f4

    if-ge v4, v0, :cond_8

    .line 653
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_8

    .line 655
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d(I)V

    goto :goto_2

    .line 657
    :cond_8
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d()V

    goto :goto_2

    .line 670
    :pswitch_4
    iput v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->k:I

    .line 671
    iput v7, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->p:I

    goto/16 :goto_0

    .line 675
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 580
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 581
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 582
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d(I)V

    .line 585
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 361
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d(I)V

    .line 363
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentScreen(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    .line 233
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->d:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->c()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollTo(II)V

    .line 234
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->a(I)V

    .line 235
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->invalidate()V

    .line 236
    return-void
.end method

.method public setInteractionMode(Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->s:Lcom/google/android/youtube/core/ui/AbstractWorkspace$InteractionMode;

    .line 454
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b()I

    move-result v1

    .line 246
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 249
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTabSelectedListener(Lcom/google/android/youtube/core/ui/b;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->r:Lcom/google/android/youtube/core/ui/b;

    .line 188
    return-void
.end method

.method public setSeparator(I)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 840
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    .line 843
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v0

    .line 844
    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-gtz v0, :cond_1

    .line 847
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->requestLayout()V

    .line 875
    :cond_0
    :goto_1
    return-void

    .line 845
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->removeViewAt(I)V

    .line 844
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 848
    :cond_2
    if-eqz p1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 852
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v2

    .line 854
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    move v1, v0

    .line 855
    :goto_2
    if-lt v0, v2, :cond_3

    .line 864
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->requestLayout()V

    goto :goto_1

    .line 856
    :cond_3
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 857
    iget-object v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    .line 859
    const/4 v6, -0x1

    .line 858
    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 860
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    invoke-virtual {p0, v3, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->addView(Landroid/view/View;I)V

    .line 862
    add-int/lit8 v1, v1, 0x2

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 867
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    .line 868
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v0

    .line 869
    add-int/lit8 v0, v0, -0x2

    :goto_3
    if-gtz v0, :cond_5

    .line 872
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->requestLayout()V

    goto :goto_1

    .line 870
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 869
    add-int/lit8 v0, v0, -0x2

    goto :goto_3
.end method
