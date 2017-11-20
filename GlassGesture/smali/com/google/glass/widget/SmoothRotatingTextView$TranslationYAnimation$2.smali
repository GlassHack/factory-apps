.class Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$2;
.super Ljava/lang/Object;
.source "SmoothRotatingTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;->runAnimation(Landroid/view/View;Landroid/view/View;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$2;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 379
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation$2;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;

    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView$TranslationYAnimation;->onAnimationEnd()V

    .line 375
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 383
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 370
    return-void
.end method
