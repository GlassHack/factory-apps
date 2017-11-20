.class public Landroid/support/v7/internal/view/menu/ActionMenuItemView;
.super Landroid/support/v7/internal/widget/t;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ab;
.implements Landroid/support/v7/widget/i;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/n;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/support/v7/internal/view/menu/l;

.field private e:Landroid/support/v7/widget/an;

.field private f:Landroid/support/v7/internal/view/menu/d;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    sget v1, Landroid/support/v7/b/c;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->g:Z

    .line 79
    sget-object v1, Landroid/support/v7/b/j;->v:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 81
    sget v2, Landroid/support/v7/b/j;->w:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->i:I

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 86
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    .line 88
    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 91
    new-instance v0, Landroid/support/v7/internal/view/menu/c;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/c;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->j:I

    .line 94
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/d;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->f:Landroid/support/v7/internal/view/menu/d;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/l;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Landroid/support/v7/internal/view/menu/l;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/n;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/n;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 179
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/n;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->g:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->h:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 182
    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void

    :cond_2
    move v0, v2

    .line 178
    goto :goto_0

    .line 182
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/support/v7/internal/view/menu/n;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/n;

    return-object v0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/d;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->f:Landroid/support/v7/internal/view/menu/d;

    .line 154
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/l;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Landroid/support/v7/internal/view/menu/l;

    .line 150
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/n;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 117
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/n;

    .line 119
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    if-le v1, v4, :cond_0

    iget v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    iget v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    :cond_0
    iget v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    if-le v0, v4, :cond_1

    iget v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    int-to-float v4, v4

    int-to-float v0, v0

    div-float/2addr v4, v0

    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->k:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    :cond_1
    invoke-virtual {v3, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {p0, v3, v5, v5, v5}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->f()V

    .line 120
    invoke-virtual {p1, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/ab;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->f()V

    .line 121
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 123
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 124
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 125
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e:Landroid/support/v7/widget/an;

    if-nez v0, :cond_3

    .line 127
    new-instance v0, Landroid/support/v7/internal/view/menu/b;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/b;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e:Landroid/support/v7/widget/an;

    .line 130
    :cond_3
    return-void

    .line 123
    :cond_4
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 227
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

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
    .line 231
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Landroid/support/v7/internal/view/menu/l;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->d:Landroid/support/v7/internal/view/menu/l;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/support/v7/internal/view/menu/n;)Z

    .line 146
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/t;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/c;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->g:Z

    .line 103
    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->f()V

    .line 104
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 264
    :goto_0
    return v0

    .line 241
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 242
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 243
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 244
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 246
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 247
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v5

    .line 248
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v6

    .line 249
    aget v7, v0, v2

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    .line 250
    aget v0, v0, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 251
    invoke-static {p1}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v5

    if-nez v5, :cond_1

    .line 252
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 253
    sub-int v0, v5, v0

    .line 255
    :cond_1
    iget-object v5, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/n;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 256
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v7, v3, :cond_2

    .line 258
    const v1, 0x800035

    invoke-virtual {v4, v1, v0, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 263
    :goto_1
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 264
    goto :goto_0

    .line 261
    :cond_2
    const/16 v0, 0x51

    invoke-virtual {v4, v0, v1, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 269
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c()Z

    move-result v1

    .line 270
    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->j:I

    if-ltz v0, :cond_0

    .line 271
    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->j:I

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v4

    invoke-super {p0, v0, v2, v3, v4}, Landroid/support/v7/internal/widget/t;->setPadding(IIII)V

    .line 275
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/t;->onMeasure(II)V

    .line 277
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 278
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v3

    .line 280
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_3

    iget v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->i:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 283
    :goto_0
    if-eq v2, v5, :cond_1

    iget v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->i:I

    if-lez v2, :cond_1

    if-ge v3, v0, :cond_1

    .line 285
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v7/internal/widget/t;->onMeasure(II)V

    .line 289
    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v0

    .line 293
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 294
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/support/v7/internal/widget/t;->setPadding(IIII)V

    .line 296
    :cond_2
    return-void

    .line 280
    :cond_3
    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->i:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e:Landroid/support/v7/widget/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->e:Landroid/support/v7/widget/an;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/an;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/t;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->j:I

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/t;->setPadding(IIII)V

    .line 110
    return-void
.end method
