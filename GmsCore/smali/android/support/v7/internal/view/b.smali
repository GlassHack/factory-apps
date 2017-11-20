.class public final Landroid/support/v7/internal/view/b;
.super Landroid/support/v7/c/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/k;


# instance fields
.field private a:Landroid/content/Context;

.field private d:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private e:Landroid/support/v7/c/b;

.field private f:Ljava/lang/ref/WeakReference;

.field private g:Z

.field private h:Z

.field private i:Landroid/support/v7/internal/view/menu/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/support/v7/c/b;Z)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/c/a;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v7/internal/view/b;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Landroid/support/v7/internal/view/b;->d:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 48
    iput-object p3, p0, Landroid/support/v7/internal/view/b;->e:Landroid/support/v7/c/b;

    .line 50
    new-instance v0, Landroid/support/v7/internal/view/menu/j;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/j;->a()Landroid/support/v7/internal/view/menu/j;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/b;->i:Landroid/support/v7/internal/view/menu/j;

    .line 51
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->i:Landroid/support/v7/internal/view/menu/j;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/k;)V

    .line 52
    iput-boolean p4, p0, Landroid/support/v7/internal/view/b;->h:Z

    .line 53
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->i:Landroid/support/v7/internal/view/menu/j;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/b;->b(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->d:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->d(Landroid/view/View;)V

    .line 89
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/view/b;->f:Ljava/lang/ref/WeakReference;

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->d:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->b(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/c/a;->a(Z)V

    .line 78
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->d:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Z)V

    .line 79
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->e:Landroid/support/v7/c/b;

    invoke-interface {v0, p0, p1}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Landroid/support/v7/internal/view/b;->g:Z

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/b;->g:Z

    .line 104
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->d:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 105
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->e:Landroid/support/v7/c/b;

    invoke-interface {v0, p0}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/b;->a(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->d:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->e:Landroid/support/v7/c/b;

    iget-object v1, p0, Landroid/support/v7/internal/view/b;->i:Landroid/support/v7/internal/view/menu/j;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/c/b;->b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    .line 95
    return-void
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->d:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->d:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->c()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->d:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->f()Z

    move-result v0

    return v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/b;->f:Ljava/lang/ref/WeakReference;

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
    .line 153
    invoke-virtual {p0}, Landroid/support/v7/internal/view/b;->c()V

    .line 154
    iget-object v0, p0, Landroid/support/v7/internal/view/b;->d:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a()Z

    .line 155
    return-void
.end method
