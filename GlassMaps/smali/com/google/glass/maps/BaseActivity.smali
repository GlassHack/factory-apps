.class public abstract Lcom/google/glass/maps/BaseActivity;
.super Lcom/google/glass/voice/GlassVoiceActivity;
.source "SourceFile"


# instance fields
.field private frameView:Landroid/widget/FrameLayout;

.field protected final logTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/voice/GlassVoiceActivity;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/BaseActivity;->logTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/maps/BaseActivity;->logTag:Ljava/lang/String;

    const-string v1, "OnDismiss"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$dimen;->glass_screen_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/google/glass/maps/BaseActivity;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 47
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/maps/R$integer;->activity_animation_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v0, v0

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v2

    .line 49
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/maps/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/maps/BaseActivity$1;-><init>(Lcom/google/glass/maps/BaseActivity;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected onDismissCompleted()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method protected onResumeInternal()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onResumeInternal()V

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/maps/BaseActivity;->resetFrameViewPosition()V

    .line 39
    return-void
.end method

.method protected resetFrameViewPosition()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/maps/BaseActivity;->frameView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 63
    return-void
.end method

.method protected setFrameView(Landroid/widget/FrameLayout;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/maps/BaseActivity;->frameView:Landroid/widget/FrameLayout;

    .line 25
    invoke-static {p1}, Lcom/google/glass/maps/ViewMask;->addMaskIfNeeded(Landroid/widget/FrameLayout;)V

    .line 26
    return-void
.end method
