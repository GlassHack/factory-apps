.class public final Landroid/support/v7/widget/da;
.super Landroid/support/v7/a/b;
.source "SourceFile"


# instance fields
.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 1713
    invoke-direct {p0, v0, v0}, Landroid/support/v7/a/b;-><init>(II)V

    .line 1706
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/da;->b:I

    .line 1714
    const v0, 0x800013

    iput v0, p0, Landroid/support/v7/widget/da;->a:I

    .line 1715
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1709
    invoke-direct {p0, p1, p2}, Landroid/support/v7/a/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1706
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/da;->b:I

    .line 1710
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/a/b;)V
    .locals 1

    .prologue
    .line 1733
    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/support/v7/a/b;)V

    .line 1706
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/da;->b:I

    .line 1734
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/da;)V
    .locals 1

    .prologue
    .line 1727
    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/support/v7/a/b;)V

    .line 1706
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/da;->b:I

    .line 1729
    iget v0, p1, Landroid/support/v7/widget/da;->b:I

    iput v0, p0, Landroid/support/v7/widget/da;->b:I

    .line 1730
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 1744
    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/da;->b:I

    .line 1745
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 1737
    invoke-direct {p0, p1}, Landroid/support/v7/a/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/da;->b:I

    .line 1740
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/support/v7/widget/da;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/support/v7/widget/da;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/support/v7/widget/da;->rightMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/support/v7/widget/da;->bottomMargin:I

    .line 1741
    return-void
.end method
