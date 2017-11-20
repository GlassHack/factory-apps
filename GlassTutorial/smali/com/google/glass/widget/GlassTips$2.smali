.class Lcom/google/glass/widget/GlassTips$2;
.super Ljava/lang/Object;
.source "GlassTips.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/GlassTips;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTips;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTips;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GlassTips;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/glass/widget/GlassTips$2;->this$0:Lcom/google/glass/widget/GlassTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 112
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$2;->this$0:Lcom/google/glass/widget/GlassTips;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTips;->access$000(Lcom/google/glass/widget/GlassTips;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$2;->this$0:Lcom/google/glass/widget/GlassTips;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTips;->access$000(Lcom/google/glass/widget/GlassTips;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips$2;->this$0:Lcom/google/glass/widget/GlassTips;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTips;->access$100(Lcom/google/glass/widget/GlassTips;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/GlassTips$2;->this$0:Lcom/google/glass/widget/GlassTips;

    invoke-static {v1}, Lcom/google/glass/widget/GlassTips;->access$000(Lcom/google/glass/widget/GlassTips;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 117
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 97
    return-void
.end method
