.class final Landroid/support/v7/internal/view/menu/b;
.super Landroid/support/v7/widget/an;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 300
    invoke-direct {p0, p1}, Landroid/support/v7/widget/an;-><init>(Landroid/view/View;)V

    .line 301
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/aj;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/d;->a()Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 314
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/l;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/n;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/support/v7/internal/view/menu/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/b;->a()Landroid/support/v7/widget/aj;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/aj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 318
    :cond_0
    return v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/b;->a()Landroid/support/v7/widget/aj;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->a()V

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
