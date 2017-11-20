.class Lcom/google/glass/widget/SliderView$2;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "SliderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/SliderView;->showIndeterminateSlider(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/SliderView;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/glass/widget/SliderView$2;->this$0:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

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
