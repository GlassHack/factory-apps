.class final Landroid/support/v7/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/c/b;


# instance fields
.field final synthetic a:Landroid/support/v7/a/g;

.field private b:Landroid/support/v7/c/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/a/g;Landroid/support/v7/c/b;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput-object p2, p0, Landroid/support/v7/a/k;->b:Landroid/support/v7/c/b;

    .line 920
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/c/a;)V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Landroid/support/v7/a/k;->b:Landroid/support/v7/c/b;

    invoke-interface {v0, p1}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;)V

    .line 936
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->l:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    .line 937
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v1, v1, Landroid/support/v7/a/g;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 938
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->l:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 942
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 945
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    if-eqz v0, :cond_2

    .line 947
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->a:Landroid/support/v7/a/d;

    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/a/g;->j:Landroid/support/v7/c/a;

    .line 953
    return-void

    .line 939
    :cond_3
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Landroid/support/v7/a/k;->a:Landroid/support/v7/a/g;

    iget-object v0, v0, Landroid/support/v7/a/g;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Landroid/support/v7/a/k;->b:Landroid/support/v7/c/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Landroid/support/v7/a/k;->b:Landroid/support/v7/c/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/c/b;->a(Landroid/support/v7/c/a;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Landroid/support/v7/a/k;->b:Landroid/support/v7/c/b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/c/b;->b(Landroid/support/v7/c/a;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
