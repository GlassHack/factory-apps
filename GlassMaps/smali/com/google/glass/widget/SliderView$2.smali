.class Lcom/google/glass/widget/SliderView$2;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SliderView;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/glass/widget/SliderView$2;->this$0:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/glass/widget/SliderView$2;->this$0:Lcom/google/glass/widget/SliderView;

    invoke-static {v0}, Lcom/google/glass/widget/SliderView;->access$100(Lcom/google/glass/widget/SliderView;)Lcom/google/glass/widget/IndeterminateProgressView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/IndeterminateProgressView;->setVisibility(I)V

    .line 148
    return-void
.end method
