.class public final Landroid/support/v7/widget/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field final c:Ljava/util/ArrayList;

.field final d:Ljava/util/List;

.field final synthetic e:Landroid/support/v7/widget/RecyclerView;

.field private f:I

.field private g:Landroid/support/v7/widget/bn;

.field private h:Landroid/support/v7/widget/bv;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 3027
    iput-object p1, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    .line 3029
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    .line 3031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    .line 3033
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bo;->d:Ljava/util/List;

    .line 3036
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/bo;->f:I

    return-void
.end method

.method private a()Landroid/support/v7/widget/bn;
    .locals 1

    .prologue
    .line 3792
    iget-object v0, p0, Landroid/support/v7/widget/bo;->g:Landroid/support/v7/widget/bn;

    if-nez v0, :cond_0

    .line 3793
    new-instance v0, Landroid/support/v7/widget/bn;

    invoke-direct {v0}, Landroid/support/v7/widget/bn;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bo;->g:Landroid/support/v7/widget/bn;

    .line 3795
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bo;->g:Landroid/support/v7/widget/bn;

    return-object v0
.end method

.method private a(IZ)Landroid/support/v7/widget/bx;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3580
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 3583
    :goto_0
    if-ge v3, v4, :cond_2

    .line 3584
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 3585
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->f()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->h()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v5, v5, Landroid/support/v7/widget/bu;->i:Z

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->l()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3587
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bx;->a(I)V

    .line 3623
    :goto_1
    return-object v0

    .line 3583
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3598
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/o;

    iget-object v0, v4, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_5

    iget-object v0, v4, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v6, v4, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v6, v0}, Landroid/support/v7/widget/q;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/bx;->c()I

    move-result v7

    if-ne v7, p1, :cond_4

    invoke-virtual {v6}, Landroid/support/v7/widget/bx;->h()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3600
    :goto_3
    if-eqz v0, :cond_3

    .line 3602
    iget-object v3, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/bf;

    iget-object v4, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/bf;->c(Landroid/support/v7/widget/bx;)V

    .line 3607
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3608
    :goto_4
    if-ge v2, v3, :cond_7

    .line 3609
    iget-object v0, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 3612
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->h()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 3613
    iget-object v1, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3598
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3

    .line 3608
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 3623
    goto :goto_1
.end method

.method private a(JIZ)Landroid/support/v7/widget/bx;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 3628
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3629
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 3630
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 3631
    iget-wide v2, v0, Landroid/support/v7/widget/bx;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3632
    iget v2, v0, Landroid/support/v7/widget/bx;->e:I

    if-nez v2, :cond_1

    .line 3633
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bx;->a(I)V

    .line 3634
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3643
    iget-object v1, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v1, v1, Landroid/support/v7/widget/bu;->i:Z

    if-nez v1, :cond_0

    .line 3644
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bx;->a(II)V

    .line 3673
    :cond_0
    :goto_1
    return-object v0

    .line 3649
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3652
    iget-object v2, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 3653
    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bo;->b(Landroid/view/View;)V

    .line 3629
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3659
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3660
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 3661
    iget-object v0, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 3662
    iget-wide v2, v0, Landroid/support/v7/widget/bx;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 3663
    iget v2, v0, Landroid/support/v7/widget/bx;->e:I

    if-nez v2, :cond_4

    .line 3664
    iget-object v2, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3668
    :cond_4
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bo;->b(I)Z

    .line 3660
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 3673
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 3342
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3343
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3344
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 3345
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/bo;->a(Landroid/view/ViewGroup;Z)V

    .line 3342
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3348
    :cond_1
    if-nez p2, :cond_2

    .line 3360
    :goto_1
    return-void

    .line 3352
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 3353
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3354
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 3356
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 3357
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3358
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private c(I)Landroid/support/v7/widget/bx;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 3542
    iget-object v0, p0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 3567
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 3546
    :goto_1
    if-ge v3, v4, :cond_3

    .line 3547
    iget-object v0, p0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 3548
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->f()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->c()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 3549
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/bx;->a(I)V

    goto :goto_0

    .line 3546
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 3554
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget-boolean v0, v0, Landroid/support/v7/widget/bd;->a:Z

    if-eqz v0, :cond_5

    .line 3555
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/l;->a(II)I

    move-result v0

    .line 3556
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/bd;->b()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 3557
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    .line 3558
    :goto_2
    if-ge v2, v4, :cond_5

    .line 3559
    iget-object v0, p0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 3560
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->f()Z

    move-result v3

    if-nez v3, :cond_4

    iget-wide v6, v0, Landroid/support/v7/widget/bx;->d:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    .line 3561
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/bx;->a(I)V

    goto :goto_0

    .line 3558
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 3567
    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/bx;)V
    .locals 1

    .prologue
    .line 3677
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3678
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bp;

    .line 3680
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3681
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    .line 3683
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    if-eqz v0, :cond_2

    .line 3684
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bu;->a(Landroid/support/v7/widget/bx;)V

    .line 3687
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3204
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0}, Landroid/support/v7/widget/bu;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v2}, Landroid/support/v7/widget/bu;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v0, v0, Landroid/support/v7/widget/bu;->i:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1}, Landroid/support/v7/widget/bo;->c(I)Landroid/support/v7/widget/bx;

    move-result-object v1

    if-eqz v1, :cond_3

    move v0, v2

    :goto_0
    move-object v10, v1

    move v1, v0

    move-object v0, v10

    :goto_1
    if-nez v0, :cond_6

    invoke-direct {p0, p1, v3}, Landroid/support/v7/widget/bo;->a(IZ)Landroid/support/v7/widget/bx;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->l()Z

    move-result v4

    if-nez v4, :cond_9

    iget v4, v0, Landroid/support/v7/widget/bx;->b:I

    if-ltz v4, :cond_2

    iget v4, v0, Landroid/support/v7/widget/bx;->b:I

    iget-object v6, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/bd;->b()I

    move-result v6

    if-lt v4, v6, :cond_4

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v4, v4, Landroid/support/v7/widget/bu;->i:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    iget v4, v0, Landroid/support/v7/widget/bx;->b:I

    iget v4, v0, Landroid/support/v7/widget/bx;->e:I

    if-eqz v4, :cond_8

    move v4, v3

    :goto_2
    if-nez v4, :cond_b

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/bx;->a(I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->d()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->e()V

    :cond_5
    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bo;->a(Landroid/support/v7/widget/bx;)V

    move-object v0, v5

    :cond_6
    :goto_4
    if-nez v0, :cond_1b

    iget-object v4, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/l;->a(I)I

    move-result v4

    if-ltz v4, :cond_7

    iget-object v6, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/bd;->b()I

    move-result v6

    if-lt v4, v6, :cond_c

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v2}, Landroid/support/v7/widget/bu;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v4, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v4

    iget-boolean v4, v4, Landroid/support/v7/widget/bd;->a:Z

    if-eqz v4, :cond_9

    iget-wide v6, v0, Landroid/support/v7/widget/bx;->d:J

    iget-object v4, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    iget v4, v0, Landroid/support/v7/widget/bx;->b:I

    cmp-long v4, v6, v8

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_2

    :cond_9
    move v4, v2

    goto :goto_2

    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->f()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->g()V

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_4

    :cond_c
    iget-object v6, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    iget-object v6, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v6

    iget-boolean v6, v6, Landroid/support/v7/widget/bd;->a:Z

    if-eqz v6, :cond_1a

    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    invoke-direct {p0, v8, v9, v3, v3}, Landroid/support/v7/widget/bo;->a(JIZ)Landroid/support/v7/widget/bx;

    move-result-object v0

    if-eqz v0, :cond_1a

    iput v4, v0, Landroid/support/v7/widget/bx;->b:I

    move v4, v2

    :goto_5
    if-nez v0, :cond_e

    iget-object v1, p0, Landroid/support/v7/widget/bo;->h:Landroid/support/v7/widget/bv;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v7/widget/bo;->h:Landroid/support/v7/widget/bv;

    invoke-virtual {v1}, Landroid/support/v7/widget/bv;->a()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/support/v7/widget/bo;->a()Landroid/support/v7/widget/bn;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    iget-object v0, v0, Landroid/support/v7/widget/bn;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_6
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->m()V

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    iget-object v0, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/bo;->a(Landroid/view/ViewGroup;Z)V

    :cond_f
    move-object v0, v1

    :cond_10
    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    invoke-virtual {v0}, Landroid/support/v7/widget/bd;->a()Landroid/support/v7/widget/bx;

    move-result-object v0

    iput v3, v0, Landroid/support/v7/widget/bx;->e:I

    move-object v1, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v0, v0, Landroid/support/v7/widget/bu;->i:Z

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    iput p1, v1, Landroid/support/v7/widget/bx;->f:I

    move v5, v3

    :goto_8
    iget-object v0, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v6, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    iput-object v1, v0, Landroid/support/v7/widget/bk;->a:Landroid/support/v7/widget/bx;

    if-eqz v4, :cond_17

    if-eqz v5, :cond_17

    :goto_a
    iput-boolean v2, v0, Landroid/support/v7/widget/bk;->d:Z

    iget-object v0, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    return-object v0

    :cond_11
    move-object v1, v5

    goto :goto_6

    :cond_12
    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->i()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->h()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/l;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/l;->a(I)I

    move-result v0

    iget-object v5, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Landroid/support/v7/widget/bd;->a(Landroid/support/v7/widget/bx;I)V

    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v0, v0, Landroid/support/v7/widget/bu;->i:Z

    if-eqz v0, :cond_14

    iput p1, v1, Landroid/support/v7/widget/bx;->f:I

    :cond_14
    move v5, v2

    goto :goto_8

    :cond_15
    iget-object v6, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v6, v1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_16
    check-cast v0, Landroid/support/v7/widget/bk;

    goto :goto_9

    :cond_17
    move v2, v3

    goto :goto_a

    :cond_18
    move v5, v3

    goto :goto_8

    :cond_19
    move-object v1, v0

    goto :goto_7

    :cond_1a
    move v4, v1

    goto/16 :goto_5

    :cond_1b
    move v4, v1

    move-object v1, v0

    goto/16 :goto_7

    :cond_1c
    move-object v0, v5

    move v1, v3

    goto/16 :goto_1
.end method

.method final a(Landroid/support/v7/widget/bx;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3431
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->d()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3432
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->d()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 3438
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3442
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->n()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3444
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->h()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v2, v2, Landroid/support/v7/widget/bu;->i:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->l()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->j()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3447
    iget-object v2, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/bo;->f:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    .line 3448
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 3449
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/bo;->b(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3450
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3454
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/bo;->f:I

    if-ge v2, v3, :cond_6

    .line 3455
    iget-object v1, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 3459
    :cond_6
    if-nez v1, :cond_7

    .line 3460
    invoke-direct {p0}, Landroid/support/v7/widget/bo;->a()Landroid/support/v7/widget/bn;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bn;->a(Landroid/support/v7/widget/bx;)V

    .line 3461
    invoke-direct {p0, p1}, Landroid/support/v7/widget/bo;->c(Landroid/support/v7/widget/bx;)V

    .line 3469
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bu;->a(Landroid/support/v7/widget/bx;)V

    .line 3470
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3375
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v0

    .line 3376
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3377
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->e()V

    .line 3381
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bo;->a(Landroid/support/v7/widget/bx;)V

    .line 3382
    return-void

    .line 3378
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3379
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->g()V

    goto :goto_0
.end method

.method final b(Landroid/support/v7/widget/bx;)V
    .locals 1

    .prologue
    .line 3518
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3519
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3523
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/bx;->j:Landroid/support/v7/widget/bo;

    .line 3524
    invoke-virtual {p1}, Landroid/support/v7/widget/bx;->g()V

    .line 3525
    return-void

    .line 3521
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3478
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v0

    .line 3479
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/bx;->j:Landroid/support/v7/widget/bo;

    .line 3480
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->g()V

    .line 3481
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bo;->a(Landroid/support/v7/widget/bx;)V

    .line 3482
    return-void
.end method

.method final b(I)Z
    .locals 2

    .prologue
    .line 3412
    iget-object v0, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    .line 3416
    invoke-virtual {v0}, Landroid/support/v7/widget/bx;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3417
    invoke-direct {p0}, Landroid/support/v7/widget/bo;->a()Landroid/support/v7/widget/bn;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bn;->a(Landroid/support/v7/widget/bx;)V

    .line 3418
    invoke-direct {p0, v0}, Landroid/support/v7/widget/bo;->c(Landroid/support/v7/widget/bx;)V

    .line 3419
    iget-object v0, p0, Landroid/support/v7/widget/bo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3420
    const/4 v0, 0x1

    .line 3422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
