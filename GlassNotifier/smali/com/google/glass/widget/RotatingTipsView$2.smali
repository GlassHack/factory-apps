.class Lcom/google/glass/widget/RotatingTipsView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RotatingTipsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/RotatingTipsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/RotatingTipsView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/RotatingTipsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/RotatingTipsView;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/widget/RotatingTipsView$2;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView$2;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    iget-object v1, p0, Lcom/google/glass/widget/RotatingTipsView$2;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    invoke-static {v1}, Lcom/google/glass/widget/RotatingTipsView;->access$100(Lcom/google/glass/widget/RotatingTipsView;)Lcom/google/glass/widget/RotatingTipsView$Tip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/RotatingTipsView$Tip;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/RotatingTipsView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView$2;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/glass/widget/RotatingTipsView$2;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    invoke-static {v2}, Lcom/google/glass/widget/RotatingTipsView;->access$100(Lcom/google/glass/widget/RotatingTipsView;)Lcom/google/glass/widget/RotatingTipsView$Tip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/widget/RotatingTipsView$Tip;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/RotatingTipsView;->setTextSize(IF)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView$2;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    iget-object v1, p0, Lcom/google/glass/widget/RotatingTipsView$2;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    invoke-static {v1}, Lcom/google/glass/widget/RotatingTipsView;->access$100(Lcom/google/glass/widget/RotatingTipsView;)Lcom/google/glass/widget/RotatingTipsView$Tip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/RotatingTipsView$Tip;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/RotatingTipsView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/widget/RotatingTipsView$2;->this$0:Lcom/google/glass/widget/RotatingTipsView;

    invoke-static {v0}, Lcom/google/glass/widget/RotatingTipsView;->access$200(Lcom/google/glass/widget/RotatingTipsView;)V

    .line 68
    return-void
.end method
