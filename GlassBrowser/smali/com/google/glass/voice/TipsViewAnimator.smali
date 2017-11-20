.class public Lcom/google/glass/voice/TipsViewAnimator;
.super Ljava/lang/Object;
.source "TipsViewAnimator.java"


# static fields
.field private static final MAX_TIMES_SHOWING:I = 0x3

.field private static final SHOW_DURATION:J = 0xbb8L

.field private static final TIPS_VIEW_ANIMATION_DURATION:J = 0x1f4L


# instance fields
.field private final context:Landroid/content/Context;

.field private final hideSwipeRightRunnable:Ljava/lang/Runnable;

.field private isShowing:Z

.field private final settingsContract:Lcom/google/glass/util/SettingsContract;

.field private final settingsKey:Ljava/lang/String;

.field private final showDelay:J

.field private final showSwipeRightRunnable:Ljava/lang/Runnable;

.field private final swipeTipsView:Lcom/google/glass/widget/TipsView;

.field private final swipeTipsViewGradient:Landroid/view/View;

.field private tipsViewCount:I

.field private viewCountLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/widget/TipsView;Landroid/view/View;Ljava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "swipeTipsView"    # Lcom/google/glass/widget/TipsView;
    .param p3, "swipeTipsViewGradient"    # Landroid/view/View;
    .param p4, "settingsKey"    # Ljava/lang/String;
    .param p5, "showDelay"    # J

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->viewCountLoaded:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->tipsViewCount:I

    .line 42
    invoke-static {}, Lcom/google/glass/util/SettingsContractProvider;->getInstance()Lcom/google/glass/util/SettingsContractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsContractProvider;->get()Lcom/google/glass/util/SettingsContract;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->settingsContract:Lcom/google/glass/util/SettingsContract;

    .line 53
    new-instance v0, Lcom/google/glass/voice/TipsViewAnimator$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/TipsViewAnimator$1;-><init>(Lcom/google/glass/voice/TipsViewAnimator;)V

    iput-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->showSwipeRightRunnable:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Lcom/google/glass/voice/TipsViewAnimator$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/TipsViewAnimator$2;-><init>(Lcom/google/glass/voice/TipsViewAnimator;)V

    iput-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->hideSwipeRightRunnable:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/google/glass/voice/TipsViewAnimator;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsView:Lcom/google/glass/widget/TipsView;

    .line 48
    iput-object p3, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsViewGradient:Landroid/view/View;

    .line 49
    iput-object p4, p0, Lcom/google/glass/voice/TipsViewAnimator;->settingsKey:Ljava/lang/String;

    .line 50
    iput-wide p5, p0, Lcom/google/glass/voice/TipsViewAnimator;->showDelay:J

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/TipsViewAnimator;)Lcom/google/glass/widget/TipsView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/TipsViewAnimator;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsView:Lcom/google/glass/widget/TipsView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/TipsViewAnimator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/TipsViewAnimator;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/TipsViewAnimator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/TipsViewAnimator;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->hideSwipeRightRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/TipsViewAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/TipsViewAnimator;

    .prologue
    .line 19
    iget v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->tipsViewCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/glass/voice/TipsViewAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/TipsViewAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/google/glass/voice/TipsViewAnimator;->tipsViewCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/google/glass/voice/TipsViewAnimator;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/voice/TipsViewAnimator;

    .prologue
    .line 19
    iget v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->tipsViewCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/glass/voice/TipsViewAnimator;->tipsViewCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/TipsViewAnimator;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/TipsViewAnimator;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsViewGradient:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/TipsViewAnimator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/TipsViewAnimator;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->settingsKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/voice/TipsViewAnimator;)Lcom/google/glass/util/SettingsContract;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/TipsViewAnimator;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->settingsContract:Lcom/google/glass/util/SettingsContract;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/voice/TipsViewAnimator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/TipsViewAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/voice/TipsViewAnimator;->maybeShowSwipeRight(Z)V

    return-void
.end method

.method private maybeShowSwipeRight(Z)V
    .locals 4
    .param p1, "immediately"    # Z

    .prologue
    .line 155
    if-eqz p1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->showSwipeRightRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->tipsViewCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsView:Lcom/google/glass/widget/TipsView;

    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator;->showSwipeRightRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/glass/voice/TipsViewAnimator;->showDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/TipsView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showSwipeRightTipInternal(Z)V
    .locals 3
    .param p1, "immediately"    # Z

    .prologue
    const/4 v2, 0x1

    .line 108
    iget-boolean v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->isShowing:Z

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 112
    :cond_0
    iput-boolean v2, p0, Lcom/google/glass/voice/TipsViewAnimator;->isShowing:Z

    .line 113
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsView:Lcom/google/glass/widget/TipsView;

    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator;->hideSwipeRightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 115
    iget-boolean v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->viewCountLoaded:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0, p1}, Lcom/google/glass/voice/TipsViewAnimator;->maybeShowSwipeRight(Z)V

    goto :goto_0

    .line 118
    :cond_1
    iput-boolean v2, p0, Lcom/google/glass/voice/TipsViewAnimator;->viewCountLoaded:Z

    .line 119
    new-instance v1, Lcom/google/glass/voice/TipsViewAnimator$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/TipsViewAnimator$3;-><init>(Lcom/google/glass/voice/TipsViewAnimator;Z)V

    .line 131
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 130
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/voice/TipsViewAnimator$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public hideSwipeRightTip()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f4

    .line 137
    iget-boolean v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->isShowing:Z

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->isShowing:Z

    .line 142
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsView:Lcom/google/glass/widget/TipsView;

    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator;->showSwipeRightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsView:Lcom/google/glass/widget/TipsView;

    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator;->hideSwipeRightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TipsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator;->context:Landroid/content/Context;

    .line 146
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsViewGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 149
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator;->swipeTipsViewGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator;->context:Landroid/content/Context;

    .line 150
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public showSwipeRightTip()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/TipsViewAnimator;->showSwipeRightTipInternal(Z)V

    .line 105
    return-void
.end method

.method public showSwipeRightTipImmediately()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/TipsViewAnimator;->showSwipeRightTipInternal(Z)V

    .line 97
    return-void
.end method
