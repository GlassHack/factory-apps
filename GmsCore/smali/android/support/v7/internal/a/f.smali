.class public final Landroid/support/v7/internal/a/f;
.super Landroid/support/v7/c/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/k;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/a/b;

.field private d:Landroid/support/v7/c/b;

.field private e:Landroid/support/v7/internal/view/menu/j;

.field private f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/a/b;Landroid/support/v7/c/b;)V
    .locals 2

    .prologue
    .line 956
    iput-object p1, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Landroid/support/v7/c/a;-><init>()V

    .line 957
    iput-object p2, p0, Landroid/support/v7/internal/a/f;->d:Landroid/support/v7/c/b;

    .line 958
    new-instance v0, Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {p1}, Landroid/support/v7/internal/a/b;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->a()Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    .line 960
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/k;)V

    .line 961
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->l(Landroid/support/v7/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/f;->b(Ljava/lang/CharSequence;)V

    .line 1042
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->d(Landroid/view/View;)V

    .line 1026
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/f;->f:Ljava/lang/ref/WeakReference;

    .line 1027
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->b(Ljava/lang/CharSequence;)V

    .line 1032
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 1061
    invoke-super {p0, p1}, Landroid/support/v7/c/a;->a(Z)V

    .line 1062
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Z)V

    .line 1063
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->d:Landroid/support/v7/c/b;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->d:Landroid/support/v7/c/b;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1079
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 975
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    iget-object v0, v0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    if-eq v0, p0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->h(Landroid/support/v7/internal/a/b;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v1}, Landroid/support/v7/internal/a/b;->i(Landroid/support/v7/internal/a/b;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/a/b;->a(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 987
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    iput-object p0, v0, Landroid/support/v7/internal/a/b;->b:Landroid/support/v7/c/a;

    .line 988
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->d:Landroid/support/v7/c/b;

    iput-object v1, v0, Landroid/support/v7/internal/a/b;->c:Landroid/support/v7/c/b;

    .line 992
    :goto_1
    iput-object v2, p0, Landroid/support/v7/internal/a/f;->d:Landroid/support/v7/c/b;

    .line 993
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/a/b;->f(Z)V

    .line 996
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->d()V

    .line 997
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->k(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/w;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/w;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 999
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->g(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    iget-boolean v1, v1, Landroid/support/v7/internal/a/b;->d:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->b(Z)V

    .line 1001
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    iput-object v2, v0, Landroid/support/v7/internal/a/b;->a:Landroid/support/v7/internal/a/f;

    goto :goto_0

    .line 990
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->d:Landroid/support/v7/c/b;

    invoke-interface {v0, p0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;)V

    goto :goto_1
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->l(Landroid/support/v7/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/f;->a(Ljava/lang/CharSequence;)V

    .line 1047
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Ljava/lang/CharSequence;)V

    .line 1037
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->g()V

    .line 1008
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->d:Landroid/support/v7/c/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/c/b;->b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->h()V

    .line 1011
    return-void

    .line 1010
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/j;->h()V

    throw v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->g()V

    .line 1017
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->d:Landroid/support/v7/c/b;

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1019
    iget-object v1, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/j;->h()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/internal/a/f;->e:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/j;->h()V

    throw v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->c()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->f()Z

    move-result v0

    return v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/f;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->d:Landroid/support/v7/c/b;

    if-nez v0, :cond_0

    .line 1108
    :goto_0
    return-void

    .line 1106
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/a/f;->c()V

    .line 1107
    iget-object v0, p0, Landroid/support/v7/internal/a/f;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->j(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a()Z

    goto :goto_0
.end method
