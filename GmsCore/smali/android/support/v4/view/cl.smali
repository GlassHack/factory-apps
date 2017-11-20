.class final Landroid/support/v4/view/cl;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v4/view/co;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/co;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Landroid/support/v4/view/cl;->a:Landroid/support/v4/view/co;

    iput-object p2, p0, Landroid/support/v4/view/cl;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v4/view/cl;->a:Landroid/support/v4/view/co;

    iget-object v1, p0, Landroid/support/v4/view/cl;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/co;->c(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v4/view/cl;->a:Landroid/support/v4/view/co;

    iget-object v1, p0, Landroid/support/v4/view/cl;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/co;->b(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v4/view/cl;->a:Landroid/support/v4/view/co;

    iget-object v1, p0, Landroid/support/v4/view/cl;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/co;->a(Landroid/view/View;)V

    .line 150
    return-void
.end method
