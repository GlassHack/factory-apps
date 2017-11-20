.class final Landroid/support/v7/widget/ax;
.super Landroid/support/v7/widget/av;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bj;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/av;-><init>(Landroid/support/v7/widget/bj;B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    .line 318
    iget-object v1, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-static {p1}, Landroid/support/v7/widget/bj;->e(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/bk;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bj;->d(I)V

    .line 284
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->l()I

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    .line 311
    iget-object v1, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-static {p1}, Landroid/support/v7/widget/bj;->g(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/bk;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->j()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v1}, Landroid/support/v7/widget/bj;->n()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    .line 295
    iget-object v1, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-static {p1}, Landroid/support/v7/widget/bj;->c(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/bk;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/bk;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->j()I

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    .line 303
    iget-object v1, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-static {p1}, Landroid/support/v7/widget/bj;->b(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/bk;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/bk;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->j()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v1}, Landroid/support/v7/widget/bj;->l()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v1}, Landroid/support/v7/widget/bj;->n()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/ax;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->n()I

    move-result v0

    return v0
.end method
