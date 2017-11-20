.class final Landroid/support/v7/internal/widget/as;
.super Landroid/support/v4/view/cp;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ap;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ap;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Landroid/support/v7/internal/widget/as;->a:Landroid/support/v7/internal/widget/ap;

    invoke-direct {p0}, Landroid/support/v4/view/cp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Landroid/support/v7/internal/widget/as;->a:Landroid/support/v7/internal/widget/ap;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ap;->a:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 583
    return-void
.end method
