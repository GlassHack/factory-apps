.class public Lcom/google/android/youtube/core/ui/TabRow;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field private final b:Z

.field private final c:Landroid/graphics/drawable/Drawable;

.field private d:Lcom/google/android/youtube/core/ui/i;

.field private e:Lcom/google/android/youtube/core/ui/j;

.field private f:I

.field private g:Z

.field private final h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v3, p0, Lcom/google/android/youtube/core/ui/TabRow;->f:I

    .line 40
    iput-boolean v4, p0, Lcom/google/android/youtube/core/ui/TabRow;->g:Z

    .line 47
    sget-object v0, Lcom/google/android/youtube/R$styleable;->TabRow:[I

    sget v1, Lcom/google/android/youtube/R$style;->TabRow:I

    invoke-virtual {p1, p2, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->h:I

    .line 49
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->b:Z

    .line 50
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->c:Landroid/graphics/drawable/Drawable;

    .line 52
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    .line 53
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 54
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/core/ui/TabRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/TabRow;->setHorizontalScrollBarEnabled(Z)V

    .line 56
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/ui/TabRow;->setFillViewport(Z)V

    .line 58
    iget-boolean v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->b:Z

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/TabRow;->setFillViewport(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->i:I

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    div-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public final a(IZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->g:Z

    if-eqz v0, :cond_1

    .line 174
    iput p1, p0, Lcom/google/android/youtube/core/ui/TabRow;->f:I

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 178
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/TabRow;->a(I)I

    move-result v4

    move v2, v1

    .line 179
    :goto_1
    if-lt v2, v3, :cond_3

    .line 182
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 185
    if-eqz p2, :cond_5

    .line 186
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->smoothScrollTo(II)V

    .line 191
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->e:Lcom/google/android/youtube/core/ui/j;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->e:Lcom/google/android/youtube/core/ui/j;

    goto :goto_0

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne v2, v4, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setSelected(Z)V

    .line 179
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 180
    goto :goto_3

    .line 188
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->scrollTo(II)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->d:Lcom/google/android/youtube/core/ui/i;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 119
    if-ltz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->d:Lcom/google/android/youtube/core/ui/i;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/ui/TabRow;->b(I)I

    .line 123
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 162
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->g:Z

    .line 164
    iget v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->f:I

    .line 165
    if-ltz v0, :cond_0

    .line 166
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->f:I

    .line 167
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->a(IZ)V

    .line 169
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getMeasuredWidth()I

    move-result v0

    .line 150
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 152
    if-ge v1, v0, :cond_0

    .line 153
    sub-int/2addr v0, v1

    .line 154
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->i:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setOnTabClickListener(Lcom/google/android/youtube/core/ui/i;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/TabRow;->d:Lcom/google/android/youtube/core/ui/i;

    .line 198
    return-void
.end method

.method public setOnTabFocusListener(Lcom/google/android/youtube/core/ui/j;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/TabRow;->e:Lcom/google/android/youtube/core/ui/j;

    .line 202
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 69
    iput p1, p0, Lcom/google/android/youtube/core/ui/TabRow;->i:I

    .line 70
    return-void
.end method
