.class public abstract Landroid/support/v7/widget/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Landroid/view/View;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/bj;

.field private final g:Landroid/support/v7/widget/bt;


# direct methods
.method static synthetic a(Landroid/support/v7/widget/bs;II)V
    .locals 2

    .prologue
    .line 6587
    iget-boolean v0, p0, Landroid/support/v7/widget/bs;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bs;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bs;->a()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/bs;->b:Z

    iget-object v0, p0, Landroid/support/v7/widget/bs;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/bs;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bs;->a(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/bs;->a:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bs;->d:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/bs;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, p0, Landroid/support/v7/widget/bs;->g:Landroid/support/v7/widget/bt;

    iget-object v0, p0, Landroid/support/v7/widget/bs;->g:Landroid/support/v7/widget/bt;

    iget-object v1, p0, Landroid/support/v7/widget/bs;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/bt;->a(Landroid/support/v7/widget/bt;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/bs;->a()V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/bs;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/bs;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iget-object v0, p0, Landroid/support/v7/widget/bs;->g:Landroid/support/v7/widget/bt;

    iget-object v0, p0, Landroid/support/v7/widget/bs;->g:Landroid/support/v7/widget/bt;

    iget-object v1, p0, Landroid/support/v7/widget/bs;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/bt;->a(Landroid/support/v7/widget/bt;Landroid/support/v7/widget/RecyclerView;)V

    :cond_3
    return-void

    :cond_4
    const-string v0, "RecyclerView"

    const-string v1, "Passed over target position while smooth scrolling."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/bs;->d:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 6722
    iget-object v0, p0, Landroid/support/v7/widget/bs;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 6651
    iget-boolean v0, p0, Landroid/support/v7/widget/bs;->c:Z

    if-nez v0, :cond_0

    .line 6665
    :goto_0
    return-void

    .line 6654
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bs;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/bu;

    iput v2, v0, Landroid/support/v7/widget/bu;->a:I

    .line 6656
    iput-object v1, p0, Landroid/support/v7/widget/bs;->d:Landroid/view/View;

    .line 6657
    iput v2, p0, Landroid/support/v7/widget/bs;->a:I

    .line 6658
    iput-boolean v3, p0, Landroid/support/v7/widget/bs;->b:Z

    .line 6659
    iput-boolean v3, p0, Landroid/support/v7/widget/bs;->c:Z

    .line 6661
    iget-object v0, p0, Landroid/support/v7/widget/bs;->f:Landroid/support/v7/widget/bj;

    invoke-static {v0, p0}, Landroid/support/v7/widget/bj;->a(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/bs;)V

    .line 6663
    iput-object v1, p0, Landroid/support/v7/widget/bs;->f:Landroid/support/v7/widget/bj;

    .line 6664
    iput-object v1, p0, Landroid/support/v7/widget/bs;->e:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method
