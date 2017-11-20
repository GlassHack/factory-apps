.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/aa;
.implements Landroid/support/v7/internal/view/menu/l;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/j;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Z

.field private f:Landroid/support/v7/widget/ActionMenuPresenter;

.field private g:Landroid/support/v7/internal/view/menu/z;

.field private h:Landroid/support/v7/internal/view/menu/k;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/support/v7/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->b:Landroid/content/Context;

    .line 79
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 81
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->k:I

    .line 82
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->l:I

    .line 83
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/content/Context;

    .line 84
    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->d:I

    .line 85
    return-void
.end method

.method static a(Landroid/view/View;IIII)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 401
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 403
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 405
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 406
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 408
    instance-of v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 410
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v4

    .line 413
    :goto_1
    if-lez p2, :cond_6

    if-eqz v5, :cond_0

    if-lt p2, v3, :cond_6

    .line 414
    :cond_0
    mul-int v1, p1, p2

    const/high16 v7, -0x80000000

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 416
    invoke-virtual {p0, v1, v6}, Landroid/view/View;->measure(II)V

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 419
    div-int v1, v7, p1

    .line 420
    rem-int/2addr v7, p1

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 421
    :cond_1
    if-eqz v5, :cond_2

    if-ge v1, v3, :cond_2

    move v1, v3

    .line 424
    :cond_2
    :goto_2
    iget-boolean v3, v0, Landroid/support/v7/widget/j;->a:Z

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    move v2, v4

    .line 425
    :cond_3
    iput-boolean v2, v0, Landroid/support/v7/widget/j;->d:Z

    .line 427
    iput v1, v0, Landroid/support/v7/widget/j;->b:I

    .line 428
    mul-int v0, v1, p1

    .line 429
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Landroid/view/View;->measure(II)V

    .line 431
    return v1

    .line 408
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move v5, v2

    .line 410
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/j;
    .locals 2

    .prologue
    .line 565
    new-instance v0, Landroid/support/v7/widget/j;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected static a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/j;
    .locals 2

    .prologue
    .line 570
    if-eqz p0, :cond_2

    .line 571
    instance-of v0, p0, Landroid/support/v7/widget/j;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/j;

    check-cast p0, Landroid/support/v7/widget/j;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/j;-><init>(Landroid/support/v7/widget/j;)V

    .line 574
    :goto_0
    iget v1, v0, Landroid/support/v7/widget/j;->h:I

    if-gtz v1, :cond_0

    .line 575
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/j;->h:I

    .line 579
    :cond_0
    :goto_1
    return-object v0

    .line 571
    :cond_1
    new-instance v0, Landroid/support/v7/widget/j;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 579
    :cond_2
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->i()Landroid/support/v7/widget/j;

    move-result-object v0

    goto :goto_1
.end method

.method public static b()Landroid/support/v7/widget/j;
    .locals 2

    .prologue
    .line 589
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->i()Landroid/support/v7/widget/j;

    move-result-object v0

    .line 590
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/j;->a:Z

    .line 591
    return-object v0
.end method

.method private b(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 695
    if-nez p1, :cond_0

    move v0, v2

    .line 707
    :goto_0
    return v0

    .line 698
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 699
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 701
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroid/support/v7/widget/i;

    if-eqz v3, :cond_1

    .line 702
    check-cast v0, Landroid/support/v7/widget/i;

    invoke-interface {v0}, Landroid/support/v7/widget/i;->e()Z

    move-result v0

    or-int/lit8 v2, v0, 0x0

    .line 704
    :cond_1
    if-lez p1, :cond_2

    instance-of v0, v1, Landroid/support/v7/widget/i;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 705
    check-cast v0, Landroid/support/v7/widget/i;

    invoke-interface {v0}, Landroid/support/v7/widget/i;->d()Z

    move-result v0

    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private static i()Landroid/support/v7/widget/j;
    .locals 2

    .prologue
    .line 557
    new-instance v0, Landroid/support/v7/widget/j;

    invoke-direct {v0}, Landroid/support/v7/widget/j;-><init>()V

    .line 559
    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/j;->h:I

    .line 560
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->d:I

    if-eq v0, p1, :cond_0

    .line 96
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->d:I

    .line 97
    if-nez p1, :cond_1

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->b:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/content/Context;

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Landroid/content/Context;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/internal/view/menu/j;

    .line 607
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/z;Landroid/support/v7/internal/view/menu/k;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->g:Landroid/support/v7/internal/view/menu/z;

    .line 638
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->h:Landroid/support/v7/internal/view/menu/k;

    .line 639
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 1

    .prologue
    .line 119
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 120
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuView;)V

    .line 121
    return-void
.end method

.method public final a(Landroid/support/v7/widget/k;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->m:Landroid/support/v7/widget/k;

    .line 139
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 552
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->e:Z

    .line 553
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->e:Z

    return v0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/internal/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public final c()Landroid/support/v7/internal/view/menu/j;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/internal/view/menu/j;

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 584
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/j;

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
    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 679
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v3, v2, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/c;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/ae;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->i()Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->i()Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ae;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ae;
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/util/AttributeSet;)Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->e()Z

    .line 689
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 126
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Z)V

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->d()Z

    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c()Z

    .line 135
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 541
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 542
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->h()V

    .line 543
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 436
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    if-nez v0, :cond_1

    .line 437
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    .line 442
    add-int v0, p3, p5

    div-int/lit8 v7, v0, 0x2

    .line 443
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v8

    .line 444
    const/4 v4, 0x0

    .line 447
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    sub-int v3, v0, v1

    .line 448
    const/4 v1, 0x0

    .line 449
    invoke-static {p0}, Landroid/support/v7/internal/widget/at;->a(Landroid/view/View;)Z

    move-result v9

    .line 450
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_5

    .line 451
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 452
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_c

    .line 453
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 457
    iget-boolean v2, v0, Landroid/support/v7/widget/j;->a:Z

    if-eqz v2, :cond_4

    .line 458
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 459
    invoke-direct {p0, v5}, Landroid/support/v7/widget/ActionMenuView;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    add-int/2addr v1, v8

    .line 462
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 465
    if-eqz v9, :cond_3

    .line 466
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/j;->leftMargin:I

    add-int/2addr v0, v2

    .line 467
    add-int v2, v0, v1

    .line 472
    :goto_2
    div-int/lit8 v12, v11, 0x2

    sub-int v12, v7, v12

    .line 473
    add-int/2addr v11, v12

    .line 474
    invoke-virtual {v10, v0, v12, v2, v11}, Landroid/view/View;->layout(IIII)V

    .line 476
    sub-int v1, v3, v1

    .line 477
    const/4 v0, 0x1

    move v2, v4

    .line 450
    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v2

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 469
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v2, v12

    iget v0, v0, Landroid/support/v7/widget/j;->rightMargin:I

    sub-int/2addr v2, v0

    .line 470
    sub-int v0, v2, v1

    goto :goto_2

    .line 479
    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v10, v0, Landroid/support/v7/widget/j;->leftMargin:I

    add-int/2addr v2, v10

    iget v0, v0, Landroid/support/v7/widget/j;->rightMargin:I

    add-int/2addr v0, v2

    .line 480
    sub-int v0, v3, v0

    .line 482
    invoke-direct {p0, v5}, Landroid/support/v7/widget/ActionMenuView;->b(I)Z

    .line 483
    add-int/lit8 v2, v4, 0x1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_3

    .line 489
    :cond_5
    const/4 v0, 0x1

    if-ne v6, v0, :cond_6

    if-nez v1, :cond_6

    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 493
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 494
    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    .line 495
    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    .line 496
    div-int/lit8 v4, v2, 0x2

    sub-int v4, v7, v4

    .line 497
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 501
    :cond_6
    if-eqz v1, :cond_7

    const/4 v0, 0x0

    :goto_4
    sub-int v0, v4, v0

    .line 502
    const/4 v1, 0x0

    if-lez v0, :cond_8

    div-int v0, v3, v0

    :goto_5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 504
    if-eqz v9, :cond_9

    .line 505
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 506
    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v6, :cond_0

    .line 507
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 508
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 509
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_b

    iget-boolean v5, v0, Landroid/support/v7/widget/j;->a:Z

    if-nez v5, :cond_b

    .line 510
    iget v5, v0, Landroid/support/v7/widget/j;->rightMargin:I

    sub-int/2addr v1, v5

    .line 514
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 515
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 516
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    .line 517
    sub-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v10, v9, v1, v8}, Landroid/view/View;->layout(IIII)V

    .line 518
    iget v0, v0, Landroid/support/v7/widget/j;->leftMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    sub-int v0, v1, v0

    .line 506
    :goto_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    .line 501
    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    .line 502
    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    .line 521
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    .line 522
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v6, :cond_0

    .line 523
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 524
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 525
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_a

    iget-boolean v5, v0, Landroid/support/v7/widget/j;->a:Z

    if-nez v5, :cond_a

    .line 526
    iget v5, v0, Landroid/support/v7/widget/j;->leftMargin:I

    add-int/2addr v1, v5

    .line 530
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 531
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 532
    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    .line 533
    add-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v1, v9, v10, v8}, Landroid/view/View;->layout(IIII)V

    .line 534
    iget v0, v0, Landroid/support/v7/widget/j;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 522
    :goto_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_b
    move v0, v1

    goto :goto_7

    :cond_c
    move v0, v1

    move v2, v4

    move v1, v3

    goto/16 :goto_3
.end method

.method protected onMeasure(II)V
    .locals 34

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    .line 145
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    .line 147
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    if-eq v7, v6, :cond_0

    .line 148
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/ActionMenuView;->j:I

    .line 153
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 154
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/internal/view/menu/j;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuView;->j:I

    if-eq v6, v7, :cond_1

    .line 155
    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/ActionMenuView;->j:I

    .line 156
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/internal/view/menu/j;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/internal/view/menu/j;->b(Z)V

    .line 159
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v8

    .line 160
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuView;->i:Z

    if-eqz v6, :cond_1c

    if-lez v8, :cond_1c

    .line 161
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v9

    add-int v19, v8, v9

    const/4 v8, -0x2

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v24

    sub-int v25, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->k:I

    div-int v9, v25, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->k:I

    rem-int v6, v25, v6

    if-nez v9, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 171
    :goto_1
    return-void

    .line 145
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 161
    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuView;->k:I

    div-int/2addr v6, v9

    add-int v26, v7, v6

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v27

    const/4 v6, 0x0

    move/from16 v18, v6

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v14, 0x8

    if-eq v6, v14, :cond_25

    instance-of v0, v8, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    move/from16 v20, v0

    add-int/lit8 v14, v7, 0x1

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->l:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->l:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v6, v7, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/j;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/j;->f:Z

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/j;->c:I

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/j;->b:I

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/j;->d:Z

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/j;->leftMargin:I

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/j;->rightMargin:I

    if-eqz v20, :cond_5

    move-object v7, v8

    check-cast v7, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroid/support/v7/widget/j;->e:Z

    iget-boolean v7, v6, Landroid/support/v7/widget/j;->a:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v8, v0, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v20

    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget-boolean v7, v6, Landroid/support/v7/widget/j;->d:Z

    if-eqz v7, :cond_24

    add-int/lit8 v7, v10, 0x1

    :goto_5
    iget-boolean v6, v6, Landroid/support/v7/widget/j;->a:Z

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    :goto_6
    sub-int v11, v9, v20

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move/from16 v0, v16

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v8, 0x1

    move/from16 v0, v20

    if-ne v0, v8, :cond_22

    const/4 v8, 0x1

    shl-int v8, v8, v18

    int-to-long v8, v8

    or-long/2addr v8, v12

    move v12, v10

    move v13, v11

    move v10, v7

    move v11, v6

    move-wide v6, v8

    move v9, v15

    move v8, v14

    :goto_7
    add-int/lit8 v14, v18, 0x1

    move/from16 v18, v14

    move v15, v9

    move/from16 v16, v12

    move v9, v13

    move-wide v12, v6

    move v7, v8

    goto/16 :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    move v7, v9

    goto :goto_4

    :cond_7
    if-eqz v11, :cond_8

    const/4 v6, 0x2

    if-ne v7, v6, :cond_8

    const/4 v6, 0x1

    move v8, v6

    :goto_8
    const/16 v18, 0x0

    move-wide/from16 v20, v12

    move/from16 v19, v9

    :goto_9
    if-lez v10, :cond_e

    if-lez v19, :cond_e

    const v14, 0x7fffffff

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move/from16 v22, v6

    :goto_a
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/j;

    iget-boolean v0, v6, Landroid/support/v7/widget/j;->d:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21

    iget v0, v6, Landroid/support/v7/widget/j;->b:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v0, v14, :cond_9

    iget v9, v6, Landroid/support/v7/widget/j;->b:I

    const/4 v6, 0x1

    shl-int v6, v6, v22

    int-to-long v12, v6

    const/4 v6, 0x1

    :goto_b
    add-int/lit8 v14, v22, 0x1

    move/from16 v22, v14

    move v14, v9

    move v9, v6

    goto :goto_a

    :cond_8
    const/4 v6, 0x0

    move v8, v6

    goto :goto_8

    :cond_9
    iget v6, v6, Landroid/support/v7/widget/j;->b:I

    if-ne v6, v14, :cond_21

    const/4 v6, 0x1

    shl-int v6, v6, v22

    int-to-long v0, v6

    move-wide/from16 v28, v0

    or-long v12, v12, v28

    add-int/lit8 v6, v9, 0x1

    move v9, v14

    goto :goto_b

    :cond_a
    or-long v20, v20, v12

    move/from16 v0, v19

    if-gt v9, v0, :cond_e

    add-int/lit8 v22, v14, 0x1

    const/4 v6, 0x0

    move v14, v6

    move/from16 v9, v19

    move-wide/from16 v18, v20

    :goto_c
    move/from16 v0, v27

    if-ge v14, v0, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/j;

    const/16 v21, 0x1

    shl-int v21, v21, v14

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v28, v0

    and-long v28, v28, v12

    const-wide/16 v30, 0x0

    cmp-long v21, v28, v30

    if-nez v21, :cond_b

    iget v6, v6, Landroid/support/v7/widget/j;->b:I

    move/from16 v0, v22

    if-ne v6, v0, :cond_20

    const/4 v6, 0x1

    shl-int/2addr v6, v14

    int-to-long v0, v6

    move-wide/from16 v20, v0

    or-long v18, v18, v20

    move v6, v9

    :goto_d
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move v9, v6

    goto :goto_c

    :cond_b
    if-eqz v8, :cond_c

    iget-boolean v0, v6, Landroid/support/v7/widget/j;->e:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->l:I

    move/from16 v21, v0

    add-int v21, v21, v26

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->l:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_c
    iget v0, v6, Landroid/support/v7/widget/j;->b:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    iput v0, v6, Landroid/support/v7/widget/j;->b:I

    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v6, Landroid/support/v7/widget/j;->f:Z

    add-int/lit8 v6, v9, -0x1

    goto :goto_d

    :cond_d
    const/4 v6, 0x1

    move-wide/from16 v20, v18

    move/from16 v18, v6

    move/from16 v19, v9

    goto/16 :goto_9

    :cond_e
    move-wide/from16 v12, v20

    if-nez v11, :cond_12

    const/4 v6, 0x1

    if-ne v7, v6, :cond_12

    const/4 v6, 0x1

    :goto_e
    if-lez v19, :cond_18

    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-eqz v8, :cond_18

    add-int/lit8 v7, v7, -0x1

    move/from16 v0, v19

    if-lt v0, v7, :cond_f

    if-nez v6, :cond_f

    const/4 v7, 0x1

    if-le v15, v7, :cond_18

    :cond_f
    invoke-static {v12, v13}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    int-to-float v7, v7

    if-nez v6, :cond_1f

    const-wide/16 v8, 0x1

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/j;

    iget-boolean v6, v6, Landroid/support/v7/widget/j;->e:Z

    if-nez v6, :cond_10

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v7, v6

    :cond_10
    const/4 v6, 0x1

    add-int/lit8 v8, v27, -0x1

    shl-int/2addr v6, v8

    int-to-long v8, v6

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1f

    add-int/lit8 v6, v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/j;

    iget-boolean v6, v6, Landroid/support/v7/widget/j;->e:Z

    if-nez v6, :cond_1f

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v7, v6

    :goto_f
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_13

    mul-int v7, v19, v26

    int-to-float v7, v7

    div-float v6, v7, v6

    float-to-int v6, v6

    move v7, v6

    :goto_10
    const/4 v6, 0x0

    move v9, v6

    move/from16 v8, v18

    :goto_11
    move/from16 v0, v27

    if-ge v9, v0, :cond_19

    const/4 v6, 0x1

    shl-int/2addr v6, v9

    int-to-long v10, v6

    and-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/j;

    instance-of v10, v10, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_14

    iput v7, v6, Landroid/support/v7/widget/j;->c:I

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/support/v7/widget/j;->f:Z

    if-nez v9, :cond_11

    iget-boolean v8, v6, Landroid/support/v7/widget/j;->e:Z

    if-nez v8, :cond_11

    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/support/v7/widget/j;->leftMargin:I

    :cond_11
    const/4 v6, 0x1

    :goto_12
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v6

    goto :goto_11

    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_e

    :cond_13
    const/4 v6, 0x0

    move v7, v6

    goto :goto_10

    :cond_14
    iget-boolean v10, v6, Landroid/support/v7/widget/j;->a:Z

    if-eqz v10, :cond_15

    iput v7, v6, Landroid/support/v7/widget/j;->c:I

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/support/v7/widget/j;->f:Z

    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/support/v7/widget/j;->rightMargin:I

    const/4 v6, 0x1

    goto :goto_12

    :cond_15
    if-eqz v9, :cond_16

    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroid/support/v7/widget/j;->leftMargin:I

    :cond_16
    add-int/lit8 v10, v27, -0x1

    if-eq v9, v10, :cond_17

    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroid/support/v7/widget/j;->rightMargin:I

    :cond_17
    move v6, v8

    goto :goto_12

    :cond_18
    move/from16 v8, v18

    :cond_19
    if-eqz v8, :cond_1b

    const/4 v6, 0x0

    move v7, v6

    :goto_13
    move/from16 v0, v27

    if-ge v7, v0, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/j;

    iget-boolean v9, v6, Landroid/support/v7/widget/j;->f:Z

    if-eqz v9, :cond_1a

    iget v9, v6, Landroid/support/v7/widget/j;->b:I

    mul-int v9, v9, v26

    iget v6, v6, Landroid/support/v7/widget/j;->c:I

    add-int/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v8, v6, v0}, Landroid/view/View;->measure(II)V

    :cond_1a
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_13

    :cond_1b
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_1e

    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_1

    .line 164
    :cond_1c
    const/4 v6, 0x0

    move v7, v6

    :goto_15
    if-ge v7, v8, :cond_1d

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 166
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/j;

    .line 167
    const/4 v9, 0x0

    iput v9, v6, Landroid/support/v7/widget/j;->rightMargin:I

    iput v9, v6, Landroid/support/v7/widget/j;->leftMargin:I

    .line 164
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_15

    .line 169
    :cond_1d
    invoke-super/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto/16 :goto_1

    :cond_1e
    move/from16 v16, v17

    goto :goto_14

    :cond_1f
    move v6, v7

    goto/16 :goto_f

    :cond_20
    move v6, v9

    goto/16 :goto_d

    :cond_21
    move v6, v9

    move v9, v14

    goto/16 :goto_b

    :cond_22
    move v8, v14

    move v9, v15

    move-wide/from16 v32, v12

    move v12, v10

    move v13, v11

    move v11, v6

    move v10, v7

    move-wide/from16 v6, v32

    goto/16 :goto_7

    :cond_23
    move v6, v11

    goto/16 :goto_6

    :cond_24
    move v7, v10

    goto/16 :goto_5

    :cond_25
    move v8, v7

    move-wide v6, v12

    move/from16 v12, v16

    move v13, v9

    move v9, v15

    goto/16 :goto_7
.end method
