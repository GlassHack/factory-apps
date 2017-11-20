.class public Lcom/google/glass/maps/view/Animations$HideOnEndListener;
.super Lcom/google/glass/maps/view/Animations$SimpleAnimatorListener;
.source "SourceFile"


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/maps/view/Animations$SimpleAnimatorListener;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/glass/maps/view/Animations$HideOnEndListener;->view:Landroid/view/View;

    .line 36
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/maps/view/Animations$HideOnEndListener;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/google/glass/maps/view/Animations$HideOnEndListener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 42
    return-void
.end method
