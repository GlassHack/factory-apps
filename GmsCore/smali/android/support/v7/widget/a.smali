.class final Landroid/support/v7/widget/a;
.super Landroid/support/v7/internal/view/menu/w;
.source "SourceFile"


# instance fields
.field final synthetic f:Landroid/support/v7/widget/ActionMenuPresenter;

.field private g:Landroid/support/v7/internal/view/menu/ae;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/ae;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 683
    iput-object p1, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 684
    const/4 v3, 0x0

    sget v5, Landroid/support/v7/b/b;->l:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/w;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;Landroid/view/View;ZI)V

    .line 686
    iput-object p3, p0, Landroid/support/v7/widget/a;->g:Landroid/support/v7/internal/view/menu/ae;

    .line 688
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/ae;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/n;

    .line 689
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->b(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/aa;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/w;->b:Landroid/view/View;

    .line 694
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/support/v7/widget/g;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/w;->c:Landroid/support/v7/internal/view/menu/z;

    .line 697
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/ae;->size()I

    move-result v1

    move v0, v4

    .line 698
    :goto_1
    if-ge v0, v1, :cond_1

    .line 699
    invoke-virtual {p3, v0}, Landroid/support/v7/internal/view/menu/ae;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 700
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 701
    const/4 v4, 0x1

    .line 705
    :cond_1
    iput-boolean v4, p0, Landroid/support/v7/internal/view/menu/w;->d:Z

    .line 706
    return-void

    .line 691
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->i:Landroid/view/View;

    goto :goto_0

    .line 698
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 710
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/w;->onDismiss()V

    .line 711
    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/a;

    .line 712
    iget-object v0, p0, Landroid/support/v7/widget/a;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->v:I

    .line 713
    return-void
.end method
