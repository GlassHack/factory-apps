.class public Lcom/google/glass/voice/GuardHintAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GUARD_ANIMATION_DURATION_MS:J = 0x1f4L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final gradientView:Landroid/widget/ImageView;

.field private gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

.field private final guardPhraseView:Landroid/widget/TextView;

.field private guardViewAnimator:Landroid/view/ViewPropertyAnimator;

.field private state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 53
    iput-object p3, p0, Lcom/google/glass/voice/GuardHintAnimator;->context:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    .line 55
    iput-object p2, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Landroid/widget/TextView;

    .line 56
    const-string v0, "Gradient view is null"

    invoke-static {v0, p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "Guard phrase view is null"

    invoke-static {v0, p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/GuardHintAnimator;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/voice/GuardHintAnimator;->nullifyAnimators()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/GuardHintAnimator;Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/glass/voice/GuardHintAnimator;->setState(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/GuardHintAnimator;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/glass/voice/GuardHintAnimator;->setGuardPhraseAndGradientVisibility(Z)V

    return-void
.end method

.method private cancelAnimations()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardViewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardViewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 185
    :cond_1
    return-void
.end method

.method private nullifyAnimators()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 174
    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 175
    return-void
.end method

.method private setGuardPhraseAndGradientVisibility(Z)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 65
    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setting guard phrase visibility to "

    if-eqz p1, :cond_0

    const-string v0, "VISIBLE"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    if-eqz p1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :goto_2
    return-void

    .line 65
    :cond_0
    const-string v0, "GONE"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setState(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 189
    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 81
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 82
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NO_AFFORD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Canceling an ongoing animate-out animation."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Lcom/google/glass/voice/GuardHintAnimator;->cancelAnimations()V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    :cond_2
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Guard phrase is already visible or animate-in is already in progress"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_3
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/GuardHintAnimator;->setState(Lcom/google/glass/voice/GuardHintAnimator$AnimationState;)V

    .line 97
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Animating in guard phrase."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/voice/GuardHintAnimator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 100
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/GuardHintAnimator;->setGuardPhraseAndGradientVisibility(Z)V

    .line 103
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 105
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/GuardHintAnimator$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/GuardHintAnimator$1;-><init>(Lcom/google/glass/voice/GuardHintAnimator;)V

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0
.end method

.method public animateOut()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 127
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 128
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->NO_AFFORD:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Canceling an ongoing animate-in animation."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0}, Lcom/google/glass/voice/GuardHintAnimator;->cancelAnimations()V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 136
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    :cond_2
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Guard phrase is already gone or animate-out is already in progress."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_3
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    invoke-direct {p0, v3}, Lcom/google/glass/voice/GuardHintAnimator;->setGuardPhraseAndGradientVisibility(Z)V

    goto :goto_0

    .line 144
    :cond_4
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->state:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 145
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Animating out guard phrase."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 149
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardPhraseView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/GuardHintAnimator;->context:Landroid/content/Context;

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
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->guardViewAnimator:Landroid/view/ViewPropertyAnimator;

    .line 152
    iget-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/GuardHintAnimator$2;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/GuardHintAnimator$2;-><init>(Lcom/google/glass/voice/GuardHintAnimator;)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GuardHintAnimator;->gradientViewAnimator:Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0
.end method
