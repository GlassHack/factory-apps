.class final Landroid/support/v7/internal/widget/SpinnerCompat;
.super Landroid/support/v7/internal/widget/AbsSpinnerCompat;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field D:I

.field private E:Landroid/support/v7/widget/an;

.field private F:Landroid/support/v7/internal/widget/ao;

.field private G:Landroid/support/v7/internal/widget/ak;

.field private H:I

.field private I:Z

.field private J:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 161
    invoke-direct {p0, p1, v5, p3}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->J:Landroid/graphics/Rect;

    .line 163
    sget-object v0, Landroid/support/v7/b/j;->aV:[I

    invoke-virtual {p1, v5, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    sget v1, Landroid/support/v7/b/j;->bb:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 170
    packed-switch v1, :pswitch_data_0

    .line 200
    :goto_0
    sget v1, Landroid/support/v7/b/j;->aX:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->H:I

    .line 206
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    sget v2, Landroid/support/v7/b/j;->ba:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/ao;->a(Ljava/lang/CharSequence;)V

    .line 208
    sget v1, Landroid/support/v7/b/j;->aZ:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->I:Z

    .line 211
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/ak;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/ak;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ao;->a(Landroid/widget/ListAdapter;)V

    .line 217
    iput-object v5, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/ak;

    .line 219
    :cond_0
    return-void

    .line 172
    :pswitch_0
    new-instance v1, Landroid/support/v7/internal/widget/aj;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/aj;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;B)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    goto :goto_0

    .line 177
    :pswitch_1
    new-instance v1, Landroid/support/v7/internal/widget/al;

    invoke-direct {v1, p0, p1, v5, p3}, Landroid/support/v7/internal/widget/al;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    sget v2, Landroid/support/v7/b/j;->aW:I

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->D:I

    .line 182
    sget v2, Landroid/support/v7/b/j;->aY:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/al;->a(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iput-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    .line 186
    new-instance v2, Landroid/support/v7/internal/widget/ah;

    invoke-direct {v2, p0, p0, v1}, Landroid/support/v7/internal/widget/ah;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;Landroid/view/View;Landroid/support/v7/internal/widget/al;)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->E:Landroid/support/v7/widget/an;

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/ao;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    return-object v0
.end method

.method private a(IZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 521
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->t:Z

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->i:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/c;->a(I)Landroid/view/View;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;Z)V

    .line 537
    :goto_0
    return-object v0

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 535
    invoke-direct {p0, v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 551
    if-nez v0, :cond_0

    .line 552
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 555
    :cond_0
    if-eqz p2, :cond_1

    .line 556
    invoke-virtual {p0, p1, v5, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 559
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 560
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->I:Z

    if-eqz v1, :cond_2

    .line 561
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 565
    :cond_2
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->b:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 567
    iget v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->c:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 571
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 577
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 582
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 583
    add-int/lit8 v2, v2, 0x0

    .line 586
    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 587
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/widget/p;)V
    .locals 2

    .prologue
    .line 406
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    .line 356
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->i:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/c;->a()V

    .line 358
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 359
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spinner adapter view type count must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    new-instance v1, Landroid/support/v7/internal/widget/ak;

    invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/ak;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/ao;->a(Landroid/widget/ListAdapter;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_1
    new-instance v0, Landroid/support/v7/internal/widget/ak;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/ak;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->G:Landroid/support/v7/internal/widget/ak;

    goto :goto_0
.end method

.method final b(Landroid/support/v7/internal/widget/p;)V
    .locals 0

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a(Landroid/support/v7/internal/widget/p;)V

    .line 411
    return-void
.end method

.method public final getBaseline()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 372
    const/4 v1, 0x0

    .line 374
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 375
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 381
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 383
    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    .line 385
    :cond_1
    return v0

    .line 376
    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 377
    invoke-direct {p0, v3, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(IZ)Landroid/view/View;

    move-result-object v1

    .line 378
    iget-object v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->i:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/internal/widget/c;->a(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 605
    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(I)V

    .line 606
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 607
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onDetachedFromWindow()V

    .line 393
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ao;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ao;->a()V

    .line 396
    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 441
    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onLayout(ZIIII)V

    .line 442
    iput-boolean v9, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->q:Z

    .line 443
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    iget-boolean v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->t:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->f()V

    :cond_0
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->y:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a()V

    .line 444
    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->q:Z

    .line 445
    return-void

    .line 443
    :cond_1
    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->u:I

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->u:I

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->b(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildCount()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->i:Landroid/support/v7/internal/widget/c;

    iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->j:I

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v8, v6, v1

    invoke-virtual {v5, v8, v7}, Landroid/support/v7/internal/widget/c;->a(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->removeAllViewsInLayout()V

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->w:I

    iput v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->j:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->w:I

    invoke-direct {p0, v1, v9}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {p0}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v5

    iget v6, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->H:I

    invoke-static {v6, v5}, Landroid/support/v4/view/v;->a(II)I

    move-result v5

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->i:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/c;->a()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->invalidate()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->g()V

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->t:Z

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->o:Z

    iget v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->w:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->c(I)V

    goto :goto_0

    :sswitch_0
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v0, v3

    goto :goto_2

    :sswitch_1
    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onMeasure(II)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, -0x2

    const/4 v0, 0x0

    .line 424
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onMeasure(II)V

    .line 425
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 426
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredWidth()I

    move-result v6

    .line 427
    iget-object v7, p0, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->a:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v7, :cond_1

    :goto_0
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setMeasuredDimension(II)V

    .line 432
    :cond_0
    return-void

    .line 427
    :cond_1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v1, p0, Landroid/support/v7/internal/widget/n;->u:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v7}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v3, v11, v1

    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    :goto_1
    if-ge v5, v11, :cond_3

    invoke-interface {v7, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    move-object v1, v2

    :goto_2
    invoke-interface {v7, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v3, v9, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->J:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->J:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->J:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 685
    check-cast p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    .line 687
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 689
    iget-boolean v0, p1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->c:Z

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_0

    .line 692
    new-instance v1, Landroid/support/v7/internal/widget/ai;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/ai;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    .line 705
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 708
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 678
    new-instance v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 679
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ao;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;->c:Z

    .line 680
    return-object v1

    .line 679
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->E:Landroid/support/v7/widget/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->E:Landroid/support/v7/widget/an;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/an;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final performClick()Z
    .locals 2

    .prologue
    .line 591
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->performClick()Z

    move-result v0

    .line 593
    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x1

    .line 596
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/ao;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->F:Landroid/support/v7/internal/widget/ao;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/ao;->c()V

    .line 601
    :cond_0
    return v0
.end method

.method public final setEnabled(Z)V
    .locals 3

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerCompat;->setEnabled(Z)V

    .line 328
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat;->I:Z

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildCount()I

    move-result v1

    .line 330
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 331
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method
