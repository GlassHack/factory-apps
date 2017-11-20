.class Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;

.field final synthetic val$currentTextView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$1;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;

    iput-object p2, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$1;->val$currentTextView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$1;->val$currentTextView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$1;->val$currentTextView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 348
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$1;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;->onAnimationEnd()V

    .line 349
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 342
    return-void
.end method
