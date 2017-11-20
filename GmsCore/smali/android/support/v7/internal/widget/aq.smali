.class final Landroid/support/v7/internal/widget/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Landroid/support/v7/internal/view/menu/a;

.field final synthetic b:Landroid/support/v7/internal/widget/ap;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ap;)V
    .locals 3

    .prologue
    .line 172
    iput-object p1, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Landroid/support/v7/internal/view/menu/a;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/ap;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/ap;

    iget-object v2, v2, Landroid/support/v7/internal/widget/ap;->b:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/view/menu/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/aq;->a:Landroid/support/v7/internal/view/menu/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/ap;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ap;->c:Landroid/support/v7/internal/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/ap;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/ap;->d:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->b:Landroid/support/v7/internal/widget/ap;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ap;->c:Landroid/support/v7/internal/a/a;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->a:Landroid/support/v7/internal/view/menu/a;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/a/a;->a(Landroid/view/MenuItem;)Z

    .line 180
    :cond_0
    return-void
.end method
