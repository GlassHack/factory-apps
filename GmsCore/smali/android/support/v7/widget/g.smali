.class final Landroid/support/v7/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/z;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Landroid/support/v7/widget/g;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;B)V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0, p1}, Landroid/support/v7/widget/g;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/j;Z)V
    .locals 2

    .prologue
    .line 729
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/ae;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 730
    check-cast v0, Landroid/support/v7/internal/view/menu/ae;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ae;->r()Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/j;->a(Z)V

    .line 732
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/e;->f:Landroid/support/v7/internal/view/menu/z;

    .line 733
    if-eqz v0, :cond_1

    .line 734
    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/j;Z)V

    .line 736
    :cond_1
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/j;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 720
    if-nez p1, :cond_0

    move v0, v1

    .line 724
    :goto_0
    return v0

    .line 722
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/g;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/ae;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ae;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/ActionMenuPresenter;->v:I

    .line 723
    iget-object v0, p0, Landroid/support/v7/widget/g;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/e;->f:Landroid/support/v7/internal/view/menu/z;

    .line 724
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/z;->a(Landroid/support/v7/internal/view/menu/j;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
