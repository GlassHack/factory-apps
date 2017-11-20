.class final Landroid/support/v7/widget/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field a:Landroid/support/v7/internal/view/menu/j;

.field b:Landroid/support/v7/internal/view/menu/n;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1790
    iput-object p1, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;B)V
    .locals 0

    .prologue
    .line 1790
    invoke-direct {p0, p1}, Landroid/support/v7/widget/cz;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;)V
    .locals 2

    .prologue
    .line 1797
    iget-object v0, p0, Landroid/support/v7/widget/cz;->a:Landroid/support/v7/internal/view/menu/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Landroid/support/v7/widget/cz;->a:Landroid/support/v7/internal/view/menu/j;

    iget-object v1, p0, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->b(Landroid/support/v7/internal/view/menu/n;)Z

    .line 1800
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/cz;->a:Landroid/support/v7/internal/view/menu/j;

    .line 1801
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;Z)V
    .locals 0

    .prologue
    .line 1843
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1811
    iget-object v1, p0, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    if-eqz v1, :cond_1

    .line 1814
    iget-object v1, p0, Landroid/support/v7/widget/cz;->a:Landroid/support/v7/internal/view/menu/j;

    if-eqz v1, :cond_0

    .line 1815
    iget-object v1, p0, Landroid/support/v7/widget/cz;->a:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/j;->size()I

    move-result v2

    move v1, v0

    .line 1816
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1817
    iget-object v3, p0, Landroid/support/v7/widget/cz;->a:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v3, v1}, Landroid/support/v7/internal/view/menu/j;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1818
    iget-object v4, p0, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    if-ne v3, v4, :cond_2

    .line 1819
    const/4 v0, 0x1

    .line 1825
    :cond_0
    if-nez v0, :cond_1

    .line 1827
    iget-object v0, p0, Landroid/support/v7/widget/cz;->a:Landroid/support/v7/internal/view/menu/j;

    iget-object v0, p0, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/cz;->c(Landroid/support/v7/internal/view/menu/n;)Z

    .line 1830
    :cond_1
    return-void

    .line 1816
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1847
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ae;)Z
    .locals 1

    .prologue
    .line 1838
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1852
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 1853
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_0

    .line 1854
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1856
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/n;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 1857
    iput-object p1, p0, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    .line 1858
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 1859
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {}, Landroid/support/v7/widget/Toolbar;->l()Landroid/support/v7/widget/da;

    move-result-object v0

    .line 1860
    const v1, 0x800003

    iget-object v2, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/da;->a:I

    .line 1861
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/da;->b:I

    .line 1862
    iget-object v1, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1863
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 1866
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v3}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;Z)V

    .line 1867
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1868
    invoke-virtual {p1, v3}, Landroid/support/v7/internal/view/menu/n;->e(Z)V

    .line 1870
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/c/c;

    if-eqz v0, :cond_2

    .line 1871
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Landroid/support/v7/c/c;

    invoke-interface {v0}, Landroid/support/v7/c/c;->onActionViewExpanded()V

    .line 1874
    :cond_2
    return v3
.end method

.method public final c(Landroid/support/v7/internal/view/menu/n;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1881
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/c/c;

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    check-cast v0, Landroid/support/v7/c/c;

    invoke-interface {v0}, Landroid/support/v7/c/c;->onActionViewCollapsed()V

    .line 1885
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1886
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 1887
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v3, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/view/View;

    .line 1889
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/widget/Toolbar;Z)V

    .line 1890
    iput-object v3, p0, Landroid/support/v7/widget/cz;->b:Landroid/support/v7/internal/view/menu/n;

    .line 1891
    iget-object v0, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1892
    invoke-virtual {p1, v2}, Landroid/support/v7/internal/view/menu/n;->e(Z)V

    .line 1894
    const/4 v0, 0x1

    return v0
.end method
