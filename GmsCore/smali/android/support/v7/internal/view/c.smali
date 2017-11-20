.class public final Landroid/support/v7/internal/view/c;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field final a:Landroid/view/MenuInflater;

.field final b:Landroid/support/v7/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/c/a;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 41
    iput-object p2, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    .line 42
    new-instance v0, Landroid/support/v7/internal/view/e;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/view/MenuInflater;

    .line 43
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->b()V

    .line 73
    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->h()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->a()Landroid/view/Menu;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ac;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->a:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    iget-object v0, v0, Landroid/support/v7/c/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    iget-boolean v0, v0, Landroid/support/v7/c/a;->c:Z

    return v0
.end method

.method public final invalidate()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->c()V

    .line 68
    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0}, Landroid/support/v7/c/a;->g()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->a(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->b(I)V

    .line 98
    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->a(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    iput-object p1, v0, Landroid/support/v7/c/a;->b:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->a(I)V

    .line 88
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->b(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/internal/view/c;->b:Landroid/support/v7/c/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a;->a(Z)V

    .line 123
    return-void
.end method
