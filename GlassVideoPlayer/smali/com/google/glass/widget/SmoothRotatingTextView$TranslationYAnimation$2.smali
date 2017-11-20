.class Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$2;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$2;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;->onAnimationEnd()V

    .line 375
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method
