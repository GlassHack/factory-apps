.class final Landroid/support/v7/internal/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Landroid/support/v7/internal/widget/j;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)V

    .line 124
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Landroid/support/v7/internal/widget/j;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->d(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/j;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->c(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/co;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/cb;)Landroid/support/v4/view/cb;

    .line 126
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->e(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->e(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Landroid/support/v7/internal/widget/j;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Landroid/support/v7/internal/widget/j;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->e(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ax;->n(Landroid/view/View;)Landroid/support/v4/view/cb;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/cb;->c(F)Landroid/support/v4/view/cb;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/j;->a:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->f(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;)Landroid/support/v4/view/co;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/cb;->a(Landroid/support/v4/view/co;)Landroid/support/v4/view/cb;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Landroid/support/v7/internal/widget/ActionBarOverlayLayout;Landroid/support/v4/view/cb;)Landroid/support/v4/view/cb;

    .line 130
    :cond_0
    return-void
.end method
