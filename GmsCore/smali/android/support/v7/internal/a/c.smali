.class final Landroid/support/v7/internal/a/c;
.super Landroid/support/v4/view/cp;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/a/b;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/b;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Landroid/support/v4/view/cp;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->a(Landroid/support/v7/internal/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->b(Landroid/support/v7/internal/a/b;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->b(Landroid/support/v7/internal/a/b;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 138
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ax;->b(Landroid/view/View;F)V

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->d(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->e(Landroid/support/v7/internal/a/b;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->d(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 143
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Z)V

    .line 145
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/view/h;

    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/b;->h()V

    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->g(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Landroid/support/v7/internal/a/c;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->g(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ax;->q(Landroid/view/View;)V

    .line 150
    :cond_2
    return-void
.end method
