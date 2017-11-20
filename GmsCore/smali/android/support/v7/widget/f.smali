.class final Landroid/support/v7/widget/f;
.super Landroid/support/v7/internal/view/menu/w;
.source "SourceFile"


# instance fields
.field final synthetic f:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 666
    iput-object p1, p0, Landroid/support/v7/widget/f;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 667
    const/4 v4, 0x1

    sget v5, Landroid/support/v7/b/b;->l:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/w;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/j;Landroid/view/View;ZI)V

    .line 668
    const v0, 0x800005

    iput v0, p0, Landroid/support/v7/internal/view/menu/w;->e:I

    .line 669
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->u:Landroid/support/v7/widget/g;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/w;->c:Landroid/support/v7/internal/view/menu/z;

    .line 670
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 674
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/w;->onDismiss()V

    .line 675
    iget-object v0, p0, Landroid/support/v7/widget/f;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->close()V

    .line 676
    iget-object v0, p0, Landroid/support/v7/widget/f;->f:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Landroid/support/v7/widget/f;

    .line 677
    return-void
.end method
