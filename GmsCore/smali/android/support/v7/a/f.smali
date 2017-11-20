.class final Landroid/support/v7/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/a/a;


# instance fields
.field final synthetic a:Landroid/support/v7/a/e;


# direct methods
.method constructor <init>(Landroid/support/v7/a/e;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Landroid/support/v7/a/f;->a:Landroid/support/v7/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v7/a/f;->a:Landroid/support/v7/a/e;

    iget-object v0, v0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/a/d;->a(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/v7/a/f;->a:Landroid/support/v7/a/e;

    iget-object v0, v0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/a/d;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v7/a/f;->a:Landroid/support/v7/a/e;

    iget-object v0, v0, Landroid/support/v7/a/e;->a:Landroid/support/v7/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/a/d;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
