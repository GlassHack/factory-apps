.class public final Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/bj;
.source "SourceFile"


# instance fields
.field a:I

.field b:Landroid/support/v7/widget/av;

.field c:Z

.field d:I

.field e:I

.field f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field final g:Landroid/support/v7/widget/af;

.field private l:Landroid/support/v7/widget/ah;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method private a(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)I
    .locals 3

    .prologue
    .line 780
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    sub-int/2addr v0, p1

    .line 781
    if-lez v0, :cond_1

    .line 783
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v0

    neg-int v0, v0

    .line 788
    add-int v1, p1, v0

    .line 789
    if-eqz p4, :cond_0

    .line 791
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    sub-int v1, v2, v1

    .line 792
    if-lez v1, :cond_0

    .line 793
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/av;->a(I)V

    .line 794
    add-int/2addr v0, v1

    .line 797
    :cond_0
    :goto_0
    return v0

    .line 785
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/bu;Z)I
    .locals 12

    .prologue
    .line 1239
    iget v7, p2, Landroid/support/v7/widget/ah;->c:I

    .line 1240
    iget v0, p2, Landroid/support/v7/widget/ah;->g:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1242
    iget v0, p2, Landroid/support/v7/widget/ah;->c:I

    if-gez v0, :cond_0

    .line 1243
    iget v0, p2, Landroid/support/v7/widget/ah;->g:I

    iget v1, p2, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/ah;->g:I

    .line 1245
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;)V

    .line 1247
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/ah;->c:I

    iget v1, p2, Landroid/support/v7/widget/ah;->h:I

    add-int/2addr v0, v1

    .line 1248
    new-instance v8, Landroid/support/v7/widget/ag;

    invoke-direct {v8}, Landroid/support/v7/widget/ag;-><init>()V

    move v5, v0

    .line 1249
    :goto_0
    if-lez v5, :cond_9

    iget v0, p2, Landroid/support/v7/widget/ah;->d:I

    if-ltz v0, :cond_3

    iget v0, p2, Landroid/support/v7/widget/ah;->d:I

    invoke-virtual {p3}, Landroid/support/v7/widget/bu;->a()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_9

    .line 1250
    const/4 v0, 0x0

    iput v0, v8, Landroid/support/v7/widget/ag;->a:I

    const/4 v0, 0x0

    iput-boolean v0, v8, Landroid/support/v7/widget/ag;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, v8, Landroid/support/v7/widget/ag;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, v8, Landroid/support/v7/widget/ag;->d:Z

    .line 1251
    iget-object v0, p2, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p2, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v3, 0x0

    const v1, 0x7fffffff

    const/4 v0, 0x0

    move v4, v0

    :goto_2
    if-ge v4, v6, :cond_4

    iget-object v0, p2, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    iget-boolean v2, p2, Landroid/support/v7/widget/ah;->i:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->l()Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v2

    iget v9, p2, Landroid/support/v7/widget/ah;->d:I

    sub-int/2addr v2, v9

    iget v9, p2, Landroid/support/v7/widget/ah;->e:I

    mul-int/2addr v2, v9

    if-ltz v2, :cond_1a

    if-ge v2, v1, :cond_1a

    if-eqz v2, :cond_5

    move-object v1, v0

    move v0, v2

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_2

    .line 1249
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 1251
    :cond_5
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v1

    iget v2, p2, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/support/v7/widget/ah;->d:I

    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    move-object v6, v0

    :goto_4
    if-nez v6, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/support/v7/widget/ag;->b:Z

    .line 1252
    :goto_5
    iget-boolean v0, v8, Landroid/support/v7/widget/ag;->b:Z

    if-nez v0, :cond_9

    .line 1253
    iget v0, p2, Landroid/support/v7/widget/ah;->b:I

    iget v1, v8, Landroid/support/v7/widget/ag;->a:I

    iget v2, p2, Landroid/support/v7/widget/ah;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/ah;->b:I

    .line 1262
    iget-boolean v0, v8, Landroid/support/v7/widget/ag;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget-object v0, v0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    if-nez v0, :cond_6

    iget-boolean v0, p3, Landroid/support/v7/widget/bu;->i:Z

    if-nez v0, :cond_19

    .line 1264
    :cond_6
    iget v0, p2, Landroid/support/v7/widget/ah;->c:I

    iget v1, v8, Landroid/support/v7/widget/ag;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/ah;->c:I

    .line 1266
    iget v0, v8, Landroid/support/v7/widget/ag;->a:I

    sub-int v0, v5, v0

    .line 1269
    :goto_6
    iget v1, p2, Landroid/support/v7/widget/ah;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_8

    .line 1270
    iget v1, p2, Landroid/support/v7/widget/ah;->g:I

    iget v2, v8, Landroid/support/v7/widget/ag;->a:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/support/v7/widget/ah;->g:I

    .line 1271
    iget v1, p2, Landroid/support/v7/widget/ah;->c:I

    if-gez v1, :cond_7

    .line 1272
    iget v1, p2, Landroid/support/v7/widget/ah;->g:I

    iget v2, p2, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/support/v7/widget/ah;->g:I

    .line 1274
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;)V

    .line 1276
    :cond_8
    if-eqz p4, :cond_18

    iget-boolean v1, v8, Landroid/support/v7/widget/ag;->d:Z

    if-eqz v1, :cond_18

    .line 1277
    :cond_9
    iget v0, p2, Landroid/support/v7/widget/ah;->c:I

    sub-int v0, v7, v0

    return v0

    .line 1251
    :cond_a
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_4

    :cond_b
    iget v0, p2, Landroid/support/v7/widget/ah;->d:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bo;->a(I)Landroid/view/View;

    move-result-object v0

    iget v1, p2, Landroid/support/v7/widget/ah;->d:I

    iget v2, p2, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/support/v7/widget/ah;->d:I

    move-object v6, v0

    goto :goto_4

    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v1, p2, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    if-nez v1, :cond_11

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iget v1, p2, Landroid/support/v7/widget/ah;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_f

    const/4 v1, 0x1

    :goto_7
    if-ne v2, v1, :cond_10

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-super {p0, v6, v1, v2}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;IZ)V

    :goto_8
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bk;

    iget-object v2, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->i()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->k()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->m()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/bk;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/bk;->rightMargin:I

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    iget v9, v1, Landroid/support/v7/widget/bk;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->c()Z

    move-result v10

    invoke-static {v4, v3, v9, v10}, Landroid/support/v7/widget/bj;->a(IIIZ)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->j()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->l()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->n()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/bk;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/bk;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    iget v1, v1, Landroid/support/v7/widget/bk;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->d()Z

    move-result v9

    invoke-static {v4, v2, v1, v9}, Landroid/support/v7/widget/bj;->a(IIIZ)I

    move-result v1

    invoke-virtual {v6, v3, v1}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v1

    iput v1, v8, Landroid/support/v7/widget/ag;->a:I

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/av;->d(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    :goto_9
    iget v3, p2, Landroid/support/v7/widget/ah;->f:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    iget v3, p2, Landroid/support/v7/widget/ah;->b:I

    iget v4, p2, Landroid/support/v7/widget/ah;->b:I

    iget v9, v8, Landroid/support/v7/widget/ag;->a:I

    sub-int/2addr v4, v9

    move v11, v3

    move v3, v4

    move v4, v2

    move v2, v1

    move v1, v11

    :goto_a
    iget v9, v0, Landroid/support/v7/widget/bk;->leftMargin:I

    add-int/2addr v4, v9

    iget v9, v0, Landroid/support/v7/widget/bk;->topMargin:I

    add-int/2addr v3, v9

    iget v9, v0, Landroid/support/v7/widget/bk;->rightMargin:I

    sub-int/2addr v2, v9

    iget v9, v0, Landroid/support/v7/widget/bk;->bottomMargin:I

    sub-int/2addr v1, v9

    invoke-static {v6, v4, v3, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->a()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/support/v7/widget/ag;->c:Z

    :cond_e
    invoke-virtual {v6}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, v8, Landroid/support/v7/widget/ag;->d:Z

    goto/16 :goto_5

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_10
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0, v6, v1, v2}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;IZ)V

    goto/16 :goto_8

    :cond_11
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iget v1, p2, Landroid/support/v7/widget/ah;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_12

    const/4 v1, 0x1

    :goto_b
    if-ne v2, v1, :cond_13

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-super {p0, v6, v1, v2}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;IZ)V

    goto/16 :goto_8

    :cond_12
    const/4 v1, 0x0

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0, v6, v1, v2}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;IZ)V

    goto/16 :goto_8

    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()I

    move-result v2

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/av;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_9

    :cond_15
    iget v4, p2, Landroid/support/v7/widget/ah;->b:I

    iget v3, p2, Landroid/support/v7/widget/ah;->b:I

    iget v9, v8, Landroid/support/v7/widget/ag;->a:I

    add-int/2addr v3, v9

    move v11, v3

    move v3, v4

    move v4, v2

    move v2, v1

    move v1, v11

    goto :goto_a

    :cond_16
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v3

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/av;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v3

    iget v2, p2, Landroid/support/v7/widget/ah;->f:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_17

    iget v2, p2, Landroid/support/v7/widget/ah;->b:I

    iget v4, p2, Landroid/support/v7/widget/ah;->b:I

    iget v9, v8, Landroid/support/v7/widget/ag;->a:I

    sub-int/2addr v4, v9

    goto :goto_a

    :cond_17
    iget v4, p2, Landroid/support/v7/widget/ah;->b:I

    iget v2, p2, Landroid/support/v7/widget/ah;->b:I

    iget v9, v8, Landroid/support/v7/widget/ag;->a:I

    add-int/2addr v2, v9

    goto/16 :goto_a

    :cond_18
    move v5, v0

    goto/16 :goto_0

    :cond_19
    move v0, v5

    goto/16 :goto_6

    :cond_1a
    move v0, v1

    move-object v1, v3

    goto/16 :goto_3
.end method

.method private a(III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1458
    .line 1460
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v5

    .line 1461
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v6

    .line 1462
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1463
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1464
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v3

    .line 1465
    invoke-static {v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 1466
    if-ltz v0, :cond_6

    if-ge v0, p3, :cond_6

    .line 1467
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1468
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1463
    :goto_2
    add-int/2addr p1, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1462
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1471
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1473
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1474
    goto :goto_2

    .line 1481
    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method private a(IIZLandroid/support/v7/widget/bu;)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1036
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/bu;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/ah;->h:I

    .line 1037
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput p1, v2, Landroid/support/v7/widget/ah;->f:I

    .line 1039
    if-ne p1, v1, :cond_2

    .line 1040
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v3, v2, Landroid/support/v7/widget/ah;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v4}, Landroid/support/v7/widget/av;->f()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/ah;->h:I

    .line 1042
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v2

    .line 1044
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/ah;->e:I

    .line 1046
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v3, v3, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/ah;->d:I

    .line 1047
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ah;->b:I

    .line 1049
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1062
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput p2, v1, Landroid/support/v7/widget/ah;->c:I

    .line 1063
    if-eqz p3, :cond_0

    .line 1064
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v2, v1, Landroid/support/v7/widget/ah;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/ah;->c:I

    .line 1066
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput v0, v1, Landroid/support/v7/widget/ah;->g:I

    .line 1067
    return-void

    :cond_1
    move v0, v1

    .line 1044
    goto :goto_0

    .line 1053
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v2

    .line 1054
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v4, v3, Landroid/support/v7/widget/ah;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v5}, Landroid/support/v7/widget/av;->b()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/ah;->h:I

    .line 1055
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/ah;->e:I

    .line 1057
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v3, v3, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/ah;->d:I

    .line 1058
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/ah;->b:I

    .line 1059
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->b()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1055
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/af;)V
    .locals 2

    .prologue
    .line 826
    iget v0, p1, Landroid/support/v7/widget/af;->a:I

    iget v1, p1, Landroid/support/v7/widget/af;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 827
    return-void
.end method

.method private a(Landroid/support/v7/widget/bo;II)V
    .locals 1

    .prologue
    .line 1108
    if-ne p2, p3, :cond_1

    .line 1123
    :cond_0
    return-void

    .line 1114
    :cond_1
    if-le p3, p2, :cond_2

    .line 1115
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1116
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/bo;)V

    .line 1115
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1119
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1120
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/bo;)V

    .line 1119
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1215
    iget-boolean v0, p2, Landroid/support/v7/widget/ah;->a:Z

    if-nez v0, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/ah;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 1219
    iget v0, p2, Landroid/support/v7/widget/ah;->g:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v2

    if-ltz v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->d()I

    move-result v3

    sub-int/2addr v3, v0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;II)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;II)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1221
    :cond_5
    iget v2, p2, Landroid/support/v7/widget/ah;->g:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_7

    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_6

    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;II)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_8

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;II)V

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private b(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)I
    .locals 4

    .prologue
    .line 805
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v0

    sub-int v0, p1, v0

    .line 806
    if-lez v0, :cond_1

    .line 809
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v0

    neg-int v0, v0

    .line 813
    add-int v1, p1, v0

    .line 814
    if-eqz p4, :cond_0

    .line 816
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    sub-int/2addr v1, v2

    .line 817
    if-lez v1, :cond_0

    .line 818
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/av;->a(I)V

    .line 819
    sub-int/2addr v0, v1

    .line 822
    :cond_0
    :goto_0
    return v0

    .line 811
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/af;)V
    .locals 2

    .prologue
    .line 840
    iget v0, p1, Landroid/support/v7/widget/af;->a:I

    iget v1, p1, Landroid/support/v7/widget/af;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 841
    return-void
.end method

.method private d(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1070
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1091
    :goto_0
    return p1

    .line 1073
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput-boolean v1, v0, Landroid/support/v7/widget/ah;->a:Z

    .line 1074
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1075
    if-lez p1, :cond_2

    move v0, v1

    .line 1076
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1077
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/bu;)V

    .line 1078
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v1, v1, Landroid/support/v7/widget/ah;->g:I

    .line 1079
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/bu;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1080
    if-gez v1, :cond_3

    move p1, v2

    .line 1084
    goto :goto_0

    .line 1075
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1086
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1087
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->a(I)V

    goto :goto_0
.end method

.method private f(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1450
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private f(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 830
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/ah;->c:I

    .line 831
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/ah;->e:I

    .line 833
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput p1, v0, Landroid/support/v7/widget/ah;->d:I

    .line 834
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput v1, v0, Landroid/support/v7/widget/ah;->f:I

    .line 835
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput p2, v0, Landroid/support/v7/widget/ah;->b:I

    .line 836
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/ah;->g:I

    .line 837
    return-void

    :cond_0
    move v0, v1

    .line 831
    goto :goto_0
.end method

.method private g(Landroid/support/v7/widget/bu;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 377
    iget v1, p1, Landroid/support/v7/widget/bu;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->e()I

    move-result v0

    .line 380
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 377
    goto :goto_0
.end method

.method private g(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 1454
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 844
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/ah;->c:I

    .line 845
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput p1, v0, Landroid/support/v7/widget/ah;->d:I

    .line 846
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/ah;->e:I

    .line 848
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput v1, v0, Landroid/support/v7/widget/ah;->f:I

    .line 849
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput p2, v0, Landroid/support/v7/widget/ah;->b:I

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/ah;->g:I

    .line 852
    return-void

    :cond_0
    move v0, v1

    .line 846
    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/bu;)I
    .locals 7

    .prologue
    .line 976
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 977
    const/4 v0, 0x0

    .line 979
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/by;->a(Landroid/support/v7/widget/bu;Landroid/support/v7/widget/av;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/bj;ZZ)I

    move-result v0

    goto :goto_0
.end method

.method private i(Landroid/support/v7/widget/bu;)I
    .locals 6

    .prologue
    .line 985
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 986
    const/4 v0, 0x0

    .line 988
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/by;->a(Landroid/support/v7/widget/bu;Landroid/support/v7/widget/av;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/bj;Z)I

    move-result v0

    goto :goto_0
.end method

.method private j(Landroid/support/v7/widget/bu;)I
    .locals 6

    .prologue
    .line 994
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 995
    const/4 v0, 0x0

    .line 997
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->p:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/by;->b(Landroid/support/v7/widget/bu;Landroid/support/v7/widget/av;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/bj;Z)I

    move-result v0

    goto :goto_0
.end method

.method private k(Landroid/support/v7/widget/bu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1429
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/bu;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/bu;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->g(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private l(Landroid/support/v7/widget/bu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1445
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/bu;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->g(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/bu;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private q()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 307
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Z

    .line 310
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    .line 312
    return-void

    .line 310
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 855
    iget-object v1, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    if-nez v0, :cond_0

    .line 860
    new-instance v0, Landroid/support/v7/widget/ah;

    invoke-direct {v0}, Landroid/support/v7/widget/ah;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    .line 862
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    if-nez v0, :cond_1

    .line 863
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/bj;I)Landroid/support/v7/widget/av;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 865
    :cond_1
    return-void
.end method

.method private t()Landroid/view/View;
    .locals 1

    .prologue
    .line 1404
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Landroid/view/View;
    .locals 1

    .prologue
    .line 1414
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I
    .locals 2

    .prologue
    .line 927
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 928
    const/4 v0, 0x0

    .line 930
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 947
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final a()Landroid/support/v7/widget/bk;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 158
    new-instance v0, Landroid/support/v7/widget/bk;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/bk;-><init>(II)V

    return-object v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v1

    .line 353
    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-object v0

    .line 356
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    .line 357
    sub-int v2, p1, v2

    .line 358
    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 359
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 227
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 228
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 229
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()V

    .line 236
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bo;)V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bo;)V

    .line 193
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->q:Z

    if-eqz v0, :cond_3

    .line 194
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/bj;->a(ILandroid/support/v7/widget/bo;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p2, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p2, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bo;->b(I)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    :cond_3
    return-void
.end method

.method public final a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)V
    .locals 12

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    .line 431
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/ah;->a:Z

    .line 434
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()V

    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/af;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/af;->a:I

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/af;->b:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/af;->c:Z

    .line 437
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/af;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/af;->c:Z

    .line 439
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/af;

    iget-boolean v0, p2, Landroid/support/v7/widget/bu;->i:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->a()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->c()I

    move-result v3

    if-ltz v3, :cond_19

    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->c()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/bu;->a()I

    move-result v3

    if-ge v0, v3, :cond_19

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/af;->a(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/support/v7/widget/af;->a()V

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Z

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Landroid/support/v7/widget/bu;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    iput v0, v2, Landroid/support/v7/widget/af;->a:I

    .line 448
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/bu;)I

    move-result v1

    .line 449
    iget v0, p2, Landroid/support/v7/widget/bu;->a:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/af;

    iget v2, v2, Landroid/support/v7/widget/af;->a:I

    if-ge v0, v2, :cond_22

    const/4 v0, 0x1

    .line 450
    :goto_5
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne v0, v2, :cond_23

    .line 452
    const/4 v0, 0x0

    move v11, v1

    move v1, v0

    move v0, v11

    .line 457
    :goto_6
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    add-int/2addr v1, v2

    .line 458
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->f()I

    move-result v2

    add-int/2addr v0, v2

    .line 459
    iget-boolean v2, p2, Landroid/support/v7/widget/bu;->i:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3

    .line 464
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)Landroid/view/View;

    move-result-object v2

    .line 465
    if-eqz v2, :cond_3

    .line 468
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v3, :cond_24

    .line 469
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->c()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    .line 471
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:I

    sub-int/2addr v2, v3

    .line 477
    :goto_7
    if-lez v2, :cond_25

    .line 478
    add-int/2addr v1, v2

    .line 486
    :cond_3
    :goto_8
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/af;

    .line 487
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;)V

    .line 488
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget-boolean v3, p2, Landroid/support/v7/widget/bu;->i:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/ah;->i:Z

    .line 489
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/af;

    iget-boolean v2, v2, Landroid/support/v7/widget/af;->c:Z

    if-eqz v2, :cond_26

    .line 491
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/af;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/af;)V

    .line 492
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput v1, v2, Landroid/support/v7/widget/ah;->h:I

    .line 493
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/bu;Z)I

    .line 494
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v1, v1, Landroid/support/v7/widget/ah;->b:I

    .line 495
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v2, v2, Landroid/support/v7/widget/ah;->c:I

    if-lez v2, :cond_4

    .line 496
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v2, v2, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v0, v2

    .line 499
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/af;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/af;)V

    .line 500
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput v0, v2, Landroid/support/v7/widget/ah;->h:I

    .line 501
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v2, v0, Landroid/support/v7/widget/ah;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v3, v3, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/ah;->d:I

    .line 502
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/bu;Z)I

    .line 503
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v0, v0, Landroid/support/v7/widget/ah;->b:I

    .line 524
    :goto_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v2

    if-lez v2, :cond_32

    .line 528
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_28

    .line 529
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)I

    move-result v2

    .line 530
    add-int/2addr v1, v2

    .line 531
    add-int/2addr v0, v2

    .line 532
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)I

    move-result v2

    .line 533
    add-int/2addr v1, v2

    .line 534
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    .line 544
    :goto_a
    iget-boolean v0, p2, Landroid/support/v7/widget/bu;->k:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p2, Landroid/support/v7/widget/bu;->i:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->e()Z

    move-result v0

    if-nez v0, :cond_29

    .line 545
    :cond_5
    :goto_b
    iget-boolean v0, p2, Landroid/support/v7/widget/bu;->i:Z

    if-nez v0, :cond_6

    .line 546
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    .line 547
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:I

    .line 548
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->e()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/av;->b:I

    .line 550
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Z

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 555
    return-void

    .line 439
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-ltz v0, :cond_8

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    invoke-virtual {p2}, Landroid/support/v7/widget/bu;->a()I

    move-result v1

    if-lt v0, v1, :cond_9

    :cond_8
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    iput v0, v2, Landroid/support/v7/widget/af;->a:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/af;->c:Z

    iget-boolean v0, v2, Landroid/support/v7/widget/af;->c:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/af;->b:I

    :goto_c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/af;->b:I

    goto :goto_c

    :cond_b
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->e()I

    move-result v3

    if-le v1, v3, :cond_c

    invoke-virtual {v2}, Landroid/support/v7/widget/af;->a()V

    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->b()I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/af;->b:I

    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/support/v7/widget/af;->c:Z

    goto :goto_d

    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->c()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/af;->b:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/support/v7/widget/af;->c:Z

    goto :goto_d

    :cond_e
    iget-boolean v1, v2, Landroid/support/v7/widget/af;->c:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->a()I

    move-result v1

    add-int/2addr v0, v1

    :goto_e
    iput v0, v2, Landroid/support/v7/widget/af;->b:I

    :goto_f
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_e

    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-ge v1, v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, v2, Landroid/support/v7/widget/af;->c:Z

    :cond_11
    invoke-virtual {v2}, Landroid/support/v7/widget/af;->a()V

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :cond_14
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/af;->c:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/af;->b:I

    goto/16 :goto_d

    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:I

    add-int/2addr v0, v1

    iput v0, v2, Landroid/support/v7/widget/af;->b:I

    goto/16 :goto_d

    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    iget-object v1, v1, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_1

    :cond_18
    move-object v1, v0

    goto/16 :goto_1

    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Z

    if-ne v0, v1, :cond_20

    iget-boolean v0, v2, Landroid/support/v7/widget/af;->c:Z

    if-eqz v0, :cond_1d

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/bu;)Landroid/view/View;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_20

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/af;->a(Landroid/view/View;)V

    iget-boolean v1, p2, Landroid/support/v7/widget/bu;->i:Z

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->e()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->c()I

    move-result v3

    if-ge v1, v3, :cond_1b

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->b()I

    move-result v1

    if-ge v0, v1, :cond_1e

    :cond_1b
    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_1c

    iget-boolean v0, v2, Landroid/support/v7/widget/af;->c:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    :goto_14
    iput v0, v2, Landroid/support/v7/widget/af;->b:I

    :cond_1c
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_1d
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/bu;)Landroid/view/View;

    move-result-object v0

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    goto :goto_13

    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v0

    goto :goto_14

    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 449
    :cond_22
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 455
    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 473
    :cond_24
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->b()I

    move-result v3

    sub-int/2addr v2, v3

    .line 475
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:I

    sub-int v2, v3, v2

    goto/16 :goto_7

    .line 480
    :cond_25
    sub-int/2addr v0, v2

    goto/16 :goto_8

    .line 506
    :cond_26
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/af;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/af;)V

    .line 507
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput v0, v2, Landroid/support/v7/widget/ah;->h:I

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/bu;Z)I

    .line 509
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v0, v0, Landroid/support/v7/widget/ah;->b:I

    .line 510
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v2, v2, Landroid/support/v7/widget/ah;->c:I

    if-lez v2, :cond_27

    .line 511
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v2, v2, Landroid/support/v7/widget/ah;->c:I

    add-int/2addr v1, v2

    .line 514
    :cond_27
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Landroid/support/v7/widget/af;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/af;)V

    .line 515
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput v1, v2, Landroid/support/v7/widget/ah;->h:I

    .line 516
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v2, v1, Landroid/support/v7/widget/ah;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v3, v3, Landroid/support/v7/widget/ah;->e:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/ah;->d:I

    .line 517
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/bu;Z)I

    .line 518
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v1, v1, Landroid/support/v7/widget/ah;->b:I

    goto/16 :goto_9

    .line 536
    :cond_28
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)I

    move-result v2

    .line 537
    add-int/2addr v1, v2

    .line 538
    add-int/2addr v0, v2

    .line 539
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)I

    move-result v2

    .line 540
    add-int/2addr v1, v2

    .line 541
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_a

    .line 544
    :cond_29
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, p1, Landroid/support/v7/widget/bo;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v9

    const/4 v0, 0x0

    move v6, v0

    :goto_15
    if-ge v6, v8, :cond_2d

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v3

    if-ge v3, v9, :cond_2a

    const/4 v3, 0x1

    :goto_16
    iget-boolean v10, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eq v3, v10, :cond_2b

    const/4 v3, -0x1

    :goto_17
    const/4 v10, -0x1

    if-ne v3, v10, :cond_2c

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v5

    move v3, v0

    move v0, v4

    :goto_18
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v4, v0

    goto :goto_15

    :cond_2a
    const/4 v3, 0x0

    goto :goto_16

    :cond_2b
    const/4 v3, 0x1

    goto :goto_17

    :cond_2c
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    move v3, v5

    goto :goto_18

    :cond_2d
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput-object v7, v0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    if-lez v5, :cond_2e

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput v5, v0, Landroid/support/v7/widget/ah;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/ah;->c:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v3, v2, Landroid/support/v7/widget/ah;->d:I

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_19
    add-int/2addr v0, v3

    iput v0, v2, Landroid/support/v7/widget/ah;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/bu;Z)I

    :cond_2e
    if-lez v4, :cond_2f

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput v4, v0, Landroid/support/v7/widget/ah;->h:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ah;->c:I

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iget v2, v1, Landroid/support/v7/widget/ah;->d:I

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v0, :cond_31

    const/4 v0, -0x1

    :goto_1a
    add-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/ah;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/bu;Z)I

    :cond_2f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ah;->j:Ljava/util/List;

    goto/16 :goto_b

    :cond_30
    const/4 v0, -0x1

    goto :goto_19

    :cond_31
    const/4 v0, 0x1

    goto :goto_1a

    :cond_32
    move v2, v1

    move v1, v0

    goto/16 :goto_a
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1097
    invoke-super {p0, p1}, Landroid/support/v7/widget/bj;->a(Ljava/lang/String;)V

    .line 1099
    :cond_0
    return-void
.end method

.method public final b(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    if-nez v0, :cond_0

    .line 940
    const/4 v0, 0x0

    .line 942
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 952
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 222
    :goto_0
    return-object v0

    .line 204
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 205
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v1

    if-lez v1, :cond_2

    .line 206
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->c:Z

    xor-int/2addr v1, v2

    .line 207
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 208
    if-eqz v1, :cond_1

    .line 209
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v1

    .line 210
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 212
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v1

    .line 215
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 216
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b()V

    goto :goto_0
.end method

.method public final c(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 957
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final c(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    .line 1584
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()V

    .line 1585
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v1

    if-nez v1, :cond_1

    .line 1621
    :cond_0
    :goto_0
    return-object v0

    .line 1589
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v3, v6

    .line 1590
    :goto_1
    if-eq v3, v6, :cond_0

    .line 1594
    if-ne v3, v4, :cond_6

    .line 1595
    invoke-direct {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->l(Landroid/support/v7/widget/bu;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1599
    :goto_2
    if-eqz v2, :cond_0

    .line 1606
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1607
    const v1, 0x3ea8f5c3    # 0.33f

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v7}, Landroid/support/v7/widget/av;->e()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 1608
    invoke-direct {p0, v3, v1, v8, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/bu;)V

    .line 1609
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput v6, v1, Landroid/support/v7/widget/ah;->g:I

    .line 1610
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    iput-boolean v8, v1, Landroid/support/v7/widget/ah;->a:Z

    .line 1611
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:Landroid/support/v7/widget/ah;

    invoke-direct {p0, p2, v1, p3, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ah;Landroid/support/v7/widget/bu;Z)I

    .line 1613
    if-ne v3, v4, :cond_7

    .line 1614
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v1

    .line 1618
    :goto_3
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1621
    goto :goto_0

    :sswitch_0
    move v3, v4

    .line 1589
    goto :goto_1

    :sswitch_1
    move v3, v5

    goto :goto_1

    :sswitch_2
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    if-ne v1, v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_1

    :sswitch_3
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    if-ne v1, v5, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_1

    :sswitch_4
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    if-nez v1, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_1

    :sswitch_5
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    if-nez v1, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v6

    goto :goto_1

    .line 1597
    :cond_6
    invoke-direct {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->k(Landroid/support/v7/widget/bu;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    .line 1616
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v1

    goto :goto_3

    .line 1589
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 251
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 967
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 1690
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->o:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 972
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method
