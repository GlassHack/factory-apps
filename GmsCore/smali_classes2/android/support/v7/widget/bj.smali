.class public abstract Landroid/support/v7/widget/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field h:Landroid/support/v7/widget/o;

.field i:Landroid/support/v7/widget/RecyclerView;

.field j:Landroid/support/v7/widget/bs;

.field k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bj;->k:Z

    return-void
.end method

.method public static a(IIIZ)I
    .locals 4

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 5323
    sub-int v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5327
    if-eqz p3, :cond_2

    .line 5328
    if-ltz p2, :cond_1

    .line 5349
    :cond_0
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    move p2, v1

    .line 5335
    goto :goto_0

    .line 5338
    :cond_2
    if-gez p2, :cond_0

    .line 5341
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    move p2, v2

    .line 5343
    goto :goto_0

    .line 5344
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    .line 5346
    const/high16 v0, -0x80000000

    move p2, v2

    goto :goto_0

    :cond_4
    move v0, v1

    move p2, v1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 4772
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    invoke-virtual {v0}, Landroid/support/v7/widget/bk;->c()I

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/bs;)V
    .locals 1

    .prologue
    .line 4236
    iget-object v0, p0, Landroid/support/v7/widget/bj;->j:Landroid/support/v7/widget/bs;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/bj;->j:Landroid/support/v7/widget/bs;

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    .line 5408
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v0, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    .line 5409
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p3, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p4, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 5411
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/bj;)Z
    .locals 1

    .prologue
    .line 4236
    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->k:Z

    return v0
.end method

.method public static b(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 5362
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v0, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    .line 5363
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/bj;)Z
    .locals 1

    .prologue
    .line 4236
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bj;->k:Z

    return v0
.end method

.method public static c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 5376
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v0, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    .line 5377
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 5422
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v0, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    return v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 5434
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v0, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 5446
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v0, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method private f(I)V
    .locals 4

    .prologue
    .line 4746
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bj;->b(I)Landroid/view/View;

    move-result-object v0

    .line 4747
    if-eqz v0, :cond_0

    .line 4748
    iget-object v0, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->a(I)I

    move-result v1

    iget-object v2, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v2, v1}, Landroid/support/v7/widget/q;->b(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v3, v1}, Landroid/support/v7/widget/q;->a(I)V

    iget-object v3, v0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4750
    :cond_0
    return-void
.end method

.method public static g(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 5458
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    iget-object v0, v0, Landroid/support/v7/widget/bk;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method private g(I)V
    .locals 3

    .prologue
    .line 4856
    iget-object v0, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->a(I)I

    move-result v1

    iget-object v2, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v2, v1}, Landroid/support/v7/widget/q;->c(I)V

    iget-object v0, v0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->c(I)Z

    .line 4857
    return-void
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 4501
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 5802
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a()Landroid/support/v7/widget/bk;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/bk;
    .locals 1

    .prologue
    .line 4484
    new-instance v0, Landroid/support/v7/widget/bk;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/bk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/bk;
    .locals 1

    .prologue
    .line 4460
    instance-of v0, p1, Landroid/support/v7/widget/bk;

    if-eqz v0, :cond_0

    .line 4461
    new-instance v0, Landroid/support/v7/widget/bk;

    check-cast p1, Landroid/support/v7/widget/bk;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/bk;-><init>(Landroid/support/v7/widget/bk;)V

    .line 4465
    :goto_0
    return-object v0

    .line 4462
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 4463
    new-instance v0, Landroid/support/v7/widget/bk;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/bk;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 4465
    :cond_1
    new-instance v0, Landroid/support/v7/widget/bk;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/bk;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 4800
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->h()I

    move-result v2

    .line 4801
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 4802
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bj;->b(I)Landroid/view/View;

    move-result-object v0

    .line 4803
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v3

    .line 4804
    if-eqz v3, :cond_1

    .line 4805
    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->c()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->b()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-boolean v4, v4, Landroid/support/v7/widget/bu;->i:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->l()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4812
    :cond_0
    :goto_1
    return-object v0

    .line 4801
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4812
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 5736
    return-void
.end method

.method public final a(ILandroid/support/v7/widget/bo;)V
    .locals 1

    .prologue
    .line 4976
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bj;->b(I)Landroid/view/View;

    move-result-object v0

    .line 4977
    invoke-direct {p0, p1}, Landroid/support/v7/widget/bj;->f(I)V

    .line 4978
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/bo;->a(Landroid/view/View;)V

    .line 4979
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 5954
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bo;)V
    .locals 0

    .prologue
    .line 4348
    return-void
.end method

.method public final a(Landroid/support/v7/widget/bo;)V
    .locals 4

    .prologue
    .line 5198
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->h()I

    move-result v0

    .line 5199
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    .line 5200
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->b(I)Landroid/view/View;

    move-result-object v1

    .line 5201
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->l()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/bx;->j()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v3

    iget-boolean v3, v3, Landroid/support/v7/widget/bd;->a:Z

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/bj;->f(I)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/bo;->a(Landroid/support/v7/widget/bx;)V

    .line 5199
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5201
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/bj;->g(I)V

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v1

    iput-object p1, v1, Landroid/support/v7/widget/bx;->j:Landroid/support/v7/widget/bo;

    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/bx;->l()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/support/v7/widget/bo;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bd;

    move-result-object v2

    iget-boolean v2, v2, Landroid/support/v7/widget/bd;->a:Z

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p1, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v2, p1, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    :cond_5
    iget-object v2, p1, Landroid/support/v7/widget/bo;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5203
    :cond_6
    return-void
.end method

.method public a(Landroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)V
    .locals 2

    .prologue
    .line 4412
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4413
    return-void
.end method

.method final a(Landroid/support/v7/widget/bo;Z)V
    .locals 4

    .prologue
    .line 5235
    iget-object v0, p1, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5236
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 5237
    iget-object v0, p1, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bx;

    iget-object v0, v0, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    .line 5238
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->b()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5239
    if-eqz p2, :cond_0

    .line 5242
    iget-object v3, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 5244
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bo;->b(Landroid/view/View;)V

    .line 5236
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5246
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/bo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5247
    if-eqz p2, :cond_3

    if-lez v2, :cond_3

    .line 5248
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 5250
    :cond_3
    return-void
.end method

.method a(Landroid/view/View;IZ)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, -0x1

    .line 4672
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v3

    .line 4673
    if-nez p3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4675
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 4684
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    .line 4685
    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4686
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4687
    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->e()V

    .line 4691
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2, v7}, Landroid/support/v7/widget/o;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 4716
    :cond_2
    :goto_2
    iget-boolean v1, v0, Landroid/support/v7/widget/bk;->d:Z

    if-eqz v1, :cond_3

    .line 4720
    iget-object v1, v3, Landroid/support/v7/widget/bx;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4721
    iput-boolean v7, v0, Landroid/support/v7/widget/bk;->d:Z

    .line 4723
    :cond_3
    return-void

    .line 4682
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    goto :goto_0

    .line 4689
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/widget/bx;->g()V

    goto :goto_1

    .line 4695
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v4, :cond_d

    .line 4697
    iget-object v1, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    iget-object v4, v1, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/q;->a(Landroid/view/View;)I

    move-result v4

    if-ne v4, v2, :cond_8

    move v1, v2

    .line 4698
    :goto_3
    if-ne p2, v2, :cond_7

    .line 4699
    iget-object v4, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    invoke-virtual {v4}, Landroid/support/v7/widget/o;->a()I

    move-result p2

    .line 4701
    :cond_7
    if-ne v1, v2, :cond_a

    .line 4702
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4697
    :cond_8
    iget-object v5, v1, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/p;->b(I)Z

    move-result v5

    if-eqz v5, :cond_9

    move v1, v2

    goto :goto_3

    :cond_9
    iget-object v1, v1, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/p;->d(I)I

    move-result v1

    sub-int v1, v4, v1

    goto :goto_3

    .line 4706
    :cond_a
    if-eq v1, p2, :cond_2

    .line 4707
    iget-object v2, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bj;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/bj;->b(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {v2, v1}, Landroid/support/v7/widget/bj;->g(I)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bk;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/bx;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/bx;->l()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v2, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6, v4}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    :goto_4
    iget-object v2, v2, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    invoke-virtual {v5}, Landroid/support/v7/widget/bx;->l()Z

    move-result v5

    invoke-virtual {v2, v4, p2, v1, v5}, Landroid/support/v7/widget/o;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_2

    :cond_c
    iget-object v6, v2, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6, v4}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    goto :goto_4

    .line 4710
    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    invoke-virtual {v1, p1, p2, v7}, Landroid/support/v7/widget/o;->a(Landroid/view/View;IZ)V

    .line 4711
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bk;->c:Z

    .line 4712
    iget-object v1, p0, Landroid/support/v7/widget/bj;->j:Landroid/support/v7/widget/bs;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/bj;->j:Landroid/support/v7/widget/bs;

    iget-boolean v1, v1, Landroid/support/v7/widget/bs;->c:Z

    if-eqz v1, :cond_2

    .line 4713
    iget-object v1, p0, Landroid/support/v7/widget/bj;->j:Landroid/support/v7/widget/bs;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/bs;->a(Landroid/view/View;)I

    move-result v2

    iget v4, v1, Landroid/support/v7/widget/bs;->a:I

    if-ne v2, v4, :cond_2

    iput-object p1, v1, Landroid/support/v7/widget/bs;->d:Landroid/view/View;

    goto/16 :goto_2
.end method

.method public final a(Landroid/view/View;Landroid/support/v7/widget/bo;)V
    .locals 3

    .prologue
    .line 4965
    iget-object v0, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    iget-object v1, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/q;->a(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/q;

    invoke-interface {v2, v1}, Landroid/support/v7/widget/q;->a(I)V

    iget-object v2, v0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/p;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4966
    :cond_0
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/bo;->a(Landroid/view/View;)V

    .line 4967
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4286
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4287
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 4289
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5606
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->k()I

    move-result v0

    .line 5607
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->l()I

    move-result v4

    .line 5608
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->i()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->m()I

    move-result v5

    sub-int v5, v1, v5

    .line 5609
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->j()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->n()I

    move-result v6

    sub-int v6, v1, v6

    .line 5610
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v7, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v7

    .line 5611
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    .line 5612
    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v1

    .line 5613
    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v7

    .line 5615
    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5616
    sub-int v0, v7, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5617
    sub-int v0, v8, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5618
    sub-int v5, v9, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 5623
    invoke-static {p1}, Landroid/support/v4/view/ax;->g(Landroid/view/View;)I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 5624
    if-eqz v0, :cond_2

    :goto_0
    move v1, v0

    .line 5630
    :cond_0
    :goto_1
    if-eqz v4, :cond_4

    move v0, v4

    .line 5632
    :goto_2
    if-nez v1, :cond_1

    if-eqz v0, :cond_6

    .line 5633
    :cond_1
    if-eqz p4, :cond_5

    .line 5634
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :goto_3
    move v0, v3

    .line 5640
    :goto_4
    return v0

    :cond_2
    move v0, v1

    .line 5624
    goto :goto_0

    .line 5626
    :cond_3
    if-nez v1, :cond_0

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v5

    .line 5630
    goto :goto_2

    .line 5636
    :cond_5
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_3

    :cond_6
    move v0, v2

    .line 5640
    goto :goto_4
.end method

.method public a(Landroid/support/v7/widget/bk;)Z
    .locals 1

    .prologue
    .line 4443
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 4518
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 5847
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 5948
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 4997
    iget-object v0, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/o;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 0

    .prologue
    .line 5746
    return-void
.end method

.method public c(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 5787
    const/4 v0, 0x0

    return v0
.end method

.method public c(ILandroid/support/v7/widget/bo;Landroid/support/v7/widget/bu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 5566
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 5130
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5131
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 5133
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 0

    .prologue
    .line 5756
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 4528
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 5832
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 5142
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5143
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->b(I)V

    .line 5145
    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 0

    .prologue
    .line 5772
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 4538
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 5817
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 5974
    return-void
.end method

.method public final e(II)V
    .locals 4

    .prologue
    .line 5880
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 5881
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 5882
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 5883
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 5885
    sparse-switch v2, :sswitch_data_0

    .line 5895
    iget-object v1, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ax;->l(Landroid/view/View;)I

    move-result v1

    .line 5899
    :sswitch_0
    sparse-switch v3, :sswitch_data_1

    .line 5906
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ax;->m(Landroid/view/View;)I

    move-result v0

    .line 5910
    :sswitch_1
    iget-object v2, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;II)V

    .line 5911
    return-void

    .line 5885
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 5899
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 4312
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/support/v7/widget/bu;)I
    .locals 1

    .prologue
    .line 5862
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 4260
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4261
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4263
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 4585
    iget-object v0, p0, Landroid/support/v7/widget/bj;->j:Landroid/support/v7/widget/bs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->j:Landroid/support/v7/widget/bs;

    iget-boolean v0, v0, Landroid/support/v7/widget/bs;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 4988
    iget-object v0, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->h:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 5006
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 5015
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 5024
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 5033
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 5042
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 5051
    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 0

    .prologue
    .line 5724
    return-void
.end method

.method final p()V
    .locals 1

    .prologue
    .line 5957
    iget-object v0, p0, Landroid/support/v7/widget/bj;->j:Landroid/support/v7/widget/bs;

    if-eqz v0, :cond_0

    .line 5958
    iget-object v0, p0, Landroid/support/v7/widget/bj;->j:Landroid/support/v7/widget/bs;

    invoke-virtual {v0}, Landroid/support/v7/widget/bs;->a()V

    .line 5960
    :cond_0
    return-void
.end method
