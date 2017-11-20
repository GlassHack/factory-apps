.class final Landroid/support/v4/widget/m;
.super Landroid/support/v4/widget/aq;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/DrawerLayout;

.field private final b:I

.field private c:Landroid/support/v4/widget/ao;

.field private final d:Ljava/lang/Runnable;


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1482
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/m;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1483
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 1495
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/m;->b:I

    iget-object v1, p0, Landroid/support/v4/widget/m;->c:Landroid/support/v4/widget/ao;

    invoke-virtual {v1}, Landroid/support/v4/widget/ao;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(ILandroid/view/View;)V

    .line 1496
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 1597
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1598
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1603
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1604
    iget-object v1, p0, Landroid/support/v4/widget/m;->c:Landroid/support/v4/widget/ao;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/ao;->a(Landroid/view/View;I)V

    .line 1606
    :cond_0
    return-void

    .line 1600
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;F)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 1535
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;)F

    move-result v1

    .line 1536
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1539
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1540
    cmpl-float v0, p2, v4

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v4

    if-nez v0, :cond_2

    cmpl-float v0, v1, v5

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1546
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/m;->c:Landroid/support/v4/widget/ao;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ao;->a(II)Z

    .line 1547
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1548
    return-void

    .line 1540
    :cond_2
    neg-int v0, v2

    goto :goto_0

    .line 1542
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1543
    cmpg-float v3, p2, v4

    if-ltz v3, :cond_4

    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    :cond_4
    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public final a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 1501
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1504
    iget-object v1, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1505
    add-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1510
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    .line 1511
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1512
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1513
    return-void

    .line 1507
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    .line 1508
    sub-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 1511
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1489
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/m;->b:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/View;I)I
    .locals 2

    .prologue
    .line 1615
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1619
    :goto_0
    return v0

    .line 1618
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1619
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 1552
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/m;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1553
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 1517
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/k;

    .line 1518
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/widget/k;->c:Z

    .line 1520
    iget v0, p0, Landroid/support/v4/widget/m;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)V

    .line 1521
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1520
    goto :goto_0
.end method

.method public final c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Landroid/support/v4/widget/m;->a:Landroid/support/v4/widget/DrawerLayout;

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1625
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method
