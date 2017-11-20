.class final Landroid/support/v4/widget/i;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/i;)V
    .locals 1

    .prologue
    .line 1774
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/i;)V

    .line 1775
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1779
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/i;->b(Landroid/view/View;)V

    .line 1781
    :cond_0
    return-void
.end method
