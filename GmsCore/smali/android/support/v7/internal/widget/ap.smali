.class public final Landroid/support/v7/internal/widget/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/w;


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field b:Ljava/lang/CharSequence;

.field c:Landroid/support/v7/internal/a/a;

.field d:Z

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Ljava/lang/CharSequence;

.field private m:Landroid/support/v7/widget/ActionMenuPresenter;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v1, p0, Landroid/support/v7/internal/widget/ap;->n:I

    .line 85
    iput-object p1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    .line 87
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->i()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ap;->b:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->j()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ap;->l:Ljava/lang/CharSequence;

    .line 89
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ap;->k:Z

    .line 91
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/b/j;->a:[I

    sget v4, Landroid/support/v7/b/b;->c:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    sget v2, Landroid/support/v7/b/j;->t:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 96
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ap;->b(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    sget v2, Landroid/support/v7/b/j;->r:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 101
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    iput-object v2, p0, Landroid/support/v7/internal/widget/ap;->l:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/support/v7/internal/widget/ap;->e:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    sget v2, Landroid/support/v7/b/j;->p:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    iput-object v2, p0, Landroid/support/v7/internal/widget/ap;->i:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ap;->q()V

    .line 110
    :cond_2
    sget v2, Landroid/support/v7/b/j;->o:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_3

    .line 112
    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/ap;->a(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_3
    sget v2, Landroid/support/v7/b/j;->n:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_4

    .line 117
    iput-object v2, p0, Landroid/support/v7/internal/widget/ap;->j:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/internal/widget/ap;->e:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_4
    sget v2, Landroid/support/v7/b/j;->j:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ap;->b(I)V

    .line 122
    sget v2, Landroid/support/v7/b/j;->i:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 124
    if-eqz v2, :cond_7

    .line 125
    iget-object v3, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/widget/ap;->g:Landroid/view/View;

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/support/v7/internal/widget/ap;->e:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ap;->g:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :cond_5
    iput-object v2, p0, Landroid/support/v7/internal/widget/ap;->g:Landroid/view/View;

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/support/v7/internal/widget/ap;->e:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ap;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 127
    :cond_6
    iget v2, p0, Landroid/support/v7/internal/widget/ap;->e:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ap;->b(I)V

    .line 130
    :cond_7
    sget v2, Landroid/support/v7/b/j;->l:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    .line 131
    if-lez v2, :cond_8

    .line 132
    iget-object v3, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 133
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    iget-object v2, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    :cond_8
    sget v2, Landroid/support/v7/b/j;->h:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 139
    sget v3, Landroid/support/v7/b/j;->g:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 141
    if-gez v2, :cond_9

    if-ltz v3, :cond_a

    .line 142
    :cond_9
    iget-object v4, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/Toolbar;->a(II)V

    .line 146
    :cond_a
    sget v2, Landroid/support/v7/b/j;->u:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 147
    if-eqz v2, :cond_b

    .line 148
    iget-object v3, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 151
    :cond_b
    sget v2, Landroid/support/v7/b/j;->s:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 153
    if-eqz v2, :cond_c

    .line 154
    iget-object v3, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/content/Context;I)V

    .line 157
    :cond_c
    sget v2, Landroid/support/v7/b/j;->q:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 158
    if-eqz v1, :cond_d

    .line 159
    iget-object v2, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->a(I)V

    .line 162
    :cond_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->k()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/b/h;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    .line 172
    :cond_e
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/internal/widget/aq;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/aq;-><init>(Landroid/support/v7/internal/widget/ap;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View$OnClickListener;)V

    .line 182
    return-void

    :cond_f
    move v0, v1

    .line 89
    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Landroid/support/v7/internal/widget/ap;->h:Landroid/graphics/drawable/Drawable;

    .line 311
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ap;->q()V

    .line 312
    return-void
.end method

.method private c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 243
    iput-object p1, p0, Landroid/support/v7/internal/widget/ap;->b:Ljava/lang/CharSequence;

    .line 244
    iget v0, p0, Landroid/support/v7/internal/widget/ap;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    iget v1, p0, Landroid/support/v7/internal/widget/ap;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 328
    iget v0, p0, Landroid/support/v7/internal/widget/ap;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->i:Landroid/graphics/drawable/Drawable;

    .line 334
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 335
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-static {v0, v1}, Landroid/support/v4/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ap;->a(Landroid/graphics/drawable/Drawable;)V

    .line 306
    return-void
.end method

.method public final a(Landroid/support/v7/internal/a/a;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Landroid/support/v7/internal/widget/ap;->c:Landroid/support/v7/internal/a/a;

    .line 221
    return-void
.end method

.method public final a(Landroid/support/v7/internal/widget/ac;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 427
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 428
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 430
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/view/View;

    .line 431
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ap;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 432
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 433
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/da;

    .line 434
    iput v3, v0, Landroid/support/v7/widget/da;->width:I

    .line 435
    iput v3, v0, Landroid/support/v7/widget/da;->height:I

    .line 436
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/da;->a:I

    .line 437
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ac;->a(Z)V

    .line 439
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/z;)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ap;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 371
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v1, Landroid/support/v7/b/e;->g:I

    iput v1, v0, Landroid/support/v7/internal/view/menu/e;->h:I

    .line 373
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    iput-object p2, v0, Landroid/support/v7/internal/view/menu/e;->f:Landroid/support/v7/internal/view/menu/z;

    .line 374
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/internal/view/menu/j;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->m:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/internal/view/menu/j;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 375
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ap;->k:Z

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ap;->c(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->a(Z)V

    .line 454
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 389
    iget v0, p0, Landroid/support/v7/internal/widget/ap;->e:I

    .line 390
    xor-int/2addr v0, p1

    .line 391
    iput p1, p0, Landroid/support/v7/internal/widget/ap;->e:I

    .line 392
    if-eqz v0, :cond_3

    .line 393
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 394
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 395
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ap;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 402
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ap;->q()V

    .line 405
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 406
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 407
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ap;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ap;->l:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 415
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->g:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 416
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 417
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 423
    :cond_3
    :goto_2
    return-void

    .line 397
    :cond_4
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 410
    :cond_5
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 419
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ap;->k:Z

    .line 239
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ap;->c(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method

.method public final c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 561
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 562
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/cb;->a(F)Landroid/support/v4/view/cb;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/ar;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ar;-><init>(Landroid/support/v7/internal/widget/ap;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    if-nez p1, :cond_0

    .line 578
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/cb;->a(F)Landroid/support/v4/view/cb;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/as;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/as;-><init>(Landroid/support/v7/internal/widget/ap;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()V

    .line 216
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ap;->d:Z

    .line 365
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    .line 380
    return-void
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Landroid/support/v7/internal/widget/ap;->e:I

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Landroid/support/v7/internal/widget/ap;->n:I

    return v0
.end method
