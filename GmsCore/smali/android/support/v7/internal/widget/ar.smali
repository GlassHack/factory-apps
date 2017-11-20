.class final Landroid/support/v7/internal/widget/ar;
.super Landroid/support/v4/view/cp;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ap;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ap;)V
    .locals 1

    .prologue
    .line 563
    iput-object p1, p0, Landroid/support/v7/internal/widget/ar;->a:Landroid/support/v7/internal/widget/ap;

    invoke-direct {p0}, Landroid/support/v4/view/cp;-><init>()V

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ar;->b:Z

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 567
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ar;->b:Z

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Landroid/support/v7/internal/widget/ar;->a:Landroid/support/v7/internal/widget/ap;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 570
    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ar;->b:Z

    .line 575
    return-void
.end method
