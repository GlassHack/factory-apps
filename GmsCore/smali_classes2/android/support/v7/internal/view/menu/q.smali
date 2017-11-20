.class Landroid/support/v7/internal/view/menu/q;
.super Landroid/view/ActionProvider;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v4/view/n;

.field final synthetic b:Landroid/support/v7/internal/view/menu/p;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/p;Landroid/support/v4/view/n;)V
    .locals 2

    .prologue
    .line 395
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/p;

    .line 396
    iget-object v0, p2, Landroid/support/v4/view/n;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 397
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v4/view/n;

    .line 399
    invoke-static {p1}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v4/view/n;

    new-instance v1, Landroid/support/v7/internal/view/menu/r;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/r;-><init>(Landroid/support/v7/internal/view/menu/q;Landroid/support/v7/internal/view/menu/p;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/p;)V

    .line 409
    :cond_0
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v4/view/n;

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/p;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/support/v7/internal/view/menu/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->b()Z

    .line 418
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v4/view/n;

    invoke-virtual {v0}, Landroid/support/v4/view/n;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v4/view/n;

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->a:Landroid/support/v4/view/n;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->b:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    .line 434
    return-void
.end method
