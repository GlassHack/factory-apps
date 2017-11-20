.class Lcom/google/glass/voice/TipsViewAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/TipsViewAnimator;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/TipsViewAnimator;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/voice/TipsViewAnimator$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/glass/voice/TipsViewAnimator$1;->saveTipsViewCount()V

    return-void
.end method

.method private saveTipsViewCount()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 77
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/TipsViewAnimator$1$2;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/TipsViewAnimator$1$2;-><init>(Lcom/google/glass/voice/TipsViewAnimator$1;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/TipsViewAnimator;->access$000(Lcom/google/glass/voice/TipsViewAnimator;)Lcom/google/glass/widget/TipsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/TipsViewAnimator;->access$100(Lcom/google/glass/voice/TipsViewAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 59
    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v1}, Lcom/google/glass/voice/TipsViewAnimator;->access$000(Lcom/google/glass/voice/TipsViewAnimator;)Lcom/google/glass/widget/TipsView;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TipsView;->setTranslationY(F)V

    .line 60
    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v1}, Lcom/google/glass/voice/TipsViewAnimator;->access$000(Lcom/google/glass/voice/TipsViewAnimator;)Lcom/google/glass/widget/TipsView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v1}, Lcom/google/glass/voice/TipsViewAnimator;->access$000(Lcom/google/glass/voice/TipsViewAnimator;)Lcom/google/glass/widget/TipsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/TipsViewAnimator$1$1;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/TipsViewAnimator$1$1;-><init>(Lcom/google/glass/voice/TipsViewAnimator$1;)V

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 70
    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v1}, Lcom/google/glass/voice/TipsViewAnimator;->access$500(Lcom/google/glass/voice/TipsViewAnimator;)Landroid/view/View;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/TipsViewAnimator;->access$500(Lcom/google/glass/voice/TipsViewAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/TipsViewAnimator;->access$500(Lcom/google/glass/voice/TipsViewAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 73
    return-void
.end method
