.class Landroid/support/v7/a/g;
.super Landroid/support/v7/a/e;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/k;


# instance fields
.field private A:Z

.field private final B:Ljava/lang/Runnable;

.field private C:Z

.field i:Landroid/support/v7/internal/widget/v;

.field j:Landroid/support/v7/c/a;

.field k:Landroid/support/v7/internal/widget/ActionBarContextView;

.field l:Landroid/widget/PopupWindow;

.field m:Ljava/lang/Runnable;

.field n:Z

.field o:Z

.field private p:Landroid/support/v7/a/j;

.field private q:Landroid/support/v7/a/l;

.field private r:Landroid/support/v7/internal/view/menu/h;

.field private s:Landroid/support/v7/internal/view/menu/j;

.field private t:Z

.field private u:Landroid/view/ViewGroup;

.field private v:Ljava/lang/CharSequence;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v7/a/d;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/support/v7/a/e;-><init>(Landroid/support/v7/a/d;)V

    .line 90
    new-instance v0, Landroid/support/v7/a/h;

    invoke-direct {v0, p0}, Landroid/support/v7/a/h;-><init>(Landroid/support/v7/a/g;)V

    iput-object v0, p0, Landroid/support/v7/a/g;->B:Ljava/lang/Runnable;

    .line 101
    return-void
.end method

.method private j()V
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 214
    iget-boolean v0, p0, Landroid/support/v7/a/g;->t:Z

    if-nez v0, :cond_8

    .line 215
    iget-boolean v0, p0, Landroid/support/v7/a/g;->c:Z

    if-eqz v0, :cond_a

    .line 221
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 222
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v3, Landroid/support/v7/b/b;->f:I

    invoke-virtual {v0, v3, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 225
    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 226
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v3, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 232
    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroid/support/v7/b/g;->m:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 234
    iget-object v2, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v2, v0}, Landroid/support/v7/a/d;->a(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    sget v2, Landroid/support/v7/b/e;->j:I

    invoke-virtual {v0, v2}, Landroid/support/v7/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/v;

    iput-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    .line 238
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    iget-object v2, p0, Landroid/support/v7/a/e;->h:Landroid/support/v7/internal/a/a;

    invoke-interface {v0, v2}, Landroid/support/v7/internal/widget/v;->a(Landroid/support/v7/internal/a/a;)V

    .line 243
    iget-boolean v0, p0, Landroid/support/v7/a/g;->d:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Landroid/support/v7/internal/widget/v;->a(I)V

    .line 246
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/a/g;->w:Z

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/support/v7/internal/widget/v;->a(I)V

    .line 249
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/a/g;->x:Z

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, v10}, Landroid/support/v7/internal/widget/v;->a(I)V

    .line 260
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/support/v7/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 261
    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 262
    iget-object v2, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    sget v3, Landroid/support/v7/b/e;->b:I

    invoke-virtual {v2, v3}, Landroid/support/v7/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 263
    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 267
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 268
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/g;->v:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_4

    .line 273
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    iget-object v2, p0, Landroid/support/v7/a/g;->v:Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Landroid/support/v7/internal/widget/v;->a(Ljava/lang/CharSequence;)V

    .line 274
    iput-object v1, p0, Landroid/support/v7/a/g;->v:Ljava/lang/CharSequence;

    .line 277
    :cond_4
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    sget-object v2, Landroid/support/v7/b/j;->bc:[I

    invoke-virtual {v0, v2}, Landroid/support/v7/a/d;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v0, Landroid/support/v7/b/j;->bk:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sget v2, Landroid/support/v7/b/j;->bk:I

    invoke-virtual {v7, v2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :goto_2
    sget v2, Landroid/support/v7/b/j;->bl:I

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    sget v3, Landroid/support/v7/b/j;->bl:I

    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :goto_3
    sget v3, Landroid/support/v7/b/j;->bi:I

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    sget v5, Landroid/support/v7/b/j;->bi:I

    invoke-virtual {v7, v5, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :goto_4
    sget v5, Landroid/support/v7/b/j;->bj:I

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sget v5, Landroid/support/v7/b/j;->bj:I

    invoke-virtual {v7, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_5
    iget-object v5, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v5}, Landroid/support/v7/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v9, :cond_c

    move v5, v6

    :goto_5
    if-eqz v5, :cond_d

    :goto_6
    if-eqz v2, :cond_12

    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_12

    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-ne v0, v10, :cond_e

    invoke-virtual {v2, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    :goto_7
    if-eqz v5, :cond_f

    :goto_8
    if-eqz v3, :cond_11

    iget v0, v3, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_11

    iget v0, v3, Landroid/util/TypedValue;->type:I

    if-ne v0, v10, :cond_10

    invoke-virtual {v3, v8}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    :goto_9
    if-ne v2, v4, :cond_6

    if-eq v0, v4, :cond_7

    :cond_6
    iget-object v1, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v1}, Landroid/support/v7/a/d;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_7
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/a/g;->h()V

    .line 281
    iput-boolean v6, p0, Landroid/support/v7/a/g;->t:Z

    .line 283
    iget-boolean v0, p0, Landroid/support/v7/a/g;->A:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/a/g;->u:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/a/g;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/a/g;->B:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v6, p0, Landroid/support/v7/a/g;->A:Z

    .line 285
    :cond_8
    return-void

    .line 228
    :cond_9
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    goto/16 :goto_0

    .line 252
    :cond_a
    iget-boolean v0, p0, Landroid/support/v7/a/g;->e:Z

    if-eqz v0, :cond_b

    .line 253
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    sget v2, Landroid/support/v7/b/g;->l:I

    invoke-virtual {v0, v2}, Landroid/support/v7/a/d;->b_(I)V

    goto/16 :goto_1

    .line 255
    :cond_b
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    sget v2, Landroid/support/v7/b/g;->k:I

    invoke-virtual {v0, v2}, Landroid/support/v7/a/d;->b_(I)V

    goto/16 :goto_1

    .line 277
    :cond_c
    const/4 v5, 0x0

    goto :goto_5

    :cond_d
    move-object v2, v0

    goto :goto_6

    :cond_e
    iget v0, v2, Landroid/util/TypedValue;->type:I

    if-ne v0, v11, :cond_12

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v9, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    invoke-virtual {v2, v0, v9}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    move v2, v0

    goto :goto_7

    :cond_f
    move-object v3, v1

    goto :goto_8

    :cond_10
    iget v0, v3, Landroid/util/TypedValue;->type:I

    if-ne v0, v11, :cond_11

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_9

    :cond_11
    move v0, v4

    goto :goto_9

    :cond_12
    move v2, v4

    goto :goto_7

    :cond_13
    move-object v3, v1

    goto/16 :goto_4

    :cond_14
    move-object v2, v1

    goto/16 :goto_3

    :cond_15
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private k()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 785
    iget-boolean v0, p0, Landroid/support/v7/a/g;->o:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 857
    :goto_0
    return v0

    .line 789
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->h()V

    .line 796
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/a/g;->y:Z

    if-eqz v0, :cond_b

    .line 797
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    if-nez v0, :cond_6

    .line 798
    iget-object v2, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_f

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget v0, Landroid/support/v7/b/b;->f:I

    invoke-virtual {v6, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v7, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v7, Landroid/support/v7/b/b;->g:I

    invoke-virtual {v0, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_1
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_3
    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_4
    move-object v5, v0

    if-eqz v5, :cond_f

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :goto_2
    new-instance v2, Landroid/support/v7/internal/view/menu/j;

    invoke-direct {v2, v0}, Landroid/support/v7/internal/view/menu/j;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/k;)V

    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    if-nez v0, :cond_6

    move v0, v4

    .line 799
    goto :goto_0

    .line 798
    :cond_5
    sget v0, Landroid/support/v7/b/b;->g:I

    invoke-virtual {v6, v0, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v0, v1

    goto :goto_1

    .line 803
    :cond_6
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_8

    .line 804
    iget-object v0, p0, Landroid/support/v7/a/g;->p:Landroid/support/v7/a/j;

    if-nez v0, :cond_7

    .line 805
    new-instance v0, Landroid/support/v7/a/j;

    invoke-direct {v0, p0, v4}, Landroid/support/v7/a/j;-><init>(Landroid/support/v7/a/g;B)V

    iput-object v0, p0, Landroid/support/v7/a/g;->p:Landroid/support/v7/a/j;

    .line 807
    :cond_7
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    iget-object v2, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    iget-object v5, p0, Landroid/support/v7/a/g;->p:Landroid/support/v7/a/j;

    invoke-interface {v0, v2, v5}, Landroid/support/v7/internal/widget/v;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/z;)V

    .line 812
    :cond_8
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->g()V

    .line 815
    iget-object v0, p0, Landroid/support/v7/a/e;->h:Landroid/support/v7/internal/a/a;

    iget-object v2, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    invoke-interface {v0, v4, v2}, Landroid/support/v7/internal/a/a;->a(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 817
    iput-object v1, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    .line 819
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_9

    .line 821
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    iget-object v2, p0, Landroid/support/v7/a/g;->p:Landroid/support/v7/a/j;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/widget/v;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/z;)V

    :cond_9
    move v0, v4

    .line 824
    goto/16 :goto_0

    .line 827
    :cond_a
    iput-boolean v4, p0, Landroid/support/v7/a/g;->y:Z

    .line 832
    :cond_b
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->g()V

    .line 836
    iget-object v0, p0, Landroid/support/v7/a/g;->z:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    .line 837
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    iget-object v2, p0, Landroid/support/v7/a/g;->z:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/j;->b(Landroid/os/Bundle;)V

    .line 838
    iput-object v1, p0, Landroid/support/v7/a/g;->z:Landroid/os/Bundle;

    .line 842
    :cond_c
    iget-object v0, p0, Landroid/support/v7/a/e;->h:Landroid/support/v7/internal/a/a;

    iget-object v2, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    invoke-interface {v0, v4, v1, v2}, Landroid/support/v7/internal/a/a;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 843
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_d

    .line 846
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    iget-object v2, p0, Landroid/support/v7/a/g;->p:Landroid/support/v7/a/j;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/internal/widget/v;->a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/z;)V

    .line 848
    :cond_d
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->h()V

    move v0, v4

    .line 849
    goto/16 :goto_0

    .line 852
    :cond_e
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->h()V

    .line 855
    iput-boolean v3, p0, Landroid/support/v7/a/g;->o:Z

    move v0, v3

    .line 857
    goto/16 :goto_0

    :cond_f
    move-object v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()Landroid/support/v7/a/a;
    .locals 3

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/support/v7/a/g;->j()V

    .line 122
    new-instance v0, Landroid/support/v7/internal/a/b;

    iget-object v1, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    iget-boolean v2, p0, Landroid/support/v7/a/g;->d:Z

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/a/b;-><init>(Landroid/support/v7/a/d;Z)V

    .line 123
    iget-boolean v1, p0, Landroid/support/v7/a/g;->C:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->c(Z)V

    .line 124
    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/support/v7/a/g;->j()V

    .line 185
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 187
    iget-object v1, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v1}, Landroid/support/v7/a/d;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 188
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    .line 189
    return-void
.end method

.method public final a(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 407
    if-nez p1, :cond_0

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/g;->o:Z

    .line 412
    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 413
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/d;->b(ILandroid/view/Menu;)V

    .line 415
    :cond_1
    return-void
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    invoke-super {p0, p1}, Landroid/support/v7/a/e;->a(Landroid/os/Bundle;)V

    .line 107
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/a/g;->u:Landroid/view/ViewGroup;

    .line 109
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-static {v0}, Landroid/support/v4/app/ap;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    iput-boolean v1, p0, Landroid/support/v7/a/g;->C:Z

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->c(Z)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/support/v7/a/g;->j()V

    .line 176
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    .line 180
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/support/v7/a/g;->j()V

    .line 194
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 195
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 196
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    .line 198
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/v;->a(Ljava/lang/CharSequence;)V

    .line 376
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/a/a;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 374
    :cond_1
    iput-object p1, p0, Landroid/support/v7/a/g;->v:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 399
    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p0, Landroid/support/v7/a/e;->h:Landroid/support/v7/internal/a/a;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v7/internal/a/a;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 402
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Landroid/support/v7/a/g;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/a/d;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 380
    .line 382
    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/support/v7/a/g;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    iget-object v1, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    iget-object v2, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    check-cast v0, Landroid/view/View;

    .line 386
    :cond_1
    return-object v0

    .line 383
    :cond_2
    iget-object v2, p0, Landroid/support/v7/a/g;->q:Landroid/support/v7/a/l;

    if-nez v2, :cond_3

    new-instance v2, Landroid/support/v7/a/l;

    invoke-direct {v2, p0, v3}, Landroid/support/v7/a/l;-><init>(Landroid/support/v7/a/g;B)V

    iput-object v2, p0, Landroid/support/v7/a/g;->q:Landroid/support/v7/a/l;

    :cond_3
    iget-object v2, p0, Landroid/support/v7/a/g;->r:Landroid/support/v7/internal/view/menu/h;

    if-nez v2, :cond_4

    sget-object v2, Landroid/support/v7/b/j;->bc:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v7/b/j;->be:I

    sget v3, Landroid/support/v7/b/i;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Landroid/support/v7/internal/view/menu/h;

    sget v3, Landroid/support/v7/b/g;->h:I

    invoke-direct {v1, v3, v2}, Landroid/support/v7/internal/view/menu/h;-><init>(II)V

    iput-object v1, p0, Landroid/support/v7/a/g;->r:Landroid/support/v7/internal/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/a/g;->r:Landroid/support/v7/internal/view/menu/h;

    iget-object v2, p0, Landroid/support/v7/a/g;->q:Landroid/support/v7/a/l;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/h;->a(Landroid/support/v7/internal/view/menu/z;)V

    iget-object v1, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    iget-object v2, p0, Landroid/support/v7/a/g;->r:Landroid/support/v7/internal/view/menu/h;

    iget-object v3, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/y;Landroid/content/Context;)V

    :goto_1
    iget-object v1, p0, Landroid/support/v7/a/g;->r:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/h;->b()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/g;->r:Landroid/support/v7/internal/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/a/g;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/h;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/aa;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/support/v7/a/g;->r:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v1, v3}, Landroid/support/v7/internal/view/menu/h;->a(Z)V

    goto :goto_1
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/support/v7/a/g;->j()V

    .line 203
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    .line 206
    return-void
.end method

.method final b(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 419
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 420
    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/d;->c(ILandroid/view/Menu;)Z

    move-result v0

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 653
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Landroid/support/v7/a/g;->o:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Landroid/support/v7/a/g;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/internal/view/menu/j;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/support/v7/a/g;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/a/g;->t:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/support/v7/a/a;->f()V

    .line 155
    :cond_0
    return-void
.end method

.method public final c(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 391
    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Landroid/support/v7/a/e;->h:Landroid/support/v7/internal/a/a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/a/a;->a(ILandroid/view/Menu;)Z

    move-result v0

    .line 394
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->d(Z)V

    .line 163
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->d(Z)V

    .line 171
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    .line 466
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    if-eqz v0, :cond_1

    .line 469
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 470
    iget-object v1, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/os/Bundle;)V

    .line 471
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 472
    iput-object v0, p0, Landroid/support/v7/a/g;->z:Landroid/os/Bundle;

    .line 475
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->g()V

    .line 476
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->clear()V

    .line 478
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/a/g;->y:Z

    .line 481
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_2

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/a/g;->o:Z

    .line 483
    invoke-direct {p0}, Landroid/support/v7/a/g;->k()Z

    .line 485
    :cond_2
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 608
    iget-object v1, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    invoke-virtual {v1}, Landroid/support/v7/c/a;->b()V

    .line 619
    :cond_0
    :goto_0
    return v0

    .line 614
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v1

    .line 615
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/a/a;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/bi;->a(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/a/g;->A:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/a/g;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/a/g;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/a/g;->B:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/g;->s:Landroid/support/v7/internal/view/menu/j;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/a/g;->y:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/a/g;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->f()Z

    .line 433
    :cond_2
    :goto_0
    return-void

    .line 432
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/g;->i:Landroid/support/v7/internal/widget/v;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/v;->g()Z

    goto :goto_0
.end method
