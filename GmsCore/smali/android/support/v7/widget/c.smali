.class final Landroid/support/v7/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field private b:Landroid/support/v7/widget/f;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/f;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-object p2, p0, Landroid/support/v7/widget/c;->b:Landroid/support/v7/widget/f;

    .line 744
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->f()V

    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->d(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/aa;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 749
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/c;->b:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/c;->b:Landroid/support/v7/widget/f;

    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->r:Landroid/support/v7/widget/f;

    .line 752
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->t:Landroid/support/v7/widget/c;

    .line 753
    return-void
.end method
