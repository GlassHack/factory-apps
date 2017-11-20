.class final Landroid/support/v7/internal/a/d;
.super Landroid/support/v4/view/cp;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/a/b;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/a/b;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Landroid/support/v7/internal/a/d;->a:Landroid/support/v7/internal/a/b;

    invoke-direct {p0}, Landroid/support/v4/view/cp;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/v7/internal/a/d;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->f(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/view/h;

    .line 157
    iget-object v0, p0, Landroid/support/v7/internal/a/d;->a:Landroid/support/v7/internal/a/b;

    invoke-static {v0}, Landroid/support/v7/internal/a/b;->c(Landroid/support/v7/internal/a/b;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->requestLayout()V

    .line 158
    return-void
.end method
