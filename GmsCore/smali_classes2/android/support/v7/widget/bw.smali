.class final Landroid/support/v7/widget/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field private b:I

.field private c:I

.field private d:Landroid/support/v4/widget/z;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2636
    iput-object p1, p0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2627
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bw;->e:Landroid/view/animation/Interpolator;

    .line 2631
    iput-boolean v1, p0, Landroid/support/v7/widget/bw;->f:Z

    .line 2634
    iput-boolean v1, p0, Landroid/support/v7/widget/bw;->g:Z

    .line 2637
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/z;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/z;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bw;->d:Landroid/support/v4/widget/z;

    .line 2638
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 2771
    iget-boolean v0, p0, Landroid/support/v7/widget/bw;->f:Z

    if-eqz v0, :cond_0

    .line 2772
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bw;->g:Z

    .line 2776
    :goto_0
    return-void

    .line 2774
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 2838
    iget-object v0, p0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2839
    iget-object v0, p0, Landroid/support/v7/widget/bw;->d:Landroid/support/v4/widget/z;

    invoke-virtual {v0}, Landroid/support/v4/widget/z;->f()V

    .line 2840
    return-void
.end method

.method public final a(II)V
    .locals 3

    .prologue
    .line 2779
    iget-object v0, p0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 2780
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/bw;->c:I

    iput v0, p0, Landroid/support/v7/widget/bw;->b:I

    .line 2781
    iget-object v0, p0, Landroid/support/v7/widget/bw;->d:Landroid/support/v4/widget/z;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/v4/widget/z;->a(IIII)V

    .line 2783
    invoke-direct {p0}, Landroid/support/v7/widget/bw;->b()V

    .line 2784
    return-void
.end method

.method public final a(III)V
    .locals 1

    .prologue
    .line 2823
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/bw;->a(IIILandroid/view/animation/Interpolator;)V

    .line 2824
    return-void
.end method

.method public final a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2827
    iget-object v0, p0, Landroid/support/v7/widget/bw;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 2828
    iput-object p4, p0, Landroid/support/v7/widget/bw;->e:Landroid/view/animation/Interpolator;

    .line 2829
    iget-object v0, p0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/z;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/z;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bw;->d:Landroid/support/v4/widget/z;

    .line 2831
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 2832
    iput v1, p0, Landroid/support/v7/widget/bw;->c:I

    iput v1, p0, Landroid/support/v7/widget/bw;->b:I

    .line 2833
    iget-object v0, p0, Landroid/support/v7/widget/bw;->d:Landroid/support/v4/widget/z;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/z;->a(IIIII)V

    .line 2834
    invoke-direct {p0}, Landroid/support/v7/widget/bw;->b()V

    .line 2835
    return-void
.end method

.method public final b(II)V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 2787
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    :goto_1
    div-int/lit8 v6, v1, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v12

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v6

    int-to-float v6, v6

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    float-to-double v8, v5

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    if-lez v4, :cond_2

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/bw;->a(III)V

    .line 2788
    return-void

    .line 2787
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v12

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3
.end method

.method public final run()V
    .locals 20

    .prologue
    .line 2642
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v7/widget/bw;->g:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v7/widget/bw;->f:Z

    .line 2643
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)V

    .line 2646
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/bw;->d:Landroid/support/v4/widget/z;

    .line 2647
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bj;

    move-result-object v3

    iget-object v12, v3, Landroid/support/v7/widget/bj;->j:Landroid/support/v7/widget/bs;

    .line 2648
    invoke-virtual {v11}, Landroid/support/v4/widget/z;->e()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2649
    invoke-virtual {v11}, Landroid/support/v4/widget/z;->a()I

    move-result v13

    .line 2650
    invoke-virtual {v11}, Landroid/support/v4/widget/z;->b()I

    move-result v14

    .line 2651
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bw;->b:I

    sub-int v15, v13, v3

    .line 2652
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/bw;->c:I

    sub-int v16, v14, v3

    .line 2653
    const/4 v6, 0x0

    .line 2654
    const/4 v4, 0x0

    .line 2655
    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/bw;->b:I

    .line 2656
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v7/widget/bw;->c:I

    .line 2657
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2658
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 2659
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 2660
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 2661
    if-eqz v15, :cond_0

    .line 2662
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bj;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v5, v15, v6, v7}, Landroid/support/v7/widget/bj;->a(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v6

    .line 2663
    sub-int v5, v15, v6

    .line 2665
    :cond_0
    if-eqz v16, :cond_1

    .line 2666
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bj;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bo;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4, v7}, Landroid/support/v7/widget/bj;->b(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I

    move-result v4

    .line 2667
    sub-int v3, v16, v4

    .line 2669
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2671
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v7}, Landroid/support/v7/widget/o;->a()I

    move-result v9

    .line 2672
    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_5

    .line 2673
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v10

    .line 2674
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v7

    .line 2675
    if-eqz v7, :cond_3

    iget-object v0, v7, Landroid/support/v7/widget/bx;->h:Landroid/support/v7/widget/bx;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 2676
    iget-object v0, v7, Landroid/support/v7/widget/bx;->h:Landroid/support/v7/widget/bx;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v7, v7, Landroid/support/v7/widget/bx;->h:Landroid/support/v7/widget/bx;

    iget-object v7, v7, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 2678
    :goto_1
    if-eqz v7, :cond_3

    .line 2679
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v17

    .line 2680
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    .line 2681
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    if-eq v10, v0, :cond_3

    .line 2683
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v18

    add-int v18, v18, v17

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v19

    add-int v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v7, v0, v10, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2672
    :cond_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 2676
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 2692
    :cond_5
    if-eqz v12, :cond_6

    iget-boolean v7, v12, Landroid/support/v7/widget/bs;->b:Z

    if-nez v7, :cond_6

    iget-boolean v7, v12, Landroid/support/v7/widget/bs;->c:Z

    if-eqz v7, :cond_6

    .line 2694
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v7}, Landroid/support/v7/widget/bu;->a()I

    move-result v7

    .line 2695
    if-nez v7, :cond_17

    .line 2696
    invoke-virtual {v12}, Landroid/support/v7/widget/bs;->a()V

    .line 2704
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 2705
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    :cond_7
    move v7, v3

    move v8, v5

    move v9, v4

    move v10, v6

    .line 2707
    if-ne v15, v10, :cond_19

    move/from16 v0, v16

    if-ne v0, v9, :cond_19

    const/4 v3, 0x1

    .line 2708
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2709
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 2711
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/ax;->a(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    .line 2713
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    move/from16 v0, v16

    invoke-static {v4, v15, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 2715
    :cond_9
    if-nez v8, :cond_a

    if-eqz v7, :cond_f

    .line 2716
    :cond_a
    iget-object v4, v11, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    iget-object v5, v11, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    invoke-interface {v4, v5}, Landroid/support/v4/widget/aa;->d(Ljava/lang/Object;)F

    move-result v4

    float-to-int v5, v4

    .line 2718
    const/4 v4, 0x0

    .line 2719
    if-eq v8, v13, :cond_1f

    .line 2720
    if-gez v8, :cond_1a

    neg-int v4, v5

    :goto_4
    move v6, v4

    .line 2723
    :goto_5
    const/4 v4, 0x0

    .line 2724
    if-eq v7, v14, :cond_1e

    .line 2725
    if-gez v7, :cond_1c

    neg-int v5, v5

    .line 2728
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/ax;->a(Landroid/view/View;)I

    move-result v4

    const/4 v15, 0x2

    if-eq v4, v15, :cond_c

    .line 2730
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    .line 2732
    :cond_c
    if-nez v6, :cond_d

    if-eq v8, v13, :cond_d

    invoke-virtual {v11}, Landroid/support/v4/widget/z;->c()I

    move-result v4

    if-nez v4, :cond_f

    :cond_d
    if-nez v5, :cond_e

    if-eq v7, v14, :cond_e

    invoke-virtual {v11}, Landroid/support/v4/widget/z;->d()I

    move-result v4

    if-nez v4, :cond_f

    .line 2734
    :cond_e
    invoke-virtual {v11}, Landroid/support/v4/widget/z;->f()V

    .line 2737
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bm;

    move-result-object v4

    if-eqz v4, :cond_11

    if-nez v10, :cond_10

    if-eqz v9, :cond_11

    .line 2738
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bm;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 2741
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 2742
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 2745
    :cond_12
    iget-object v4, v11, Landroid/support/v4/widget/z;->b:Landroid/support/v4/widget/aa;

    iget-object v5, v11, Landroid/support/v4/widget/z;->a:Ljava/lang/Object;

    invoke-interface {v4, v5}, Landroid/support/v4/widget/aa;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    if-nez v3, :cond_1d

    .line 2746
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/bw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 2752
    :cond_14
    :goto_7
    if-eqz v12, :cond_15

    iget-boolean v3, v12, Landroid/support/v7/widget/bs;->b:Z

    if-eqz v3, :cond_15

    .line 2753
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v3, v4}, Landroid/support/v7/widget/bs;->a(Landroid/support/v7/widget/bs;II)V

    .line 2755
    :cond_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/support/v7/widget/bw;->f:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/bw;->g:Z

    if-eqz v3, :cond_16

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/bw;->b()V

    .line 2756
    :cond_16
    return-void

    .line 2697
    :cond_17
    iget v8, v12, Landroid/support/v7/widget/bs;->a:I

    if-lt v8, v7, :cond_18

    .line 2698
    add-int/lit8 v7, v7, -0x1

    iput v7, v12, Landroid/support/v7/widget/bs;->a:I

    .line 2699
    :cond_18
    sub-int v7, v15, v5

    sub-int v8, v16, v3

    invoke-static {v12, v7, v8}, Landroid/support/v7/widget/bs;->a(Landroid/support/v7/widget/bs;II)V

    goto/16 :goto_2

    .line 2707
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2720
    :cond_1a
    if-lez v8, :cond_1b

    move v4, v5

    goto/16 :goto_4

    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2725
    :cond_1c
    if-gtz v7, :cond_b

    const/4 v5, 0x0

    goto/16 :goto_6

    .line 2748
    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/bw;->b()V

    goto :goto_7

    :cond_1e
    move v5, v4

    goto/16 :goto_6

    :cond_1f
    move v6, v4

    goto/16 :goto_5
.end method
