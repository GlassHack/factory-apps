.class final Landroid/support/v7/widget/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;

.field b:I

.field c:I

.field d:I

.field final e:I

.field final synthetic f:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method private f()V
    .locals 3

    .prologue
    .line 1873
    iget-object v0, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1874
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/cq;

    .line 1875
    iget-object v2, p0, Landroid/support/v7/widget/ct;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/av;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ct;->b:I

    .line 1876
    iget-boolean v0, v1, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Landroid/support/v7/widget/ct;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/cq;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 1879
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1880
    iget v1, p0, Landroid/support/v7/widget/ct;->b:I

    iget v2, p0, Landroid/support/v7/widget/ct;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/ct;->b:I

    .line 1883
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 1907
    iget-object v0, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1908
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/cq;

    .line 1909
    iget-object v2, p0, Landroid/support/v7/widget/ct;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/av;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ct;->c:I

    .line 1910
    iget-boolean v0, v1, Landroid/support/v7/widget/cq;->f:Z

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Landroid/support/v7/widget/ct;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1}, Landroid/support/v7/widget/cq;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 1913
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1914
    iget v1, p0, Landroid/support/v7/widget/ct;->c:I

    iget v2, p0, Landroid/support/v7/widget/ct;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ct;->c:I

    .line 1917
    :cond_0
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 1887
    iget v0, p0, Landroid/support/v7/widget/ct;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1888
    iget v0, p0, Landroid/support/v7/widget/ct;->b:I

    .line 1891
    :goto_0
    return v0

    .line 1890
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ct;->f()V

    .line 1891
    iget v0, p0, Landroid/support/v7/widget/ct;->b:I

    goto :goto_0
.end method

.method final a(I)I
    .locals 2

    .prologue
    .line 1862
    iget v0, p0, Landroid/support/v7/widget/ct;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1863
    iget p1, p0, Landroid/support/v7/widget/ct;->b:I

    .line 1869
    :cond_0
    :goto_0
    return p1

    .line 1865
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    invoke-direct {p0}, Landroid/support/v7/widget/ct;->f()V

    .line 1869
    iget p1, p0, Landroid/support/v7/widget/ct;->b:I

    goto :goto_0
.end method

.method final a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 1929
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cq;

    .line 1930
    iput-object p0, v0, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    .line 1931
    iget-object v1, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1932
    iput v3, p0, Landroid/support/v7/widget/ct;->b:I

    .line 1933
    iget-object v1, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1934
    iput v3, p0, Landroid/support/v7/widget/ct;->c:I

    .line 1936
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/cq;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/cq;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1937
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ct;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/ct;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ct;->d:I

    .line 1939
    :cond_2
    return-void
.end method

.method final b()I
    .locals 2

    .prologue
    .line 1921
    iget v0, p0, Landroid/support/v7/widget/ct;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1922
    iget v0, p0, Landroid/support/v7/widget/ct;->c:I

    .line 1925
    :goto_0
    return v0

    .line 1924
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ct;->g()V

    .line 1925
    iget v0, p0, Landroid/support/v7/widget/ct;->c:I

    goto :goto_0
.end method

.method final b(I)I
    .locals 2

    .prologue
    .line 1895
    iget v0, p0, Landroid/support/v7/widget/ct;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1896
    iget p1, p0, Landroid/support/v7/widget/ct;->c:I

    .line 1903
    :cond_0
    :goto_0
    return p1

    .line 1898
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1899
    if-eqz v0, :cond_0

    .line 1902
    invoke-direct {p0}, Landroid/support/v7/widget/ct;->g()V

    .line 1903
    iget p1, p0, Landroid/support/v7/widget/ct;->c:I

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 1942
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cq;

    .line 1943
    iput-object p0, v0, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    .line 1944
    iget-object v1, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1945
    iput v3, p0, Landroid/support/v7/widget/ct;->c:I

    .line 1946
    iget-object v1, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1947
    iput v3, p0, Landroid/support/v7/widget/ct;->b:I

    .line 1949
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/cq;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/cq;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1950
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ct;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/ct;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ct;->d:I

    .line 1952
    :cond_2
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 1977
    iget-object v0, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1978
    iput v1, p0, Landroid/support/v7/widget/ct;->b:I

    iput v1, p0, Landroid/support/v7/widget/ct;->c:I

    .line 1979
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ct;->d:I

    .line 1980
    return-void
.end method

.method final c(I)V
    .locals 0

    .prologue
    .line 1988
    iput p1, p0, Landroid/support/v7/widget/ct;->b:I

    iput p1, p0, Landroid/support/v7/widget/ct;->c:I

    .line 1989
    return-void
.end method

.method final d()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 1992
    iget-object v0, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1993
    iget-object v0, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1994
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/cq;

    .line 1995
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    .line 1996
    invoke-virtual {v1}, Landroid/support/v7/widget/cq;->a()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/cq;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1997
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/ct;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/ct;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/ct;->d:I

    .line 1999
    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    .line 2000
    iput v4, p0, Landroid/support/v7/widget/ct;->b:I

    .line 2002
    :cond_2
    iput v4, p0, Landroid/support/v7/widget/ct;->c:I

    .line 2003
    return-void
.end method

.method final d(I)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2027
    iget v0, p0, Landroid/support/v7/widget/ct;->b:I

    if-eq v0, v1, :cond_0

    .line 2028
    iget v0, p0, Landroid/support/v7/widget/ct;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ct;->b:I

    .line 2030
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ct;->c:I

    if-eq v0, v1, :cond_1

    .line 2031
    iget v0, p0, Landroid/support/v7/widget/ct;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ct;->c:I

    .line 2033
    :cond_1
    return-void
.end method

.method final e()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2006
    iget-object v0, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2007
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/cq;

    .line 2008
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/cq;->e:Landroid/support/v7/widget/ct;

    .line 2009
    iget-object v2, p0, Landroid/support/v7/widget/ct;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2010
    iput v3, p0, Landroid/support/v7/widget/ct;->c:I

    .line 2012
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/cq;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/cq;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2013
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/ct;->d:I

    iget-object v2, p0, Landroid/support/v7/widget/ct;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/av;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/ct;->d:I

    .line 2015
    :cond_2
    iput v3, p0, Landroid/support/v7/widget/ct;->b:I

    .line 2016
    return-void
.end method
