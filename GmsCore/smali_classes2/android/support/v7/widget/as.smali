.class final Landroid/support/v7/widget/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/aj;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/aj;)V
    .locals 0

    .prologue
    .line 1733
    iput-object p1, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/aj;B)V
    .locals 0

    .prologue
    .line 1733
    invoke-direct {p0, p1}, Landroid/support/v7/widget/as;-><init>(Landroid/support/v7/widget/aj;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1737
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 1740
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/aj;

    invoke-static {v0}, Landroid/support/v7/widget/aj;->b(Landroid/support/v7/widget/aj;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/aj;

    invoke-static {v0}, Landroid/support/v7/widget/aj;->d(Landroid/support/v7/widget/aj;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/aj;

    invoke-static {v1}, Landroid/support/v7/widget/aj;->c(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1743
    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/aj;

    invoke-static {v0}, Landroid/support/v7/widget/aj;->c(Landroid/support/v7/widget/aj;)Landroid/support/v7/widget/au;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->run()V

    .line 1745
    :cond_0
    return-void
.end method
