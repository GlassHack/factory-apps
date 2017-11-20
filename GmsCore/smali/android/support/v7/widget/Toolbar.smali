.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final A:Landroid/support/v7/widget/k;

.field private B:Landroid/support/v7/internal/widget/ap;

.field private C:Landroid/support/v7/widget/ActionMenuPresenter;

.field private D:Landroid/support/v7/widget/cz;

.field private E:Landroid/support/v7/internal/view/menu/z;

.field private F:Landroid/support/v7/internal/view/menu/k;

.field private G:Z

.field private final H:Ljava/lang/Runnable;

.field a:Landroid/view/View;

.field private b:Landroid/support/v7/widget/ActionMenuView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/content/Context;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private final s:Landroid/support/v7/internal/widget/ab;

.field private t:I

.field private u:Ljava/lang/CharSequence;

.field private v:Ljava/lang/CharSequence;

.field private w:I

.field private x:I

.field private final y:Ljava/util/ArrayList;

.field private final z:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 182
    sget v0, Landroid/support/v7/b/b;->r:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/high16 v7, -0x80000000

    const/4 v6, 0x0

    .line 186
    sget-object v0, Landroid/support/v7/b/j;->bm:[I

    invoke-virtual {p1, p2, v0, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Landroid/support/v7/b/j;->bA:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    new-instance v0, Landroid/support/v7/internal/widget/ab;

    invoke-direct {v0}, Landroid/support/v7/internal/widget/ab;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    .line 137
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->t:I

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:[I

    .line 152
    new-instance v0, Landroid/support/v7/widget/cw;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cw;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/support/v7/widget/k;

    .line 171
    new-instance v0, Landroid/support/v7/widget/cx;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cx;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Ljava/lang/Runnable;

    .line 189
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/b/j;->bm:[I

    invoke-virtual {v0, p2, v1, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 192
    sget v1, Landroid/support/v7/b/j;->bH:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->k:I

    .line 193
    sget v1, Landroid/support/v7/b/j;->bz:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->l:I

    .line 194
    sget v1, Landroid/support/v7/b/j;->bn:I

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->t:I

    .line 195
    sget v1, Landroid/support/v7/b/j;->bo:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->m:I

    .line 196
    sget v1, Landroid/support/v7/b/j;->bG:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->r:I

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->q:I

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->p:I

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->o:I

    .line 199
    sget v1, Landroid/support/v7/b/j;->bE:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 200
    if-ltz v1, :cond_1

    .line 201
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->o:I

    .line 204
    :cond_1
    sget v1, Landroid/support/v7/b/j;->bD:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 205
    if-ltz v1, :cond_2

    .line 206
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->p:I

    .line 209
    :cond_2
    sget v1, Landroid/support/v7/b/j;->bF:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 210
    if-ltz v1, :cond_3

    .line 211
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->q:I

    .line 214
    :cond_3
    sget v1, Landroid/support/v7/b/j;->bC:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 216
    if-ltz v1, :cond_4

    .line 217
    iput v1, p0, Landroid/support/v7/widget/Toolbar;->r:I

    .line 220
    :cond_4
    sget v1, Landroid/support/v7/b/j;->bu:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/Toolbar;->n:I

    .line 222
    sget v1, Landroid/support/v7/b/j;->bt:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 225
    sget v2, Landroid/support/v7/b/j;->bq:I

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 228
    sget v3, Landroid/support/v7/b/j;->br:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 230
    sget v4, Landroid/support/v7/b/j;->bs:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 233
    iget-object v5, p0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    iput-boolean v6, v5, Landroid/support/v7/internal/widget/ab;->h:Z

    if-eq v3, v7, :cond_5

    iput v3, v5, Landroid/support/v7/internal/widget/ab;->e:I

    iput v3, v5, Landroid/support/v7/internal/widget/ab;->a:I

    :cond_5
    if-eq v4, v7, :cond_6

    iput v4, v5, Landroid/support/v7/internal/widget/ab;->f:I

    iput v4, v5, Landroid/support/v7/internal/widget/ab;->b:I

    .line 235
    :cond_6
    if-ne v1, v7, :cond_7

    if-eq v2, v7, :cond_8

    .line 237
    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/internal/widget/ab;->a(II)V

    .line 240
    :cond_8
    sget v1, Landroid/support/v7/b/j;->bp:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;

    .line 242
    sget v1, Landroid/support/v7/b/j;->bB:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 244
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    .line 247
    :cond_9
    sget v1, Landroid/support/v7/b/j;->by:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 248
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 249
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 252
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    .line 253
    sget v1, Landroid/support/v7/b/j;->bx:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(I)V

    .line 255
    sget v1, Landroid/support/v7/b/j;->bw:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_b

    .line 257
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_b
    sget v1, Landroid/support/v7/b/j;->bv:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 261
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    .line 263
    :cond_c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    return-void
.end method

.method private a(Landroid/view/View;IIII[I)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1077
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1079
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    aget v2, p6, v5

    sub-int/2addr v1, v2

    .line 1080
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    aget v3, p6, v6

    sub-int/2addr v2, v3

    .line 1081
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1082
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1083
    add-int/2addr v3, v4

    .line 1084
    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v5

    .line 1085
    neg-int v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v6

    .line 1087
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1089
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v0}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1093
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1094
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method

.method private a(Landroid/view/View;I[I)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1469
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/da;

    .line 1470
    iget v1, v0, Landroid/support/v7/widget/da;->leftMargin:I

    aget v2, p3, v3

    sub-int/2addr v1, v2

    .line 1471
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, p2

    .line 1472
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v3

    .line 1473
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    .line 1474
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1475
    add-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1476
    iget v0, v0, Landroid/support/v7/widget/da;->rightMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 1477
    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/Toolbar;)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/b/b;->q:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/support/v7/widget/da;

    invoke-direct {v0}, Landroid/support/v7/widget/da;-><init>()V

    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->m:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/da;->a:I

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/da;->b:I

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    new-instance v1, Landroid/support/v7/widget/cy;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/cy;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/da;

    iget v0, v0, Landroid/support/v7/widget/da;->b:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eq v4, v0, :cond_0

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1003
    new-instance v0, Landroid/support/v7/widget/da;

    invoke-direct {v0}, Landroid/support/v7/widget/da;-><init>()V

    .line 1005
    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/da;->b:I

    .line 1006
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    return-void
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1052
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1054
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1057
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v0}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1061
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1062
    if-eq v2, v4, :cond_1

    if-ltz p5, :cond_1

    .line 1063
    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1066
    :cond_0
    invoke-static {p5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1068
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1069
    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1543
    invoke-static {p0}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1544
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 1545
    invoke-static {p0}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v3

    invoke-static {p2, v3}, Landroid/support/v4/view/v;->a(II)I

    move-result v3

    .line 1548
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1550
    if-eqz v0, :cond_2

    .line 1551
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 1552
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1553
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/da;

    .line 1554
    iget v4, v0, Landroid/support/v7/widget/da;->b:I

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Landroid/support/v7/widget/da;->a:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1556
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1551
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1543
    goto :goto_0

    .line 1560
    :cond_2
    :goto_2
    if-ge v1, v2, :cond_4

    .line 1561
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1562
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/da;

    .line 1563
    iget v5, v0, Landroid/support/v7/widget/da;->b:I

    if-nez v5, :cond_3

    invoke-direct {p0, v4}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v0, v0, Landroid/support/v7/widget/da;->a:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1565
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1560
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1569
    :cond_4
    return-void
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 1572
    invoke-static {p0}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v1

    .line 1573
    invoke-static {p1, v1}, Landroid/support/v4/view/v;->a(II)I

    move-result v0

    .line 1574
    and-int/lit8 v0, v0, 0x7

    .line 1575
    packed-switch v0, :pswitch_data_0

    .line 1581
    :pswitch_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    :pswitch_1
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 1575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/view/View;)I
    .locals 7

    .prologue
    .line 1493
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/da;

    .line 1494
    iget v1, v0, Landroid/support/v7/widget/da;->a:I

    and-int/lit8 v1, v1, 0x70

    sparse-switch v1, :sswitch_data_0

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->t:I

    and-int/lit8 v1, v1, 0x70

    :sswitch_0
    sparse-switch v1, :sswitch_data_1

    .line 1504
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    .line 1505
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    .line 1506
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v4

    .line 1507
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1508
    sub-int v1, v4, v2

    sub-int/2addr v1, v3

    .line 1509
    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    .line 1510
    iget v6, v0, Landroid/support/v7/widget/da;->topMargin:I

    if-ge v1, v6, :cond_0

    .line 1511
    iget v0, v0, Landroid/support/v7/widget/da;->topMargin:I

    .line 1519
    :goto_0
    add-int/2addr v0, v2

    :goto_1
    return v0

    .line 1496
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    goto :goto_1

    .line 1499
    :sswitch_2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/da;->bottomMargin:I

    sub-int v0, v1, v0

    goto :goto_1

    .line 1513
    :cond_0
    sub-int v3, v4, v3

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    .line 1515
    iget v4, v0, Landroid/support/v7/widget/da;->bottomMargin:I

    if-ge v3, v4, :cond_1

    .line 1516
    const/4 v4, 0x0

    iget v0, v0, Landroid/support/v7/widget/da;->bottomMargin:I

    sub-int/2addr v0, v3

    sub-int v0, v1, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1494
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private b(Landroid/view/View;I[I)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1481
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/da;

    .line 1482
    iget v1, v0, Landroid/support/v7/widget/da;->rightMargin:I

    aget v2, p3, v4

    sub-int/2addr v1, v2

    .line 1483
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, p2, v2

    .line 1484
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v4

    .line 1485
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    .line 1486
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1487
    sub-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1488
    iget v0, v0, Landroid/support/v7/widget/da;->leftMargin:I

    add-int/2addr v0, v3

    sub-int v0, v2, v0

    .line 1489
    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/Toolbar;)I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->m:I

    return v0
.end method

.method private c(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1586
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1590
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1591
    invoke-static {v0}, Landroid/support/v4/view/ae;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    invoke-static {v0}, Landroid/support/v4/view/ae;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method private static e(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1596
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1597
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private f(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/da;

    .line 1653
    iget v0, v0, Landroid/support/v7/widget/da;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eq p1, v0, :cond_0

    .line 1654
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1656
    :cond_0
    return-void

    .line 1654
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static l()Landroid/support/v7/widget/da;
    .locals 1

    .prologue
    .line 1620
    new-instance v0, Landroid/support/v7/widget/da;

    invoke-direct {v0}, Landroid/support/v7/widget/da;-><init>()V

    return-object v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 975
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 976
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/b/b;->q:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    .line 978
    new-instance v0, Landroid/support/v7/widget/da;

    invoke-direct {v0}, Landroid/support/v7/widget/da;-><init>()V

    .line 979
    const v1, 0x800003

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->m:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/da;->a:I

    .line 980
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 982
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->j:I

    if-eq v0, p1, :cond_0

    .line 275
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->j:I

    .line 276
    if-nez p1, :cond_1

    .line 277
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/internal/widget/ab;->a(II)V

    .line 876
    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 642
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->k:I

    .line 643
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 646
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 426
    if-eqz p1, :cond_3

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    .line 428
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->f(Landroid/view/View;)V

    .line 435
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    :cond_2
    return-void

    .line 432
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 353
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_2

    new-instance v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->j:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/support/v7/widget/k;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/widget/k;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->E:Landroid/support/v7/internal/view/menu/z;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->F:Landroid/support/v7/internal/view/menu/k;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/internal/view/menu/z;Landroid/support/v7/internal/view/menu/k;)V

    new-instance v0, Landroid/support/v7/widget/da;

    invoke-direct {v0}, Landroid/support/v7/widget/da;-><init>()V

    const v1, 0x800005

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->m:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/da;->a:I

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    .line 358
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->c()Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    .line 359
    if-eq v0, p1, :cond_0

    .line 363
    if-eqz v0, :cond_3

    .line 364
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->C:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Landroid/support/v7/internal/view/menu/y;)V

    .line 365
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Landroid/support/v7/internal/view/menu/y;)V

    .line 368
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    if-nez v0, :cond_4

    .line 369
    new-instance v0, Landroid/support/v7/widget/cz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/cz;-><init>(Landroid/support/v7/widget/Toolbar;B)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    .line 372
    :cond_4
    iput-boolean v3, p2, Landroid/support/v7/widget/ActionMenuPresenter;->q:Z

    .line 373
    if-eqz p1, :cond_5

    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/y;Landroid/content/Context;)V

    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/y;Landroid/content/Context;)V

    .line 382
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->j:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->a(I)V

    .line 383
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 384
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->C:Landroid/support/v7/widget/ActionMenuPresenter;

    goto :goto_0

    .line 377
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    invoke-virtual {p2, v0, v4}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;)V

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->i:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/cz;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;)V

    .line 379
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Z)V

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/cz;->a(Z)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 787
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->n()V

    .line 788
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 558
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 559
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 560
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 561
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 562
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 563
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->k:I

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->k:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 566
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->w:I

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->w:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 570
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->f(Landroid/view/View;)V

    .line 577
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    :cond_3
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->u:Ljava/lang/CharSequence;

    .line 581
    return-void

    .line 574
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 1664
    iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar;->G:Z

    .line 1665
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1666
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 653
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->l:I

    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 657
    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 753
    if-eqz p1, :cond_2

    .line 754
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->n()V

    .line 755
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    .line 757
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->f(Landroid/view/View;)V

    .line 762
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 765
    :cond_1
    return-void

    .line 759
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 611
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 612
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 613
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 614
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    .line 615
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 616
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 617
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->l:I

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/Toolbar;->l:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 620
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->x:I

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 624
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 625
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)V

    .line 626
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->f(Landroid/view/View;)V

    .line 631
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 632
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_3
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->v:Ljava/lang/CharSequence;

    .line 635
    return-void

    .line 628
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 629
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 716
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->n()V

    .line 719
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 722
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1625
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/da;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->h()V

    .line 394
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Landroid/support/v7/widget/da;

    invoke-direct {v0}, Landroid/support/v7/widget/da;-><init>()V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/support/v7/widget/da;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/da;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 104
    instance-of v0, p1, Landroid/support/v7/widget/da;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/da;

    check-cast p1, Landroid/support/v7/widget/da;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/da;-><init>(Landroid/support/v7/widget/da;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/support/v7/a/b;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/da;

    check-cast p1, Landroid/support/v7/a/b;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/da;-><init>(Landroid/support/v7/a/b;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v7/widget/da;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/da;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v7/widget/da;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/da;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 522
    :goto_0
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->collapseActionView()Z

    .line 525
    :cond_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    goto :goto_0
.end method

.method public final i()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->u:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final j()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->v:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final k()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Landroid/support/v7/internal/widget/w;
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->B:Landroid/support/v7/internal/widget/ap;

    if-nez v0, :cond_0

    .line 1635
    new-instance v0, Landroid/support/v7/internal/widget/ap;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ap;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->B:Landroid/support/v7/internal/widget/ap;

    .line 1637
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->B:Landroid/support/v7/internal/widget/ap;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1046
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1047
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1048
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    .prologue
    .line 1252
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    move v3, v1

    .line 1253
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v10

    .line 1254
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v11

    .line 1255
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v4

    .line 1256
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v12

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v13

    .line 1258
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v14

    .line 1260
    sub-int v1, v10, v12

    .line 1262
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->z:[I

    .line 1263
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v15, v5

    aput v6, v15, v2

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1266
    if-eqz v3, :cond_9

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v1, v15}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[I)I

    move-result v1

    move v2, v4

    .line 1273
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1274
    if-eqz v3, :cond_a

    .line 1275
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1, v15}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[I)I

    move-result v1

    .line 1281
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1282
    if-eqz v3, :cond_b

    .line 1283
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v15}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[I)I

    move-result v2

    .line 1289
    :cond_1
    :goto_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    iget v7, v7, Landroid/support/v7/internal/widget/ab;->a:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v15, v5

    .line 1290
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    iget v7, v7, Landroid/support/v7/internal/widget/ab;->b:I

    sub-int v8, v10, v12

    sub-int/2addr v8, v1

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v15, v5

    .line 1291
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    iget v5, v5, Landroid/support/v7/internal/widget/ab;->a:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1292
    sub-int v5, v10, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    iget v6, v6, Landroid/support/v7/internal/widget/ab;->b:I

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1294
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1295
    if-eqz v3, :cond_c

    .line 1296
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1, v15}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[I)I

    move-result v1

    .line 1302
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1303
    if-eqz v3, :cond_d

    .line 1304
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1, v15}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[I)I

    move-result v1

    move v5, v1

    move v6, v2

    .line 1310
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v16

    .line 1311
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v17

    .line 1312
    const/4 v2, 0x0

    .line 1313
    if-eqz v16, :cond_3

    .line 1314
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/da;

    .line 1315
    iget v2, v1, Landroid/support/v7/widget/da;->topMargin:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    iget v1, v1, Landroid/support/v7/widget/da;->bottomMargin:I

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x0

    .line 1317
    :cond_3
    if-eqz v17, :cond_21

    .line 1318
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/da;

    .line 1319
    iget v7, v1, Landroid/support/v7/widget/da;->topMargin:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v1, v1, Landroid/support/v7/widget/da;->bottomMargin:I

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    move v9, v1

    .line 1322
    :goto_6
    if-nez v16, :cond_4

    if-eqz v17, :cond_7

    .line 1324
    :cond_4
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    move-object v7, v1

    .line 1325
    :goto_7
    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    move-object v2, v1

    .line 1326
    :goto_8
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/da;

    .line 1327
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/da;

    .line 1328
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-gtz v7, :cond_6

    :cond_5
    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_10

    :cond_6
    const/4 v7, 0x1

    .line 1331
    :goto_9
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/Toolbar;->t:I

    and-int/lit8 v8, v8, 0x70

    sparse-switch v8, :sswitch_data_0

    .line 1337
    sub-int v8, v11, v13

    sub-int/2addr v8, v14

    .line 1338
    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 1339
    iget v0, v1, Landroid/support/v7/widget/da;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->q:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    if-ge v8, v0, :cond_11

    .line 1340
    iget v1, v1, Landroid/support/v7/widget/da;->topMargin:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->q:I

    add-int/2addr v1, v2

    .line 1349
    :goto_a
    add-int v8, v13, v1

    .line 1356
    :goto_b
    if-eqz v3, :cond_13

    .line 1357
    if-eqz v7, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/Toolbar;->o:I

    :goto_c
    const/4 v2, 0x1

    aget v2, v15, v2

    sub-int/2addr v1, v2

    .line 1358
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v5, v2

    .line 1359
    const/4 v3, 0x1

    const/4 v5, 0x0

    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v15, v3

    .line 1363
    if-eqz v16, :cond_1f

    .line 1364
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/da;

    .line 1365
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    .line 1366
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 1367
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v9, v3, v8, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1368
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/Toolbar;->p:I

    sub-int/2addr v3, v8

    .line 1369
    iget v1, v1, Landroid/support/v7/widget/da;->bottomMargin:I

    add-int v8, v5, v1

    move v5, v3

    .line 1371
    :goto_d
    if-eqz v17, :cond_1e

    .line 1372
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/da;

    .line 1373
    iget v3, v1, Landroid/support/v7/widget/da;->topMargin:I

    add-int/2addr v3, v8

    .line 1374
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v2, v8

    .line 1375
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    .line 1376
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v11, v8, v3, v2, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 1377
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->p:I

    sub-int v3, v2, v3

    .line 1378
    iget v1, v1, Landroid/support/v7/widget/da;->bottomMargin:I

    move v1, v3

    .line 1380
    :goto_e
    if-eqz v7, :cond_1d

    .line 1381
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_f
    move v5, v1

    .line 1416
    :cond_7
    :goto_10
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1418
    const/4 v1, 0x0

    move v2, v1

    move v3, v6

    :goto_11
    if-ge v2, v7, :cond_15

    .line 1419
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v15}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[I)I

    move-result v3

    .line 1418
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_11

    .line 1252
    :cond_8
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_0

    .line 1269
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v15}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[I)I

    move-result v2

    goto/16 :goto_1

    .line 1277
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v15}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[I)I

    move-result v2

    goto/16 :goto_2

    .line 1285
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v1, v15}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[I)I

    move-result v1

    goto/16 :goto_3

    .line 1298
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v15}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[I)I

    move-result v2

    goto/16 :goto_4

    .line 1306
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v15}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[I)I

    move-result v2

    move v5, v1

    move v6, v2

    goto/16 :goto_5

    .line 1324
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    move-object v7, v1

    goto/16 :goto_7

    .line 1325
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    move-object v2, v1

    goto/16 :goto_8

    .line 1328
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 1333
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v2

    iget v1, v1, Landroid/support/v7/widget/da;->topMargin:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->q:I

    add-int v8, v1, v2

    .line 1334
    goto/16 :goto_b

    .line 1342
    :cond_11
    sub-int/2addr v11, v14

    sub-int v9, v11, v9

    sub-int/2addr v9, v8

    sub-int/2addr v9, v13

    .line 1344
    iget v1, v1, Landroid/support/v7/widget/da;->bottomMargin:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/Toolbar;->r:I

    add-int/2addr v1, v11

    if-ge v9, v1, :cond_20

    .line 1345
    const/4 v1, 0x0

    iget v2, v2, Landroid/support/v7/widget/da;->bottomMargin:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/Toolbar;->r:I

    add-int/2addr v2, v11

    sub-int/2addr v2, v9

    sub-int v2, v8, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_a

    .line 1352
    :sswitch_1
    sub-int v1, v11, v14

    iget v2, v2, Landroid/support/v7/widget/da;->bottomMargin:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->r:I

    sub-int/2addr v1, v2

    sub-int v8, v1, v9

    goto/16 :goto_b

    .line 1357
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_c

    .line 1384
    :cond_13
    if-eqz v7, :cond_14

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/Toolbar;->o:I

    :goto_12
    const/4 v2, 0x0

    aget v2, v15, v2

    sub-int/2addr v1, v2

    .line 1385
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v6, v2

    .line 1386
    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v15, v2

    .line 1390
    if-eqz v16, :cond_1c

    .line 1391
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/da;

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v6

    .line 1393
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 1394
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v9, v6, v8, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1395
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/Toolbar;->p:I

    add-int/2addr v2, v8

    .line 1396
    iget v1, v1, Landroid/support/v7/widget/da;->bottomMargin:I

    add-int/2addr v1, v3

    move v3, v2

    move v2, v1

    .line 1398
    :goto_13
    if-eqz v17, :cond_1b

    .line 1399
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/da;

    .line 1400
    iget v8, v1, Landroid/support/v7/widget/da;->topMargin:I

    add-int/2addr v2, v8

    .line 1401
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    .line 1402
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    .line 1403
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v11, v6, v2, v8, v9}, Landroid/widget/TextView;->layout(IIII)V

    .line 1404
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->p:I

    add-int/2addr v2, v8

    .line 1405
    iget v1, v1, Landroid/support/v7/widget/da;->bottomMargin:I

    move v1, v2

    .line 1407
    :goto_14
    if-eqz v7, :cond_7

    .line 1408
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_10

    .line 1384
    :cond_14
    const/4 v1, 0x0

    goto :goto_12

    .line 1422
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1424
    const/4 v1, 0x0

    move v2, v1

    move v9, v5

    :goto_15
    if-ge v2, v6, :cond_16

    .line 1425
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9, v15}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[I)I

    move-result v5

    .line 1424
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v9, v5

    goto :goto_15

    .line 1430
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    const/4 v1, 0x0

    aget v6, v15, v1

    const/4 v1, 0x1

    aget v5, v15, v1

    const/4 v2, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v1, 0x0

    move v7, v5

    move v8, v6

    move v5, v1

    move v6, v2

    :goto_16
    if-ge v5, v13, :cond_17

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/da;

    iget v14, v2, Landroid/support/v7/widget/da;->leftMargin:I

    sub-int v8, v14, v8

    iget v2, v2, Landroid/support/v7/widget/da;->rightMargin:I

    sub-int/2addr v2, v7

    const/4 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/4 v7, 0x0

    neg-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v7, 0x0

    neg-int v2, v2

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v14

    add-int v1, v1, v16

    add-int v2, v6, v1

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v6, v2

    goto :goto_16

    .line 1432
    :cond_17
    sub-int v1, v10, v4

    sub-int/2addr v1, v12

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    .line 1433
    div-int/lit8 v2, v6, 0x2

    .line 1434
    sub-int/2addr v1, v2

    .line 1435
    add-int v2, v1, v6

    .line 1436
    if-ge v1, v3, :cond_19

    move v1, v3

    .line 1442
    :cond_18
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1443
    const/4 v2, 0x0

    move v3, v1

    :goto_18
    if-ge v2, v4, :cond_1a

    .line 1444
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v15}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[I)I

    move-result v3

    .line 1443
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_18

    .line 1438
    :cond_19
    if-le v2, v9, :cond_18

    .line 1439
    sub-int/2addr v2, v9

    sub-int/2addr v1, v2

    goto :goto_17

    .line 1446
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1447
    return-void

    :cond_1b
    move v1, v6

    goto/16 :goto_14

    :cond_1c
    move v3, v6

    move v2, v8

    goto/16 :goto_13

    :cond_1d
    move v1, v2

    goto/16 :goto_f

    :cond_1e
    move v1, v2

    goto/16 :goto_e

    :cond_1f
    move v5, v2

    goto/16 :goto_d

    :cond_20
    move v1, v8

    goto/16 :goto_a

    :cond_21
    move v9, v2

    goto/16 :goto_6

    :cond_22
    move v5, v1

    move v6, v2

    goto/16 :goto_5

    :cond_23
    move v2, v4

    goto/16 :goto_1

    .line 1331
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 17

    .prologue
    .line 1116
    const/4 v4, 0x0

    .line 1118
    const/4 v3, 0x0

    .line 1120
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->z:[I

    .line 1123
    invoke-static/range {p0 .. p0}, Landroid/support/v7/internal/widget/at;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1124
    const/4 v2, 0x1

    .line 1125
    const/4 v1, 0x0

    move v8, v1

    move v9, v2

    .line 1133
    :goto_0
    const/4 v1, 0x0

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/Toolbar;->n:I

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-static {v4}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageButton;

    invoke-static {v2}, Landroid/support/v4/view/ax;->i(Landroid/view/View;)I

    move-result v2

    or-int/lit8 v2, v2, 0x0

    move v10, v2

    move v11, v3

    .line 1144
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/Toolbar;->n:I

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-static {v3}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-static {v2}, Landroid/support/v4/view/ax;->i(Landroid/view/View;)I

    move-result v2

    or-int/2addr v10, v2

    .line 1155
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    iget-boolean v3, v2, Landroid/support/v7/internal/widget/ab;->g:Z

    if-eqz v3, :cond_5

    iget v2, v2, Landroid/support/v7/internal/widget/ab;->b:I

    .line 1156
    :goto_2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v3, 0x0

    .line 1157
    const/4 v3, 0x0

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v7, v9

    .line 1159
    const/4 v1, 0x0

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/Toolbar;->n:I

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v3}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v2}, Landroid/support/v4/view/ax;->i(Landroid/view/View;)I

    move-result v2

    or-int/2addr v10, v2

    .line 1170
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    iget-boolean v3, v2, Landroid/support/v7/internal/widget/ab;->g:Z

    if-eqz v3, :cond_6

    iget v2, v2, Landroid/support/v7/internal/widget/ab;->a:I

    .line 1171
    :goto_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v4, v3

    .line 1172
    const/4 v3, 0x0

    sub-int v1, v2, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v7, v8

    .line 1174
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v1

    add-int/2addr v4, v1

    .line 1177
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1179
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ax;->i(Landroid/view/View;)I

    move-result v1

    or-int/2addr v10, v1

    .line 1183
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v1

    add-int/2addr v4, v1

    .line 1186
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1188
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->f:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/support/v4/view/ax;->i(Landroid/view/View;)I

    move-result v1

    or-int/2addr v10, v1

    .line 1192
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v9

    .line 1193
    const/4 v1, 0x0

    move v8, v1

    move v15, v10

    move/from16 v16, v11

    :goto_4
    if-ge v8, v9, :cond_7

    .line 1194
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1195
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/da;

    .line 1196
    iget v1, v1, Landroid/support/v7/widget/da;->b:I

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1198
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v1

    add-int/2addr v4, v1

    .line 1203
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    move/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1204
    invoke-static {v2}, Landroid/support/v4/view/ax;->i(Landroid/view/View;)I

    move-result v1

    or-int/2addr v1, v15

    move v2, v3

    .line 1193
    :goto_5
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v15, v1

    move/from16 v16, v2

    goto :goto_4

    .line 1127
    :cond_4
    const/4 v2, 0x0

    .line 1128
    const/4 v1, 0x1

    move v8, v1

    move v9, v2

    goto/16 :goto_0

    .line 1155
    :cond_5
    iget v2, v2, Landroid/support/v7/internal/widget/ab;->a:I

    goto/16 :goto_2

    .line 1170
    :cond_6
    iget v2, v2, Landroid/support/v7/internal/widget/ab;->b:I

    goto/16 :goto_3

    .line 1208
    :cond_7
    const/4 v2, 0x0

    .line 1209
    const/4 v1, 0x0

    .line 1210
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->q:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/Toolbar;->r:I

    add-int v13, v3, v5

    .line 1211
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/Toolbar;->o:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/Toolbar;->p:I

    add-int/2addr v3, v5

    .line 1212
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1213
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    add-int v11, v4, v3

    move-object/from16 v8, p0

    move/from16 v10, p1

    move/from16 v12, p2

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    .line 1216
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 1217
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    .line 1218
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/view/ax;->i(Landroid/view/View;)I

    move-result v5

    or-int/2addr v15, v5

    .line 1221
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1222
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    add-int v11, v4, v3

    add-int/2addr v13, v1

    move-object/from16 v8, p0

    move/from16 v10, p1

    move/from16 v12, p2

    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1226
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v7/widget/Toolbar;->e(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 1228
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/support/v4/view/ax;->i(Landroid/view/View;)I

    move-result v3

    or-int/2addr v15, v3

    .line 1232
    :cond_9
    add-int/2addr v2, v4

    .line 1233
    move/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1237
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v15

    move/from16 v0, p1

    invoke-static {v2, v0, v3}, Landroid/support/v4/view/ax;->a(III)I

    move-result v3

    .line 1243
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v2, v15, 0x10

    move/from16 v0, p2

    invoke-static {v1, v0, v2}, Landroid/support/v4/view/ax;->a(III)I

    move-result v1

    .line 1247
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/Toolbar;->G:Z

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_a

    const/4 v1, 0x0

    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1248
    return-void

    .line 1247
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-lez v6, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_c

    const/4 v2, 0x0

    goto :goto_6

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v2, 0x1

    goto :goto_6

    :cond_e
    move v1, v15

    move/from16 v2, v16

    goto/16 :goto_5

    :cond_f
    move v10, v3

    move v11, v4

    goto/16 :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1023
    check-cast p1, Landroid/support/v7/widget/Toolbar$SavedState;

    .line 1024
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1026
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->b:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->c()Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    .line 1027
    :goto_0
    iget v1, p1, Landroid/support/v7/widget/Toolbar$SavedState;->a:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1028
    iget v1, p1, Landroid/support/v7/widget/Toolbar$SavedState;->a:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1029
    if-eqz v0, :cond_0

    .line 1030
    invoke-static {v0}, Landroid/support/v4/view/ai;->b(Landroid/view/MenuItem;)Z

    .line 1034
    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/widget/Toolbar$SavedState;->b:Z

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1037
    :cond_1
    return-void

    .line 1026
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/high16 v3, -0x80000000

    .line 294
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 295
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 297
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->s:Landroid/support/v7/internal/widget/ab;

    if-ne p1, v0, :cond_2

    :goto_0
    iget-boolean v2, v1, Landroid/support/v7/internal/widget/ab;->g:Z

    if-eq v0, v2, :cond_1

    iput-boolean v0, v1, Landroid/support/v7/internal/widget/ab;->g:Z

    iget-boolean v2, v1, Landroid/support/v7/internal/widget/ab;->h:Z

    if-eqz v2, :cond_8

    if-eqz v0, :cond_5

    iget v0, v1, Landroid/support/v7/internal/widget/ab;->d:I

    if-eq v0, v3, :cond_3

    iget v0, v1, Landroid/support/v7/internal/widget/ab;->d:I

    :goto_1
    iput v0, v1, Landroid/support/v7/internal/widget/ab;->a:I

    iget v0, v1, Landroid/support/v7/internal/widget/ab;->c:I

    if-eq v0, v3, :cond_4

    iget v0, v1, Landroid/support/v7/internal/widget/ab;->c:I

    :goto_2
    iput v0, v1, Landroid/support/v7/internal/widget/ab;->b:I

    .line 298
    :cond_1
    :goto_3
    return-void

    .line 297
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v0, v1, Landroid/support/v7/internal/widget/ab;->e:I

    goto :goto_1

    :cond_4
    iget v0, v1, Landroid/support/v7/internal/widget/ab;->f:I

    goto :goto_2

    :cond_5
    iget v0, v1, Landroid/support/v7/internal/widget/ab;->c:I

    if-eq v0, v3, :cond_6

    iget v0, v1, Landroid/support/v7/internal/widget/ab;->c:I

    :goto_4
    iput v0, v1, Landroid/support/v7/internal/widget/ab;->a:I

    iget v0, v1, Landroid/support/v7/internal/widget/ab;->d:I

    if-eq v0, v3, :cond_7

    iget v0, v1, Landroid/support/v7/internal/widget/ab;->d:I

    :goto_5
    iput v0, v1, Landroid/support/v7/internal/widget/ab;->b:I

    goto :goto_3

    :cond_6
    iget v0, v1, Landroid/support/v7/internal/widget/ab;->e:I

    goto :goto_4

    :cond_7
    iget v0, v1, Landroid/support/v7/internal/widget/ab;->f:I

    goto :goto_5

    :cond_8
    iget v0, v1, Landroid/support/v7/internal/widget/ab;->e:I

    iput v0, v1, Landroid/support/v7/internal/widget/ab;->a:I

    iget v0, v1, Landroid/support/v7/internal/widget/ab;->f:I

    iput v0, v1, Landroid/support/v7/internal/widget/ab;->b:I

    goto :goto_3
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1011
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1013
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    iget-object v1, v1, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->D:Landroid/support/v7/widget/cz;

    iget-object v1, v1, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/n;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->a:I

    .line 1017
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->b:Z

    .line 1018
    return-object v0
.end method
