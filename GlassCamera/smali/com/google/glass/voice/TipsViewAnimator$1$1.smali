.class Lcom/google/glass/voice/TipsViewAnimator$1$1;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "TipsViewAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/TipsViewAnimator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/TipsViewAnimator$1;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/TipsViewAnimator$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/TipsViewAnimator$1;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/voice/TipsViewAnimator$1$1;->this$1:Lcom/google/glass/voice/TipsViewAnimator$1;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$1$1;->this$1:Lcom/google/glass/voice/TipsViewAnimator$1;

    iget-object v0, v0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/TipsViewAnimator;->access$000(Lcom/google/glass/voice/TipsViewAnimator;)Lcom/google/glass/widget/TipsView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator$1$1;->this$1:Lcom/google/glass/voice/TipsViewAnimator$1;

    iget-object v1, v1, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v1}, Lcom/google/glass/voice/TipsViewAnimator;->access$200(Lcom/google/glass/voice/TipsViewAnimator;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/TipsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$1$1;->this$1:Lcom/google/glass/voice/TipsViewAnimator$1;

    iget-object v0, v0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/TipsViewAnimator;->access$308(Lcom/google/glass/voice/TipsViewAnimator;)I

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$1$1;->this$1:Lcom/google/glass/voice/TipsViewAnimator$1;

    invoke-static {v0}, Lcom/google/glass/voice/TipsViewAnimator$1;->access$400(Lcom/google/glass/voice/TipsViewAnimator$1;)V

    .line 68
    return-void
.end method
