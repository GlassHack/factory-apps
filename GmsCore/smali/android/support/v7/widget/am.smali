.class final Landroid/support/v7/widget/am;
.super Landroid/support/v7/internal/widget/x;
.source "SourceFile"


# instance fields
.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/support/v4/view/cb;

.field private k:Landroid/support/v4/widget/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 1537
    sget v0, Landroid/support/v7/b/b;->m:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/x;-><init>(Landroid/content/Context;I)V

    .line 1538
    iput-boolean p2, p0, Landroid/support/v7/widget/am;->h:Z

    .line 1539
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/am;->setCacheColorHint(I)V

    .line 1540
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/am;Z)Z
    .locals 0

    .prologue
    .line 1484
    iput-boolean p1, p0, Landroid/support/v7/widget/am;->g:Z

    return p1
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 1644
    iget-boolean v0, p0, Landroid/support/v7/widget/am;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/x;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;I)Z
    .locals 14

    .prologue
    .line 1549
    const/4 v0, 0x1

    .line 1550
    const/4 v1, 0x0

    .line 1552
    invoke-static {p1}, Landroid/support/v4/view/ao;->a(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1553
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v13, v1

    move v1, v0

    move v0, v13

    .line 1586
    :goto_1
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 1587
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/am;->i:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/am;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/am;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/am;->j:Landroid/support/v4/view/cb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/am;->j:Landroid/support/v4/view/cb;

    invoke-virtual {v0}, Landroid/support/v4/view/cb;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/am;->j:Landroid/support/v4/view/cb;

    .line 1591
    :cond_2
    if-eqz v1, :cond_e

    .line 1592
    iget-object v0, p0, Landroid/support/v7/widget/am;->k:Landroid/support/v4/widget/t;

    if-nez v0, :cond_3

    .line 1593
    new-instance v0, Landroid/support/v4/widget/t;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/t;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Landroid/support/v7/widget/am;->k:Landroid/support/v4/widget/t;

    .line 1595
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/am;->k:Landroid/support/v4/widget/t;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/t;->a(Z)Landroid/support/v4/widget/a;

    .line 1596
    iget-object v0, p0, Landroid/support/v7/widget/am;->k:Landroid/support/v4/widget/t;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/t;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1601
    :cond_4
    :goto_2
    return v1

    .line 1555
    :pswitch_0
    const/4 v0, 0x0

    move v13, v1

    move v1, v0

    move v0, v13

    .line 1556
    goto :goto_1

    .line 1558
    :pswitch_1
    const/4 v0, 0x0

    .line 1561
    :pswitch_2
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1562
    if-gez v2, :cond_5

    .line 1563
    const/4 v0, 0x0

    move v13, v1

    move v1, v0

    move v0, v13

    .line 1564
    goto :goto_1

    .line 1567
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 1568
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 1569
    invoke-virtual {p0, v4, v2}, Landroid/support/v7/widget/am;->pointToPosition(II)I

    move-result v5

    .line 1570
    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 1571
    const/4 v1, 0x1

    move v13, v1

    move v1, v0

    move v0, v13

    .line 1572
    goto :goto_1

    .line 1575
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/am;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v5, v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/am;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1576
    int-to-float v4, v4

    int-to-float v7, v2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/am;->i:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/am;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/am;->layoutChildren()V

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/am;->setSelection(I)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_b

    const/4 v0, -0x1

    if-eq v5, v0, :cond_b

    const/4 v0, 0x1

    move v2, v0

    :goto_3
    if-eqz v2, :cond_7

    const/4 v0, 0x0

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, p0, Landroid/support/v7/internal/widget/x;->b:I

    sub-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v10, p0, Landroid/support/v7/internal/widget/x;->c:I

    sub-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v10, p0, Landroid/support/v7/internal/widget/x;->d:I

    add-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Landroid/support/v7/internal/widget/x;->e:I

    add-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eq v9, v0, :cond_8

    iget-object v9, p0, Landroid/support/v7/internal/widget/x;->f:Ljava/lang/reflect/Field;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq v5, v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_5
    if-eqz v2, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/widget/x;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_6
    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-static {v8, v2, v9}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/x;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v2, -0x1

    if-eq v5, v2, :cond_a

    invoke-static {v0, v4, v7}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/am;->refreshDrawableState()V

    .line 1577
    const/4 v0, 0x1

    .line 1579
    const/4 v2, 0x1

    if-ne v3, v2, :cond_0

    .line 1580
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/am;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-virtual {p0, v6, v5, v2, v3}, Landroid/support/v7/widget/am;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_0

    .line 1576
    :cond_b
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_3

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 1597
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/am;->k:Landroid/support/v4/widget/t;

    if-eqz v0, :cond_4

    .line 1598
    iget-object v0, p0, Landroid/support/v7/widget/am;->k:Landroid/support/v4/widget/t;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/t;->a(Z)Landroid/support/v4/widget/a;

    goto/16 :goto_2

    .line 1553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final hasFocus()Z
    .locals 1

    .prologue
    .line 1680
    iget-boolean v0, p0, Landroid/support/v7/widget/am;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/x;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1660
    iget-boolean v0, p0, Landroid/support/v7/widget/am;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/x;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 1670
    iget-boolean v0, p0, Landroid/support/v7/widget/am;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/x;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInTouchMode()Z
    .locals 1

    .prologue
    .line 1650
    iget-boolean v0, p0, Landroid/support/v7/widget/am;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/am;->g:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v7/internal/widget/x;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
