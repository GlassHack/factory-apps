.class final Landroid/support/v7/widget/d;
.super Landroid/widget/ImageButton;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/i;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 586
    iput-object p1, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 587
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/b/b;->k:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 589
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/d;->setClickable(Z)V

    .line 590
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/d;->setFocusable(Z)V

    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->setVisibility(I)V

    .line 592
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/d;->setEnabled(Z)V

    .line 593
    new-instance v0, Landroid/support/v7/widget/e;

    invoke-direct {v0, p0, p0, p1}, Landroid/support/v7/widget/e;-><init>(Landroid/support/v7/widget/d;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 622
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 647
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    .line 650
    invoke-virtual {p0}, Landroid/support/v7/widget/d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 651
    invoke-virtual {p0}, Landroid/support/v7/widget/d;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 652
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 654
    sub-int v2, p5, p3

    .line 655
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    .line 656
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    .line 657
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    .line 658
    invoke-static {v1, v4, v0, v2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;III)V

    .line 660
    :cond_0
    return-void
.end method

.method public final performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 626
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    :goto_0
    return v1

    .line 630
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/d;->playSoundEffect(I)V

    .line 631
    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c()Z

    goto :goto_0
.end method
