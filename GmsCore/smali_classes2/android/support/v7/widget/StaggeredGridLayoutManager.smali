.class public final Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/bj;
.source "SourceFile"


# instance fields
.field private A:Z

.field private final B:Ljava/lang/Runnable;

.field a:Landroid/support/v7/widget/av;

.field b:Landroid/support/v7/widget/av;

.field c:Z

.field d:I

.field e:I

.field f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private g:I

.field private l:[Landroid/support/v7/widget/ct;

.field private m:I

.field private n:I

.field private o:Landroid/support/v7/widget/ad;

.field private p:Z

.field private q:Ljava/util/BitSet;

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field private v:I

.field private w:I

.field private x:I

.field private final y:Landroid/support/v7/widget/cp;

.field private z:Z


# direct methods
.method private static a(III)I
    .locals 2

    .prologue
    .line 987
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 995
    :cond_0
    :goto_0
    return p0

    .line 990
    :cond_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 991
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 992
    :cond_2
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ad;Landroid/support/v7/widget/bu;)I
    .locals 17

    .prologue
    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Ljava/util/BitSet;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 1247
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ad;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v3, v3, Landroid/support/v7/widget/ad;->a:I

    add-int/2addr v2, v3

    .line 1250
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v3, v3, Landroid/support/v7/widget/ad;->e:I

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v4}, Landroid/support/v7/widget/av;->f()I

    move-result v4

    add-int/2addr v3, v4

    move v4, v3

    move v3, v2

    .line 1258
    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ad;->d:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(II)V

    .line 1261
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    move v5, v2

    .line 1265
    :cond_0
    :goto_1
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ad;->b:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ad;->b:I

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/bu;->a()I

    move-result v6

    if-ge v2, v6, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1266
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ad;->b:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bo;->a(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/ad;->b:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/support/v7/widget/ad;->c:I

    add-int/2addr v2, v6

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/ad;->b:I

    .line 1267
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cq;

    .line 1268
    move-object/from16 v0, p2

    iget v6, v0, Landroid/support/v7/widget/ad;->d:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 1269
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v14, v6, v7}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;IZ)V

    .line 1273
    :goto_3
    iget-boolean v6, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;II)V

    .line 1275
    :goto_4
    invoke-virtual {v2}, Landroid/support/v7/widget/cq;->c()I

    move-result v15

    .line 1276
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    array-length v7, v7

    if-lt v15, v7, :cond_9

    :cond_1
    const/4 v6, -0x1

    move v7, v6

    .line 1278
    :goto_5
    const/4 v6, -0x1

    if-ne v7, v6, :cond_a

    const/4 v6, 0x1

    move v13, v6

    .line 1279
    :goto_6
    if-eqz v13, :cond_14

    .line 1280
    iget-boolean v6, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    const/4 v7, 0x0

    aget-object v11, v6, v7

    .line 1281
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v6, v15}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)V

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iget v7, v11, Landroid/support/v7/widget/ct;->e:I

    aput v7, v6, v15

    .line 1294
    :goto_7
    move-object/from16 v0, p2

    iget v6, v0, Landroid/support/v7/widget/ad;->d:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    .line 1295
    iget-boolean v6, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)I

    move-result v6

    .line 1297
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v7

    add-int v8, v6, v7

    .line 1298
    if-eqz v13, :cond_2e

    iget-boolean v7, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v7, :cond_2e

    .line 1300
    new-instance v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v7, v7, [I

    iput-object v7, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    const/4 v7, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v7, v10, :cond_16

    iget-object v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v12, v12, v7

    invoke-virtual {v12, v6}, Landroid/support/v7/widget/ct;->b(I)I

    move-result v12

    sub-int v12, v6, v12

    aput v12, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1254
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v3, v3, Landroid/support/v7/widget/ad;->a:I

    sub-int/2addr v2, v3

    .line 1255
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v3, v3, Landroid/support/v7/widget/ad;->e:I

    sub-int v3, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v4}, Landroid/support/v7/widget/av;->b()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v3

    move v3, v2

    goto/16 :goto_0

    .line 1261
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    move v5, v2

    goto/16 :goto_1

    .line 1265
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1271
    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v14, v6, v7}, Landroid/support/v7/widget/bj;->a(Landroid/view/View;IZ)V

    goto/16 :goto_3

    .line 1273
    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;II)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;II)V

    goto/16 :goto_4

    .line 1276
    :cond_9
    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    aget v6, v6, v15

    move v7, v6

    goto/16 :goto_5

    .line 1278
    :cond_a
    const/4 v6, 0x0

    move v13, v6

    goto/16 :goto_6

    .line 1280
    :cond_b
    move-object/from16 v0, p2

    iget v6, v0, Landroid/support/v7/widget/ad;->d:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:I

    if-nez v7, :cond_e

    const/4 v7, -0x1

    if-ne v6, v7, :cond_c

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eq v6, v7, :cond_d

    const/4 v6, 0x1

    :goto_b
    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v8, v6, -0x1

    const/4 v7, -0x1

    const/4 v6, -0x1

    :goto_c
    move-object/from16 v0, p2

    iget v9, v0, Landroid/support/v7/widget/ad;->d:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    const/4 v11, 0x0

    const v9, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v10}, Landroid/support/v7/widget/av;->b()I

    move-result v16

    move v12, v8

    :goto_d
    if-eq v12, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v10, v8, v12

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/ct;->b(I)I

    move-result v8

    if-ge v8, v9, :cond_30

    move-object v9, v10

    :goto_e
    add-int v10, v12, v6

    move v12, v10

    move-object v11, v9

    move v9, v8

    goto :goto_d

    :cond_c
    const/4 v6, 0x0

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    goto :goto_b

    :cond_e
    const/4 v7, -0x1

    if-ne v6, v7, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ne v6, v7, :cond_10

    const/4 v6, 0x1

    :goto_10
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()Z

    move-result v7

    if-ne v6, v7, :cond_11

    const/4 v6, 0x1

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    :cond_10
    const/4 v6, 0x0

    goto :goto_10

    :cond_11
    const/4 v6, 0x0

    goto :goto_b

    :cond_12
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 v6, 0x1

    goto :goto_c

    :cond_13
    const/4 v11, 0x0

    const/high16 v9, -0x80000000

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v10}, Landroid/support/v7/widget/av;->c()I

    move-result v16

    move v12, v8

    :goto_11
    if-eq v12, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v10, v8, v12

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/ct;->a(I)I

    move-result v8

    if-le v8, v9, :cond_2f

    move-object v9, v10

    :goto_12
    add-int v10, v12, v6

    move v12, v10

    move-object v11, v9

    move v9, v8

    goto :goto_11

    .line 1289
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v11, v6, v7

    goto/16 :goto_7

    .line 1295
    :cond_15
    invoke-virtual {v11, v5}, Landroid/support/v7/widget/ct;->b(I)I

    move-result v6

    goto/16 :goto_8

    .line 1301
    :cond_16
    const/4 v7, -0x1

    iput v7, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1302
    iput v15, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1303
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    move v7, v6

    move v6, v8

    .line 1319
    :goto_13
    iget-boolean v8, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v8, :cond_17

    move-object/from16 v0, p2

    iget v8, v0, Landroid/support/v7/widget/ad;->c:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_17

    if-eqz v13, :cond_17

    .line 1320
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 1323
    :cond_17
    iput-object v11, v2, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    .line 1324
    move-object/from16 v0, p2

    iget v8, v0, Landroid/support/v7/widget/ad;->d:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1f

    iget-boolean v8, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v8, :cond_1c

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v8, v8, -0x1

    :goto_14
    if-ltz v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v9, v9, v8

    invoke-virtual {v9, v14}, Landroid/support/v7/widget/ct;->b(Landroid/view/View;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_14

    .line 1306
    :cond_18
    iget-boolean v6, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)I

    move-result v6

    .line 1308
    :goto_15
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v7

    sub-int v8, v6, v7

    .line 1309
    if-eqz v13, :cond_1b

    iget-boolean v7, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v7, :cond_1b

    .line 1311
    new-instance v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v7, v7, [I

    iput-object v7, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    const/4 v7, 0x0

    :goto_16
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v7, v10, :cond_1a

    iget-object v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v12, v12, v7

    invoke-virtual {v12, v6}, Landroid/support/v7/widget/ct;->a(I)I

    move-result v12

    sub-int/2addr v12, v6

    aput v12, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 1306
    :cond_19
    invoke-virtual {v11, v5}, Landroid/support/v7/widget/ct;->a(I)I

    move-result v6

    goto :goto_15

    .line 1312
    :cond_1a
    const/4 v7, 0x1

    iput v7, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1313
    iput v15, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1314
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_1b
    move v7, v8

    goto/16 :goto_13

    .line 1324
    :cond_1c
    iget-object v8, v2, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    invoke-virtual {v8, v14}, Landroid/support/v7/widget/ct;->b(Landroid/view/View;)V

    .line 1325
    :cond_1d
    :goto_17
    iget-boolean v8, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v8, :cond_21

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v8}, Landroid/support/v7/widget/av;->b()I

    move-result v8

    .line 1328
    :goto_18
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v9, v14}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v9

    add-int/2addr v9, v8

    .line 1329
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_22

    .line 1330
    invoke-static {v14, v8, v7, v9, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IIII)V

    .line 1335
    :goto_19
    iget-boolean v2, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v2, :cond_23

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v2, v2, Landroid/support/v7/widget/ad;->d:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(II)V

    .line 1340
    :goto_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v2, v2, Landroid/support/v7/widget/ad;->d:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_27

    invoke-virtual {v11}, Landroid/support/v7/widget/ct;->a()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/ct;->a(I)I

    move-result v6

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v2, v7, :cond_24

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v7, v7, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ct;->a(I)I

    move-result v7

    if-le v7, v6, :cond_1e

    move v6, v7

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1324
    :cond_1f
    iget-boolean v8, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v8, :cond_20

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v8, v8, -0x1

    :goto_1c
    if-ltz v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v9, v9, v8

    invoke-virtual {v9, v14}, Landroid/support/v7/widget/ct;->a(Landroid/view/View;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1c

    :cond_20
    iget-object v8, v2, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    invoke-virtual {v8, v14}, Landroid/support/v7/widget/ct;->a(Landroid/view/View;)V

    goto :goto_17

    .line 1325
    :cond_21
    iget v8, v11, Landroid/support/v7/widget/ct;->e:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    mul-int/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v9}, Landroid/support/v7/widget/av;->b()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_18

    .line 1332
    :cond_22
    invoke-static {v14, v7, v8, v6, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;IIII)V

    goto :goto_19

    .line 1338
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v2, v2, Landroid/support/v7/widget/ad;->d:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ct;II)V

    goto :goto_1a

    .line 1340
    :cond_24
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v6}, Landroid/support/v7/widget/av;->d()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v7}, Landroid/support/v7/widget/av;->b()I

    move-result v7

    sub-int/2addr v6, v7

    add-int v7, v2, v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v6, v2

    :goto_1d
    if-ltz v6, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v2

    if-le v2, v7, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cq;

    iget-boolean v9, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v9, :cond_25

    const/4 v2, 0x0

    :goto_1e
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v2, v9, :cond_26

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Landroid/support/v7/widget/ct;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_25
    iget-object v2, v2, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    invoke-virtual {v2}, Landroid/support/v7/widget/ct;->d()V

    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/bo;)V

    add-int/lit8 v2, v6, -0x1

    move v6, v2

    goto :goto_1d

    :cond_27
    invoke-virtual {v11}, Landroid/support/v7/widget/ct;->b()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/ct;->b(I)I

    move-result v6

    const/4 v2, 0x1

    :goto_1f
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v2, v7, :cond_29

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v7, v7, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ct;->b(I)I

    move-result v7

    if-ge v7, v6, :cond_28

    move v6, v7

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_29
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v6}, Landroid/support/v7/widget/av;->d()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v7}, Landroid/support/v7/widget/av;->b()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v6, v2, v6

    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v2

    if-ge v2, v6, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cq;

    iget-boolean v8, v2, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v8, :cond_2a

    const/4 v2, 0x0

    :goto_21
    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v2, v8, :cond_2b

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/support/v7/widget/ct;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2a
    iget-object v2, v2, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    invoke-virtual {v2}, Landroid/support/v7/widget/ct;->e()V

    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/bo;)V

    goto :goto_20

    .line 1345
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v2, v2, Landroid/support/v7/widget/ad;->d:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2d

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)I

    move-result v2

    .line 1347
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v5, v5, Landroid/support/v7/widget/ad;->a:I

    sub-int v2, v3, v2

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1350
    :goto_22
    return v2

    .line 1349
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)I

    move-result v2

    .line 1350
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v5, v5, Landroid/support/v7/widget/ad;->a:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_22

    :cond_2e
    move v7, v6

    move v6, v8

    goto/16 :goto_13

    :cond_2f
    move v8, v9

    move-object v9, v11

    goto/16 :goto_12

    :cond_30
    move v8, v9

    move-object v9, v11

    goto/16 :goto_e
.end method

.method private a(Z)Landroid/view/View;
    .locals 6

    .prologue
    .line 1069
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    .line 1070
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v3

    .line 1071
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v4

    .line 1072
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    .line 1073
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1074
    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v5

    if-lt v5, v2, :cond_1

    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v5

    if-gt v5, v3, :cond_1

    .line 1079
    :goto_1
    return-object v0

    .line 1072
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1079
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(ILandroid/support/v7/widget/bu;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1128
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput v3, v2, Landroid/support/v7/widget/ad;->a:I

    .line 1129
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput p1, v2, Landroid/support/v7/widget/ad;->b:I

    .line 1130
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1131
    iget v2, p2, Landroid/support/v7/widget/bu;->a:I

    .line 1132
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ge v2, p1, :cond_0

    move v2, v0

    :goto_0
    if-eq v4, v2, :cond_1

    .line 1133
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v3}, Landroid/support/v7/widget/av;->e()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/ad;->e:I

    .line 1140
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput v1, v2, Landroid/support/v7/widget/ad;->d:I

    .line 1141
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v3, :cond_2

    :goto_2
    iput v0, v2, Landroid/support/v7/widget/ad;->c:I

    .line 1143
    return-void

    :cond_0
    move v2, v3

    .line 1132
    goto :goto_0

    .line 1138
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput v3, v2, Landroid/support/v7/widget/ad;->e:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1141
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)V
    .locals 2

    .prologue
    .line 1097
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(I)I

    move-result v0

    .line 1098
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->c()I

    move-result v1

    sub-int v0, v1, v0

    .line 1100
    if-lez v0, :cond_0

    .line 1101
    neg-int v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v1

    neg-int v1, v1

    .line 1105
    sub-int/2addr v0, v1

    .line 1106
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1107
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->a(I)V

    .line 1109
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/ct;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1439
    iget v0, p1, Landroid/support/v7/widget/ct;->d:I

    .line 1440
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1441
    invoke-virtual {p1}, Landroid/support/v7/widget/ct;->a()I

    move-result v1

    .line 1442
    add-int/2addr v0, v1

    if-ge v0, p3, :cond_0

    .line 1443
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/ct;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/ct;->b()I

    move-result v1

    .line 1447
    sub-int v0, v1, v0

    if-le v0, p3, :cond_0

    .line 1448
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/ct;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;II)V
    .locals 5

    .prologue
    .line 977
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 978
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cq;

    .line 979
    iget v2, v0, Landroid/support/v7/widget/cq;->leftMargin:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/cq;->rightMargin:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-static {p2, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v2

    .line 981
    iget v3, v0, Landroid/support/v7/widget/cq;->topMargin:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/support/v7/widget/cq;->bottomMargin:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-static {p3, v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    .line 983
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 984
    return-void
.end method

.method private b(Z)Landroid/view/View;
    .locals 5

    .prologue
    .line 1083
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    .line 1084
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v3

    .line 1085
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 1086
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1087
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v4

    if-lt v4, v2, :cond_1

    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, v3, :cond_1

    .line 1092
    :cond_0
    :goto_1
    return-object v0

    .line 1085
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1092
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1209
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v0

    .line 1210
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(I)I

    .line 1211
    packed-switch p3, :pswitch_data_0

    .line 1225
    :goto_1
    :pswitch_0
    add-int v1, p1, p2

    if-gt v1, v0, :cond_2

    .line 1233
    :cond_0
    :goto_2
    return-void

    .line 1209
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    goto :goto_0

    .line 1213
    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_1

    .line 1216
    :pswitch_2
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    goto :goto_1

    .line 1220
    :pswitch_3
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    .line 1221
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_1

    .line 1229
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    .line 1230
    :goto_3
    if-gt p1, v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    goto :goto_2

    .line 1229
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v0

    goto :goto_3

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private b(ILandroid/support/v7/widget/bu;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1146
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput v2, v1, Landroid/support/v7/widget/ad;->a:I

    .line 1147
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput p1, v1, Landroid/support/v7/widget/ad;->b:I

    .line 1148
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1149
    iget v1, p2, Landroid/support/v7/widget/bu;->a:I

    .line 1150
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-le v1, p1, :cond_1

    move v1, v0

    :goto_0
    if-eq v3, v1, :cond_2

    .line 1151
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->e()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/ad;->e:I

    .line 1158
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput v0, v1, Landroid/support/v7/widget/ad;->d:I

    .line 1159
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, v1, Landroid/support/v7/widget/ad;->c:I

    .line 1161
    return-void

    :cond_1
    move v1, v2

    .line 1150
    goto :goto_0

    .line 1156
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput v2, v1, Landroid/support/v7/widget/ad;->e:I

    goto :goto_1
.end method

.method private b(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)V
    .locals 2

    .prologue
    .line 1113
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)I

    move-result v0

    .line 1114
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v1}, Landroid/support/v7/widget/av;->b()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1116
    if-lez v0, :cond_0

    .line 1117
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v1

    .line 1121
    sub-int/2addr v0, v1

    .line 1122
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1123
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/av;->a(I)V

    .line 1125
    :cond_0
    return-void
.end method

.method private static b(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    .line 1418
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cq;

    .line 1425
    iget v1, v0, Landroid/support/v7/widget/cq;->leftMargin:I

    add-int/2addr v1, p1

    iget v2, v0, Landroid/support/v7/widget/cq;->topMargin:I

    add-int/2addr v2, p2

    iget v3, v0, Landroid/support/v7/widget/cq;->rightMargin:I

    sub-int v3, p3, v3

    iget v0, v0, Landroid/support/v7/widget/cq;->bottomMargin:I

    sub-int v0, p4, v0

    invoke-static {p0, v1, v2, v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1427
    return-void
.end method

.method private d(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1678
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()V

    .line 1680
    if-lez p1, :cond_1

    .line 1681
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput v1, v2, Landroid/support/v7/widget/ad;->d:I

    .line 1682
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v3, :cond_0

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/ad;->c:I

    .line 1684
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v0

    .line 1691
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v2, v2, Landroid/support/v7/widget/ad;->c:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/ad;->b:I

    .line 1692
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1693
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput v1, v0, Landroid/support/v7/widget/ad;->a:I

    .line 1694
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->e()I

    move-result v0

    :goto_2
    iput v0, v2, Landroid/support/v7/widget/ad;->e:I

    .line 1695
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ad;Landroid/support/v7/widget/bu;)I

    move-result v0

    .line 1697
    if-ge v1, v0, :cond_4

    .line 1708
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/av;->a(I)V

    .line 1710
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Z

    .line 1711
    return p1

    :cond_0
    move v0, v1

    .line 1682
    goto :goto_0

    .line 1686
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iput v0, v2, Landroid/support/v7/widget/ad;->d:I

    .line 1687
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v3, :cond_2

    :goto_4
    iput v1, v2, Landroid/support/v7/widget/ad;->c:I

    .line 1689
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    goto :goto_1

    :cond_2
    move v1, v0

    .line 1687
    goto :goto_4

    .line 1694
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1699
    :cond_4
    if-gez p1, :cond_5

    .line 1700
    neg-int p1, v0

    goto :goto_3

    :cond_5
    move p1, v0

    .line 1702
    goto :goto_3
.end method

.method private f(I)I
    .locals 3

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ct;->a(I)I

    move-result v1

    .line 1466
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1467
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ct;->a(I)I

    move-result v2

    .line 1468
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1466
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1472
    :cond_1
    return v1
.end method

.method private f(II)V
    .locals 2

    .prologue
    .line 1430
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_1

    .line 1431
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1432
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ct;II)V

    .line 1430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1436
    :cond_1
    return-void
.end method

.method private g(I)I
    .locals 3

    .prologue
    .line 1476
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ct;->b(I)I

    move-result v1

    .line 1477
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1478
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ct;->b(I)I

    move-result v2

    .line 1479
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1477
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1483
    :cond_1
    return v1
.end method

.method private g(Landroid/support/v7/widget/bu;)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 909
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 912
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/by;->a(Landroid/support/v7/widget/bu;Landroid/support/v7/widget/av;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/bj;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private h(Landroid/support/v7/widget/bu;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 929
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 932
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/by;->a(Landroid/support/v7/widget/bu;Landroid/support/v7/widget/av;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/bj;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private i(Landroid/support/v7/widget/bu;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 949
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 952
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    if-nez v0, :cond_2

    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->A:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/by;->b(Landroid/support/v7/widget/bu;Landroid/support/v7/widget/av;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/bj;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private q()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    if-nez v0, :cond_0

    .line 489
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/bj;I)Landroid/support/v7/widget/av;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    .line 490
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:I

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/av;->a(Landroid/support/v7/widget/bj;I)Landroid/support/v7/widget/av;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    .line 492
    new-instance v0, Landroid/support/v7/widget/ad;

    invoke-direct {v0}, Landroid/support/v7/widget/ad;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    .line 494
    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 503
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()Z

    move-result v1

    if-nez v1, :cond_2

    .line 504
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    .line 506
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    .line 508
    return-void

    .line 506
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 511
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

.method private t()I
    .locals 1

    .prologue
    .line 1715
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    .line 1716
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private u()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1720
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v1

    .line 1721
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 1607
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 905
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final a()Landroid/support/v7/widget/bk;
    .locals 1

    .prologue
    .line 1759
    new-instance v0, Landroid/support/v7/widget/cq;

    invoke-direct {v0}, Landroid/support/v7/widget/cq;-><init>()V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/bk;
    .locals 1

    .prologue
    .line 1765
    new-instance v0, Landroid/support/v7/widget/cq;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/cq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/bk;
    .locals 1

    .prologue
    .line 1770
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1771
    new-instance v0, Landroid/support/v7/widget/cq;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/cq;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1773
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/cq;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/cq;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1187
    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1000
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1001
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1002
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    .line 1006
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bo;)V
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 266
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ct;->c()V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/high16 v10, -0x80000000

    const/4 v1, 0x0

    .line 528
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()V

    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p2}, Landroid/support/v7/widget/bu;->a()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:I

    .line 532
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->y:Landroid/support/v7/widget/cp;

    .line 533
    iput v4, v5, Landroid/support/v7/widget/cp;->a:I

    iput v10, v5, Landroid/support/v7/widget/cp;->b:I

    iput-boolean v1, v5, Landroid/support/v7/widget/cp;->c:Z

    iput-boolean v1, v5, Landroid/support/v7/widget/cp;->d:Z

    .line 535
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_e

    .line 536
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ct;->c()V

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aget v2, v2, v0

    if-eq v2, v10, :cond_0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v6}, Landroid/support/v7/widget/av;->c()I

    move-result v6

    add-int/2addr v2, v6

    :cond_0
    :goto_1
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v6, v6, v0

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/ct;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v6}, Landroid/support/v7/widget/av;->b()I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    if-eq v2, v0, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    :cond_4
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()V

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, v4, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/cp;->c:Z

    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    if-le v0, v3, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->c:Ljava/util/List;

    .line 542
    :cond_5
    :goto_3
    iget-boolean v0, p2, Landroid/support/v7/widget/bu;->i:Z

    if-nez v0, :cond_6

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-ne v0, v4, :cond_f

    :cond_6
    move v0, v1

    :goto_4
    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Z

    if-eqz v0, :cond_25

    invoke-virtual {p2}, Landroid/support/v7/widget/bu;->a()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5
    if-ltz v2, :cond_24

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_23

    if-ge v0, v6, :cond_23

    :cond_7
    :goto_6
    iput v0, v5, Landroid/support/v7/widget/cp;->a:I

    iput v10, v5, Landroid/support/v7/widget/cp;->b:I

    .line 544
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_a

    .line 545
    iget-boolean v0, v5, Landroid/support/v7/widget/cp;->c:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Z

    if-ne v0, v2, :cond_9

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()Z

    move-result v0

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    if-eq v0, v2, :cond_a

    .line 547
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 548
    iput-boolean v3, v5, Landroid/support/v7/widget/cp;->d:Z

    .line 552
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-gtz v0, :cond_2e

    .line 554
    :cond_b
    iget-boolean v0, v5, Landroid/support/v7/widget/cp;->d:Z

    if-eqz v0, :cond_28

    move v0, v1

    .line 555
    :goto_7
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_2e

    .line 557
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ct;->c()V

    .line 558
    iget v2, v5, Landroid/support/v7/widget/cp;->b:I

    if-eq v2, v10, :cond_c

    .line 559
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v2, v2, v0

    iget v6, v5, Landroid/support/v7/widget/cp;->b:I

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/ct;->c(I)V

    .line 555
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 536
    :cond_d
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/cp;->c:Z

    goto/16 :goto_2

    .line 538
    :cond_e
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()V

    .line 539
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/cp;->c:Z

    goto/16 :goto_3

    .line 542
    :cond_f
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-ltz v0, :cond_10

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    invoke-virtual {p2}, Landroid/support/v7/widget/bu;->a()I

    move-result v2

    if-lt v0, v2, :cond_11

    :cond_10
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    move v0, v1

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, v4, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-gtz v0, :cond_22

    :cond_12
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v0

    :goto_8
    iput v0, v5, Landroid/support/v7/widget/cp;->a:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    if-eq v0, v10, :cond_15

    iget-boolean v0, v5, Landroid/support/v7/widget/cp;->c:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/cp;->b:I

    :goto_9
    move v0, v3

    goto/16 :goto_4

    :cond_13
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    goto :goto_8

    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    add-int/2addr v0, v6

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/cp;->b:I

    goto :goto_9

    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v6}, Landroid/support/v7/widget/av;->e()I

    move-result v6

    if-le v0, v6, :cond_17

    iget-boolean v0, v5, Landroid/support/v7/widget/cp;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    :goto_a
    iput v0, v5, Landroid/support/v7/widget/cp;->b:I

    :goto_b
    move v0, v3

    goto/16 :goto_4

    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v0

    goto :goto_a

    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v6}, Landroid/support/v7/widget/av;->b()I

    move-result v6

    sub-int/2addr v0, v6

    if-gez v0, :cond_18

    neg-int v0, v0

    iput v0, v5, Landroid/support/v7/widget/cp;->b:I

    goto :goto_b

    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_19

    iput v0, v5, Landroid/support/v7/widget/cp;->b:I

    goto :goto_b

    :cond_19
    iput v10, v5, Landroid/support/v7/widget/cp;->b:I

    goto :goto_b

    :cond_1a
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v0, v5, Landroid/support/v7/widget/cp;->a:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    if-ne v0, v10, :cond_20

    iget v0, v5, Landroid/support/v7/widget/cp;->a:I

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v2

    if-nez v2, :cond_1b

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-nez v0, :cond_1d

    move v0, v4

    :goto_c
    if-ne v0, v3, :cond_1e

    move v0, v3

    :goto_d
    iput-boolean v0, v5, Landroid/support/v7/widget/cp;->c:Z

    iget-boolean v0, v5, Landroid/support/v7/widget/cp;->c:Z

    if-eqz v0, :cond_1f

    iget-object v0, v5, Landroid/support/v7/widget/cp;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()I

    move-result v0

    :goto_e
    iput v0, v5, Landroid/support/v7/widget/cp;->b:I

    :goto_f
    iput-boolean v3, v5, Landroid/support/v7/widget/cp;->d:Z

    goto :goto_b

    :cond_1b
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v2

    if-ge v0, v2, :cond_1c

    move v0, v3

    :goto_10
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eq v0, v2, :cond_1d

    move v0, v4

    goto :goto_c

    :cond_1c
    move v0, v1

    goto :goto_10

    :cond_1d
    move v0, v3

    goto :goto_c

    :cond_1e
    move v0, v1

    goto :goto_d

    :cond_1f
    iget-object v0, v5, Landroid/support/v7/widget/cp;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->b()I

    move-result v0

    goto :goto_e

    :cond_20
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    iget-boolean v2, v5, Landroid/support/v7/widget/cp;->c:Z

    if-eqz v2, :cond_21

    iget-object v2, v5, Landroid/support/v7/widget/cp;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    sub-int v0, v2, v0

    iput v0, v5, Landroid/support/v7/widget/cp;->b:I

    goto :goto_f

    :cond_21
    iget-object v2, v5, Landroid/support/v7/widget/cp;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/cp;->b:I

    goto :goto_f

    :cond_22
    iput v10, v5, Landroid/support/v7/widget/cp;->b:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v0, v5, Landroid/support/v7/widget/cp;->a:I

    goto/16 :goto_b

    :cond_23
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_5

    :cond_24
    move v0, v1

    goto/16 :goto_6

    :cond_25
    invoke-virtual {p2}, Landroid/support/v7/widget/bu;->a()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v7

    move v2, v1

    :goto_11
    if-ge v2, v7, :cond_27

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_26

    if-lt v0, v6, :cond_7

    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_27
    move v0, v1

    goto/16 :goto_6

    :cond_28
    move v2, v1

    .line 563
    :goto_12
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v2, v0, :cond_2e

    .line 564
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v6, v0, v2

    iget-boolean v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iget v8, v5, Landroid/support/v7/widget/cp;->b:I

    if-eqz v7, :cond_2b

    invoke-virtual {v6, v10}, Landroid/support/v7/widget/ct;->b(I)I

    move-result v0

    :goto_13
    invoke-virtual {v6}, Landroid/support/v7/widget/ct;->c()V

    if-eq v0, v10, :cond_2a

    if-eqz v7, :cond_29

    iget-object v9, v6, Landroid/support/v7/widget/ct;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v9, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v9}, Landroid/support/v7/widget/av;->c()I

    move-result v9

    if-lt v0, v9, :cond_2a

    :cond_29
    if-nez v7, :cond_2c

    iget-object v7, v6, Landroid/support/v7/widget/ct;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v7}, Landroid/support/v7/widget/av;->b()I

    move-result v7

    if-le v0, v7, :cond_2c

    .line 563
    :cond_2a
    :goto_14
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    .line 564
    :cond_2b
    invoke-virtual {v6, v10}, Landroid/support/v7/widget/ct;->a(I)I

    move-result v0

    goto :goto_13

    :cond_2c
    if-eq v8, v10, :cond_2d

    add-int/2addr v0, v8

    :cond_2d
    iput v0, v6, Landroid/support/v7/widget/ct;->c:I

    iput v0, v6, Landroid/support/v7/widget/ct;->b:I

    goto :goto_14

    .line 568
    :cond_2e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bo;)V

    .line 569
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    .line 570
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->e()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    div-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/av;

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->e()I

    move-result v0

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v:I

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:I

    if-ne v0, v3, :cond_32

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:I

    .line 571
    :goto_15
    iget-boolean v0, v5, Landroid/support/v7/widget/cp;->c:Z

    if-eqz v0, :cond_33

    .line 573
    iget v0, v5, Landroid/support/v7/widget/cp;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/bu;)V

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ad;Landroid/support/v7/widget/bu;)I

    .line 576
    iget v0, v5, Landroid/support/v7/widget/cp;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/bu;)V

    .line 577
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v2, v0, Landroid/support/v7/widget/ad;->b:I

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v6, v6, Landroid/support/v7/widget/ad;->c:I

    add-int/2addr v2, v6

    iput v2, v0, Landroid/support/v7/widget/ad;->b:I

    .line 578
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ad;Landroid/support/v7/widget/bu;)I

    .line 589
    :goto_16
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_2f

    .line 590
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_34

    .line 591
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)V

    .line 592
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)V

    .line 599
    :cond_2f
    :goto_17
    iget-boolean v0, p2, Landroid/support/v7/widget/bu;->i:Z

    if-nez v0, :cond_31

    .line 600
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_30

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-eq v0, v4, :cond_30

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v0, :cond_30

    .line 602
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 604
    :cond_30
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 605
    iput v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 607
    :cond_31
    iget-boolean v0, v5, Landroid/support/v7/widget/cp;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Z

    .line 608
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 610
    return-void

    .line 570
    :cond_32
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->x:I

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->w:I

    goto :goto_15

    .line 581
    :cond_33
    iget v0, v5, Landroid/support/v7/widget/cp;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ILandroid/support/v7/widget/bu;)V

    .line 582
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ad;Landroid/support/v7/widget/bu;)I

    .line 584
    iget v0, v5, Landroid/support/v7/widget/cp;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/bu;)V

    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v2, v0, Landroid/support/v7/widget/ad;->b:I

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    iget v6, v6, Landroid/support/v7/widget/ad;->c:I

    add-int/2addr v2, v6

    iput v2, v0, Landroid/support/v7/widget/ad;->b:I

    .line 586
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Landroid/support/v7/widget/ad;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/ad;Landroid/support/v7/widget/bu;)I

    goto :goto_16

    .line 594
    :cond_34
    invoke-direct {p0, p1, p2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)V

    .line 595
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;Z)V

    goto :goto_17
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 463
    invoke-super {p0, p1}, Landroid/support/v7/widget/bj;->a(Ljava/lang/String;)V

    .line 465
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/bk;)Z
    .locals 1

    .prologue
    .line 1779
    instance-of v0, p1, Landroid/support/v7/widget/cq;

    return v0
.end method

.method public final b(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 1613
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 920
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v4, -0x80000000

    .line 1010
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1011
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1055
    :goto_0
    return-object v0

    .line 1013
    :cond_0
    new-instance v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1014
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 1015
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 1016
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 1018
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v0, :cond_2

    .line 1019
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 1020
    iget-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    array-length v0, v0

    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 1021
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->c:Ljava/util/List;

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 1026
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_7

    .line 1027
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v0

    :goto_2
    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1029
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1030
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 1031
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [I

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    move v0, v2

    .line 1032
    :goto_5
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_8

    .line 1034
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Z

    if-eqz v1, :cond_6

    .line 1035
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ct;->b(I)I

    move-result v1

    .line 1036
    if-eq v1, v4, :cond_1

    .line 1037
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1045
    :cond_1
    :goto_6
    iget-object v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aput v1, v2, v0

    .line 1032
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1023
    :cond_2
    iput v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    goto :goto_1

    .line 1027
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    goto :goto_2

    .line 1029
    :cond_4
    invoke-direct {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_4

    .line 1040
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ct;->a(I)I

    move-result v1

    .line 1041
    if-eq v1, v4, :cond_1

    .line 1042
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2}, Landroid/support/v7/widget/av;->b()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_6

    .line 1048
    :cond_7
    iput v1, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1049
    iput v1, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1050
    iput v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    :cond_8
    move-object v0, v3

    .line 1055
    goto/16 :goto_0
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 1181
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1182
    return-void
.end method

.method public final c(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 925
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 1165
    invoke-super {p0, p1}, Landroid/support/v7/widget/bj;->c(I)V

    .line 1166
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 1167
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ct;->d(I)V

    .line 1166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1169
    :cond_0
    return-void
.end method

.method public final c(II)V
    .locals 1

    .prologue
    .line 1202
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1203
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1601
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:I

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
    .line 940
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 1173
    invoke-super {p0, p1}, Landroid/support/v7/widget/bj;->d(I)V

    .line 1174
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 1175
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:[Landroid/support/v7/widget/ct;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ct;->d(I)V

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    :cond_0
    return-void
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1198
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1596
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:I

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
    .line 945
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final e(I)V
    .locals 13

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:I

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    move v7, v0

    move v8, v1

    :goto_1
    if-nez v8, :cond_12

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-instance v9, Ljava/util/BitSet;

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-direct {v9, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 v3, 0x1

    invoke-virtual {v9, v0, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, -0x1

    const/4 v0, -0x1

    move v6, v0

    :goto_3
    if-ge v1, v6, :cond_5

    const/4 v0, 0x1

    move v3, v0

    :goto_4
    move v5, v1

    :goto_5
    if-eq v5, v6, :cond_11

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cq;

    iget-object v1, v0, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    iget v1, v1, Landroid/support/v7/widget/ct;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    iget-boolean v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Landroid/support/v7/widget/ct;->b()I

    move-result v1

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v10}, Landroid/support/v7/widget/av;->c()I

    move-result v10

    if-ge v1, v10, :cond_7

    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_8

    move-object v0, v4

    :goto_7
    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    :goto_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bj;->k:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v0

    move v7, v0

    move v8, v1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    move v2, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move v6, v1

    move v1, v0

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    move v3, v0

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/widget/ct;->a()I

    move-result v1

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v10}, Landroid/support/v7/widget/av;->b()I

    move-result v10

    if-le v1, v10, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    iget-object v1, v0, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    iget v1, v1, Landroid/support/v7/widget/ct;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    :cond_9
    iget-boolean v1, v0, Landroid/support/v7/widget/cq;->f:Z

    if-nez v1, :cond_10

    add-int v1, v5, v3

    if-eq v1, v6, :cond_10

    add-int v1, v5, v3

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v10

    const/4 v1, 0x0

    iget-boolean v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v11, :cond_c

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v11, v4}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v12, v10}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v12

    if-ge v11, v12, :cond_a

    move-object v0, v4

    goto :goto_7

    :cond_a
    if-ne v11, v12, :cond_b

    const/4 v1, 0x1

    :cond_b
    :goto_9
    if-eqz v1, :cond_10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/cq;

    iget-object v0, v0, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    iget v0, v0, Landroid/support/v7/widget/ct;->e:I

    iget-object v1, v1, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    iget v1, v1, Landroid/support/v7/widget/ct;->e:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_e

    const/4 v0, 0x1

    move v1, v0

    :goto_a
    if-gez v2, :cond_f

    const/4 v0, 0x1

    :goto_b
    if-eq v1, v0, :cond_10

    move-object v0, v4

    goto :goto_7

    :cond_c
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v11, v4}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v11

    iget-object v12, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v12, v10}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v12

    if-le v11, v12, :cond_d

    move-object v0, v4

    goto/16 :goto_7

    :cond_d
    if-ne v11, v12, :cond_b

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    move v1, v0

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    goto :goto_b

    :cond_10
    add-int v0, v5, v3

    move v5, v0

    goto/16 :goto_5

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_12
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_13

    const/4 v0, -0x1

    :goto_c
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v1, v8, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(III)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->z:Z

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x1

    goto :goto_c

    :cond_14
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v3, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v8, v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(III)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto/16 :goto_8

    :cond_15
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto/16 :goto_8
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

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
    .line 960
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/bu;)I

    move-result v0

    return v0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 1192
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f()V

    .line 1193
    return-void
.end method
