.class public Landroid/support/v7/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Z

.field e:Z

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-static {}, Landroid/support/v7/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/internal/widget/f;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/f;-><init>(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    sget-object v0, Landroid/support/v7/b/j;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    sget v3, Landroid/support/v7/b/j;->d:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    .line 65
    sget v3, Landroid/support/v7/b/j;->f:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    .line 67
    sget v3, Landroid/support/v7/b/j;->l:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:I

    .line 69
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    sget v4, Landroid/support/v7/b/e;->u:I

    if-ne v3, v4, :cond_0

    .line 70
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    .line 71
    sget v3, Landroid/support/v7/b/j;->e:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 77
    return-void

    .line 57
    :cond_1
    new-instance v0, Landroid/support/v7/internal/widget/e;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/e;-><init>(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 75
    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    return-object v0
.end method

.method public final a(Landroid/support/v7/internal/widget/ac;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 212
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    .line 213
    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 215
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ac;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 216
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 217
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ac;->a(Z)V

    .line 220
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 190
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Z

    .line 191
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 193
    return-void

    .line 191
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 156
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 159
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 162
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 165
    :cond_2
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 169
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 170
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 176
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 180
    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 82
    sget v0, Landroid/support/v7/b/e;->a:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    .line 83
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onLayout(ZIIII)V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 264
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 266
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    .line 267
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_3

    move v2, v1

    .line 269
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    .line 271
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 272
    sub-int v5, v4, v5

    invoke-virtual {v3, p2, v5, p4, v4}, Landroid/view/View;->layout(IIII)V

    .line 276
    :cond_0
    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-eqz v4, :cond_4

    .line 277
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move v0, v1

    .line 295
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V

    .line 298
    :cond_2
    return-void

    :cond_3
    move v2, v0

    .line 267
    goto :goto_0

    .line 282
    :cond_4
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 283
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move v0, v1

    .line 287
    :cond_5
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Z

    .line 288
    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 289
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move v0, v1

    .line 291
    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 238
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:I

    if-ltz v0, :cond_0

    .line 240
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->i:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 243
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 245
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    if-nez v0, :cond_2

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 248
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_5

    move v0, v1

    .line 251
    :goto_2
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 252
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 253
    if-ne v1, v4, :cond_1

    .line 254
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 255
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 248
    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public setVisibility(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 141
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 142
    :goto_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 143
    :cond_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 144
    :cond_1
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 145
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
