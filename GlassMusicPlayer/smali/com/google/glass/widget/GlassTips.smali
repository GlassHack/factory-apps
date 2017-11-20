.class public Lcom/google/glass/widget/GlassTips;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TIPS_DURATION_FOREVER:I = -0x1

.field private static final TIPS_FADE_IN_DURATION_MS:J = 0x12cL


# instance fields
.field private duration:I

.field private glassTipsListener:Lcom/google/glass/widget/GlassTips$GlassTipsListener;

.field private handler:Landroid/os/Handler;

.field private isShown:Z

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private tipsView:Landroid/view/View;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/glass/async/HandlerProvider;->getInstance()Lcom/google/glass/async/HandlerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/HandlerProvider;->get()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/GlassTips;->handler:Landroid/os/Handler;

    .line 36
    invoke-static {}, Lcom/google/glass/view/WindowManagerProvider;->getInstance()Lcom/google/glass/view/WindowManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/view/WindowManagerProvider;->get(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/GlassTips;->windowManager:Landroid/view/WindowManager;

    .line 37
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/GlassTips;->params:Landroid/view/WindowManager$LayoutParams;

    .line 38
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 39
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 40
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 41
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/GlassTips;->isShown:Z

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/GlassTips;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->tipsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/widget/GlassTips;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/widget/GlassTips;->tipsView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/widget/GlassTips;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/widget/GlassTips;I)I
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/google/glass/widget/GlassTips;->duration:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/glass/widget/GlassTips;Lcom/google/glass/widget/GlassTips$GlassTipsListener;)Lcom/google/glass/widget/GlassTips$GlassTipsListener;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/widget/GlassTips;->glassTipsListener:Lcom/google/glass/widget/GlassTips$GlassTipsListener;

    return-object p1
.end method

.method private hide(Z)V
    .locals 3

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/glass/widget/GlassTips;->isShown:Z

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/GlassTips;->isShown:Z

    .line 88
    if-nez p1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/glass/widget/GlassTips;->tipsView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->tipsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/GlassTips$2;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassTips$2;-><init>(Lcom/google/glass/widget/GlassTips;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public fadeOutAndHideTips()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/widget/GlassTips;->hide(Z)V

    .line 74
    return-void
.end method

.method public hideTips()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/widget/GlassTips;->hide(Z)V

    .line 78
    return-void
.end method

.method public rotate()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->tipsView:Landroid/view/View;

    sget v1, Lcom/google/glass/common/R$id;->textView:I

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SmoothRotatingTextView;

    .line 124
    invoke-virtual {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->scheduleNextRotation()V

    .line 125
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/glass/widget/GlassTips;->isShown:Z

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/GlassTips;->isShown:Z

    .line 55
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->tipsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 56
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/glass/widget/GlassTips;->tipsView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/glass/widget/GlassTips;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->tipsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 59
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->glassTipsListener:Lcom/google/glass/widget/GlassTips$GlassTipsListener;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->glassTipsListener:Lcom/google/glass/widget/GlassTips$GlassTipsListener;

    invoke-interface {v0}, Lcom/google/glass/widget/GlassTips$GlassTipsListener;->onTipsShown()V

    .line 62
    :cond_2
    iget v0, p0, Lcom/google/glass/widget/GlassTips;->duration:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/glass/widget/GlassTips;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/widget/GlassTips$1;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/GlassTips$1;-><init>(Lcom/google/glass/widget/GlassTips;)V

    iget v2, p0, Lcom/google/glass/widget/GlassTips;->duration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
