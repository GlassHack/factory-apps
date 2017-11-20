.class public final Landroid/support/v7/internal/widget/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/co;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ac;

.field private b:Z

.field private c:I


# virtual methods
.method public final a(Landroid/support/v4/view/cb;I)Landroid/support/v7/internal/widget/ag;
    .locals 1

    .prologue
    .line 573
    iput p2, p0, Landroid/support/v7/internal/widget/ag;->c:I

    .line 574
    iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/support/v7/internal/widget/ac;

    iput-object p1, v0, Landroid/support/v7/internal/widget/ac;->d:Landroid/support/v4/view/cb;

    .line 575
    return-object p0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 580
    iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/support/v7/internal/widget/ac;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ac;->setVisibility(I)V

    .line 581
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ag;->b:Z

    .line 582
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 586
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ag;->b:Z

    if-eqz v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/support/v7/internal/widget/ac;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/internal/widget/ac;->d:Landroid/support/v4/view/cb;

    .line 589
    iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/support/v7/internal/widget/ac;

    iget v1, p0, Landroid/support/v7/internal/widget/ag;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ac;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ag;->b:Z

    .line 595
    return-void
.end method
