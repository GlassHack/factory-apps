.class final Landroid/support/v7/internal/view/menu/v;
.super Landroid/support/v7/internal/view/menu/q;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/p;


# instance fields
.field c:Landroid/view/ActionProvider$VisibilityListener;

.field final synthetic d:Landroid/support/v7/internal/view/menu/u;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/u;Landroid/support/v4/view/n;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/v;->d:Landroid/support/v7/internal/view/menu/u;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/q;-><init>(Landroid/support/v7/internal/view/menu/p;Landroid/support/v4/view/n;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final isVisible()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    invoke-virtual {v0}, Landroid/support/v4/view/n;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final overridesItemVisibility()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    const/4 v0, 0x0

    return v0
.end method

.method public final refreshVisibility()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    iget-object v0, v0, Landroid/support/v4/view/n;->c:Landroid/support/v4/view/p;

    .line 60
    return-void
.end method

.method public final setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/v;->c:Landroid/view/ActionProvider$VisibilityListener;

    .line 66
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/p;)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
