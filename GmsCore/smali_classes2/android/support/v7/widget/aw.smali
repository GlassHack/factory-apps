.class final Landroid/support/v7/widget/aw;
.super Landroid/support/v7/widget/av;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/widget/bj;)V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/av;-><init>(Landroid/support/v7/widget/bj;B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    .line 242
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-static {p1}, Landroid/support/v7/widget/bj;->d(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/bk;->leftMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bj;->c(I)V

    .line 208
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->k()I

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    .line 235
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-static {p1}, Landroid/support/v7/widget/bj;->f(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/bk;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->i()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v1}, Landroid/support/v7/widget/bj;->m()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    .line 219
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-static {p1}, Landroid/support/v7/widget/bj;->b(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/bk;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/bk;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->i()I

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bk;

    .line 227
    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-static {p1}, Landroid/support/v7/widget/bj;->c(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/bk;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/bk;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->i()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v1}, Landroid/support/v7/widget/bj;->k()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v1}, Landroid/support/v7/widget/bj;->m()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0}, Landroid/support/v7/widget/bj;->m()I

    move-result v0

    return v0
.end method
