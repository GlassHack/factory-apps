.class public Landroid/support/v7/internal/widget/ActionBarContextView;
.super Landroid/support/v7/internal/widget/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/co;


# instance fields
.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:I

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Z

.field private t:I

.field private u:Landroid/support/v7/internal/view/h;

.field private v:Z

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 75
    sget v0, Landroid/support/v7/b/b;->j:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    sget-object v0, Landroid/support/v7/b/j;->y:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    sget v1, Landroid/support/v7/b/j;->z:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    sget v1, Landroid/support/v7/b/j;->E:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:I

    .line 86
    sget v1, Landroid/support/v7/b/j;->D:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:I

    .line 89
    sget v1, Landroid/support/v7/b/j;->C:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:I

    .line 92
    sget v1, Landroid/support/v7/b/j;->A:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->r:Landroid/graphics/drawable/Drawable;

    .line 95
    sget v1, Landroid/support/v7/b/j;->B:I

    sget v2, Landroid/support/v7/b/g;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->t:I

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 184
    sget v3, Landroid/support/v7/b/g;->a:I

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    .line 186
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/b/e;->e:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/b/e;->d:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    .line 188
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:I

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->p:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 191
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:I

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->q:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 196
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 200
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 201
    :goto_1
    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    move v3, v2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v4, v2

    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 204
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 206
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 199
    goto :goto_0

    :cond_6
    move v1, v2

    .line 200
    goto :goto_1

    :cond_7
    move v3, v4

    .line 201
    goto :goto_2
.end method

.method private h()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->u:Landroid/support/v7/internal/view/h;

    .line 274
    if-eqz v0, :cond_0

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->u:Landroid/support/v7/internal/view/h;

    .line 276
    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    .line 278
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:I

    .line 146
    return-void
.end method

.method public final a(Landroid/support/v7/c/a;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 209
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v0, :cond_2

    .line 210
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 211
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->t:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 212
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 217
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    sget v1, Landroid/support/v7/b/e;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 218
    new-instance v1, Landroid/support/v7/internal/widget/g;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/g;-><init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/c/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {p1}, Landroid/support/v7/c/a;->a()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/j;

    .line 225
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->e()Z

    .line 228
    :cond_1
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 229
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    iput-boolean v4, v1, Landroid/support/v7/widget/ActionMenuPresenter;->j:Z

    iput-boolean v4, v1, Landroid/support/v7/widget/ActionMenuPresenter;->k:Z

    .line 231
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 233
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->f:Z

    if-nez v2, :cond_3

    .line 234
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/y;Landroid/content/Context;)V

    .line 235
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/aa;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :goto_1
    iput-boolean v4, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->v:Z

    .line 254
    return-void

    .line 213
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->l:I

    iput-boolean v4, v2, Landroid/support/v7/widget/ActionMenuPresenter;->o:Z

    iput-boolean v4, v2, Landroid/support/v7/widget/ActionMenuPresenter;->p:Z

    .line 243
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    iput v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->m:I

    iput-boolean v4, v2, Landroid/support/v7/widget/ActionMenuPresenter;->n:Z

    .line 245
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 246
    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->b:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/y;Landroid/content/Context;)V

    .line 248
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/aa;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    .line 249
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 165
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->g()V

    .line 166
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->s:Z

    if-eq p1, v0, :cond_0

    .line 537
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    .line 539
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->s:Z

    .line 540
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c()Z

    move-result v0

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final bridge synthetic b(I)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->b(I)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 505
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 506
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e()V

    .line 508
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->w:I

    .line 509
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 170
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->g()V

    .line 171
    return-void
.end method

.method public final c()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 257
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->w:I

    if-ne v0, v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v0, :cond_1

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e()V

    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->h()V

    .line 267
    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->w:I

    .line 268
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/cb;->b(F)Landroid/support/v4/view/cb;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/cb;->a(J)Landroid/support/v4/view/cb;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/cb;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/cb;

    new-instance v1, Landroid/support/v7/internal/view/h;

    invoke-direct {v1}, Landroid/support/v7/internal/view/h;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/cb;)Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    :cond_2
    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->u:Landroid/support/v7/internal/view/h;

    .line 269
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->u:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->a()V

    goto :goto_0
.end method

.method public final d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 152
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 153
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    .line 157
    :cond_1
    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 160
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->requestLayout()V

    .line 161
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->h()V

    .line 282
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 283
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 286
    :cond_0
    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 287
    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->v:Z

    .line 289
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->s:Z

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 319
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onDetachedFromWindow()V

    .line 105
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->d()Z

    .line 107
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->d:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f()Z

    .line 109
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 523
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 525
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 526
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    .line 463
    invoke-static {p0}, Landroid/support/v7/internal/widget/at;->a(Landroid/view/View;)Z

    move-result v3

    .line 464
    if-eqz v3, :cond_0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v0

    .line 465
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v4

    .line 466
    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    sub-int v5, v0, v2

    .line 468
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 469
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 470
    if-eqz v3, :cond_1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 471
    :goto_1
    if-eqz v3, :cond_2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 472
    :goto_2
    invoke-static {v1, v2, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(IIZ)I

    move-result v1

    .line 473
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-static {v2, v1, v4, v5, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;IIIZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 474
    invoke-static {v1, v0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(IIZ)I

    move-result v1

    .line 476
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->v:Z

    if-eqz v0, :cond_4

    .line 477
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->w:I

    .line 478
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v6, v0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v0, v6, v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Landroid/support/v4/view/ax;->a(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/cb;->b(F)Landroid/support/v4/view/cb;

    move-result-object v0

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/cb;->a(J)Landroid/support/v4/view/cb;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/cb;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/cb;

    new-instance v2, Landroid/support/v7/internal/view/h;

    invoke-direct {v2}, Landroid/support/v7/internal/view/h;-><init>()V

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/cb;)Landroid/support/v7/internal/view/h;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_3

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/view/ax;->o(Landroid/view/View;)V

    invoke-static {v6}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/cb;->a()Landroid/support/v4/view/cb;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/cb;->a(J)Landroid/support/v4/view/cb;

    invoke-virtual {v2, v6}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/cb;)Landroid/support/v7/internal/view/h;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 464
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 470
    :cond_1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 471
    :cond_2
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 478
    :cond_3
    iput-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->u:Landroid/support/v7/internal/view/h;

    .line 479
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->u:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->a()V

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->v:Z

    .line 484
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    .line 485
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v4, v5, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 488
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 489
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-static {v0, v1, v4, v5, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;IIIZ)I

    .line 492
    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    .line 494
    :goto_4
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_7

    .line 495
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    if-nez v3, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-static {v2, v0, v4, v5, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;IIIZ)I

    .line 497
    :cond_7
    return-void

    .line 492
    :cond_8
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_4

    .line 495
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    .line 329
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 330
    if-eq v0, v4, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 336
    if-nez v0, :cond_1

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 343
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:I

    move v1, v0

    .line 346
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v0, v2

    .line 347
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 348
    sub-int v6, v1, v8

    .line 349
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 351
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 352
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-static {v9, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;II)I

    move-result v9

    .line 353
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 354
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v10

    sub-int v0, v9, v0

    .line 357
    :cond_2
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, p0, :cond_3

    .line 358
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->c:Landroid/support/v7/widget/ActionMenuView;

    invoke-static {v9, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;II)I

    move-result v0

    .line 362
    :cond_3
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v9, :cond_5

    .line 363
    iget-boolean v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->s:Z

    if-eqz v9, :cond_b

    .line 364
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 365
    iget-object v10, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 366
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v9

    .line 367
    if-gt v9, v0, :cond_9

    const/4 v2, 0x1

    .line 368
    :goto_1
    if-eqz v2, :cond_4

    .line 369
    sub-int/2addr v0, v9

    .line 371
    :cond_4
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_a

    move v2, v3

    :goto_2
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    :cond_5
    :goto_3
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 378
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 379
    iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v11, :cond_c

    move v2, v4

    .line 381
    :goto_4
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_6

    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 383
    :cond_6
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v11, :cond_d

    .line 385
    :goto_5
    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v5, :cond_e

    iget v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 387
    :goto_6
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/view/View;->measure(II)V

    .line 391
    :cond_7
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->g:I

    if-gtz v0, :cond_10

    .line 393
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v2

    move v1, v3

    .line 394
    :goto_7
    if-ge v3, v2, :cond_f

    .line 395
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v8

    .line 397
    if-le v0, v1, :cond_11

    .line 394
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_7

    .line 343
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    move v1, v0

    goto/16 :goto_0

    :cond_9
    move v2, v3

    .line 367
    goto :goto_1

    .line 371
    :cond_a
    const/16 v2, 0x8

    goto :goto_2

    .line 373
    :cond_b
    iget-object v9, p0, Landroid/support/v7/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-static {v9, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/view/View;II)I

    move-result v0

    goto :goto_3

    :cond_c
    move v2, v5

    .line 379
    goto :goto_4

    :cond_d
    move v4, v5

    .line 383
    goto :goto_5

    :cond_e
    move v5, v6

    .line 385
    goto :goto_6

    .line 401
    :cond_f
    invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 405
    :goto_9
    return-void

    .line 403
    :cond_10
    invoke-virtual {p0, v7, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9

    :cond_11
    move v0, v1

    goto :goto_8
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method
