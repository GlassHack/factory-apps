.class final Landroid/support/v4/view/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/cq;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/cq;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Landroid/support/v4/view/cn;->a:Landroid/support/v4/view/cq;

    iput-object p2, p0, Landroid/support/v4/view/cn;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Landroid/support/v4/view/cn;->a:Landroid/support/v4/view/cq;

    iget-object v1, p0, Landroid/support/v4/view/cn;->b:Landroid/view/View;

    invoke-interface {v0}, Landroid/support/v4/view/cq;->a()V

    .line 29
    return-void
.end method
