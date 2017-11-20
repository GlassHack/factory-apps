.class public abstract Landroid/support/v7/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v7/a/d;

.field b:Landroid/view/MenuInflater;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field final g:Landroid/support/v7/internal/a/a;

.field h:Landroid/support/v7/internal/a/a;

.field private i:Landroid/support/v7/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/a/d;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/support/v7/a/f;

    invoke-direct {v0, p0}, Landroid/support/v7/a/f;-><init>(Landroid/support/v7/a/e;)V

    iput-object v0, p0, Landroid/support/v7/a/e;->g:Landroid/support/v7/internal/a/a;

    .line 104
    iput-object p1, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    .line 105
    iget-object v0, p0, Landroid/support/v7/a/e;->g:Landroid/support/v7/internal/a/a;

    iput-object v0, p0, Landroid/support/v7/a/e;->h:Landroid/support/v7/internal/a/a;

    .line 106
    return-void
.end method


# virtual methods
.method abstract a()Landroid/support/v7/a/a;
.end method

.method abstract a(I)V
.end method

.method abstract a(ILandroid/view/Menu;)V
.end method

.method a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    sget-object v1, Landroid/support/v7/b/j;->bc:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    sget v1, Landroid/support/v7/b/j;->bf:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    sget v1, Landroid/support/v7/b/j;->bf:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/a/e;->c:Z

    .line 144
    sget v1, Landroid/support/v7/b/j;->bg:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/a/e;->d:Z

    .line 145
    sget v1, Landroid/support/v7/b/j;->bh:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/a/e;->e:Z

    .line 146
    sget v1, Landroid/support/v7/b/j;->bd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/a/e;->f:Z

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    return-void
.end method

.method abstract a(Landroid/view/View;)V
.end method

.method abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract a(Ljava/lang/CharSequence;)V
.end method

.method abstract a(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Landroid/support/v7/a/a;
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/support/v7/a/e;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/a/e;->d:Z

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/e;->i:Landroid/support/v7/a/a;

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/a/e;->a()Landroid/support/v7/a/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/a/e;->i:Landroid/support/v7/a/a;

    .line 118
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/e;->i:Landroid/support/v7/a/a;

    return-object v0
.end method

.method abstract b(I)Landroid/view/View;
.end method

.method abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract b(ILandroid/view/Menu;)Z
.end method

.method abstract b(Landroid/view/KeyEvent;)Z
.end method

.method abstract c()V
.end method

.method abstract c(ILandroid/view/Menu;)Z
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method abstract g()Z
.end method
