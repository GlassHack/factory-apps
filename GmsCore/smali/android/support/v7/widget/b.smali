.class final Landroid/support/v7/widget/b;
.super Landroid/support/v7/internal/view/menu/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Landroid/support/v7/widget/b;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Landroid/support/v7/internal/view/menu/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;B)V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0, p1}, Landroid/support/v7/widget/b;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/aj;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Landroid/support/v7/widget/b;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/b;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->s:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->c()Landroid/support/v7/widget/aj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
