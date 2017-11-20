.class final Landroid/support/v7/internal/view/menu/t;
.super Landroid/support/v7/internal/view/menu/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/p;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/p;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v7/internal/view/menu/p;

    .line 365
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/g;-><init>(Ljava/lang/Object;)V

    .line 366
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/p;->a(Landroid/view/MenuItem;)Landroid/support/v4/c/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
