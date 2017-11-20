.class final Landroid/support/v7/internal/widget/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Landroid/support/v7/internal/widget/ai;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Landroid/support/v7/internal/widget/ai;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/ao;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Landroid/support/v7/internal/widget/ai;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-static {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/SpinnerCompat;)Landroid/support/v7/internal/widget/ao;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ao;->c()V

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ai;->a:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 703
    :cond_1
    return-void
.end method
