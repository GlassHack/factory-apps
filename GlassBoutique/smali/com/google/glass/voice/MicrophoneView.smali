.class public Lcom/google/glass/voice/MicrophoneView;
.super Lcom/google/glass/voice/AudioInputRelativeLayout;
.source "MicrophoneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/MicrophoneView$2;
    }
.end annotation


# static fields
.field private static final OPENING_TIME_MS:I = 0xda

.field private static final RED_MIC_FADE_IN_TIME:I = 0x218

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private grayCircle:Landroid/widget/ImageView;

.field private greenCircle:Landroid/widget/ImageView;

.field private keyboard:Landroid/widget/ImageView;

.field private microphone:Landroid/widget/ImageView;

.field private pulseAnim:Landroid/view/animation/Animation;

.field private pulsingCircle:Landroid/widget/ImageView;

.field private redCircle:Landroid/widget/ImageView;

.field private soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/voice/MicrophoneView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/MicrophoneView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/AudioInputRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/MicrophoneView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/MicrophoneView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/MicrophoneView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/MicrophoneView;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->startPulsingAnimation()V

    return-void
.end method

.method private setupPulsingAnimation()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$anim;->pulsing_circle_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/glass/voice/MicrophoneView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/MicrophoneView$1;-><init>(Lcom/google/glass/voice/MicrophoneView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    return-void
.end method

.method private startFadeInAnimation(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 96
    return-void
.end method

.method private startFadeOutAnimation(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 101
    return-void
.end method

.method private startKeyboardAnimation()V
    .locals 2

    .prologue
    const/16 v1, 0xda

    .line 123
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->keyboard:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/MicrophoneView;->startFadeInAnimation(Landroid/view/View;I)V

    .line 124
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->greenCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/MicrophoneView;->startFadeInAnimation(Landroid/view/View;I)V

    .line 125
    return-void
.end method

.method private startOpeningAnimation()V
    .locals 2

    .prologue
    const/16 v1, 0xda

    .line 117
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/MicrophoneView;->startFadeInAnimation(Landroid/view/View;I)V

    .line 118
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/MicrophoneView;->startFadeInAnimation(Landroid/view/View;I)V

    .line 119
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/MicrophoneView;->startFadeInAnimation(Landroid/view/View;I)V

    .line 120
    return-void
.end method

.method private startPulsingAnimation()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 90
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    goto :goto_0
.end method

.method private startRedCircleAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x218

    .line 108
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/voice/MicrophoneView;->startFadeOutAnimation(Landroid/view/View;I)V

    .line 110
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/glass/voice/MicrophoneView;->startFadeInAnimation(Landroid/view/View;I)V

    .line 111
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/google/glass/common/R$id;->sound_levels:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/BitmapSoundLevelsView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    .line 56
    sget v0, Lcom/google/glass/common/R$id;->microphone:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/google/glass/common/R$id;->keyboard:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->keyboard:Landroid/widget/ImageView;

    .line 58
    sget v0, Lcom/google/glass/common/R$id;->red_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcom/google/glass/common/R$id;->green_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->greenCircle:Landroid/widget/ImageView;

    .line 60
    sget v0, Lcom/google/glass/common/R$id;->gray_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/google/glass/common/R$id;->pulsing_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    .line 62
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->setupPulsingAnimation()V

    .line 63
    return-void
.end method

.method protected onStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 129
    sget-object v0, Lcom/google/glass/voice/MicrophoneView$2;->$SwitchMap$com$google$glass$voice$AudioInputRelativeLayout$State:[I

    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneView;->getState()Lcom/google/glass/voice/AudioInputRelativeLayout$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/AudioInputRelativeLayout$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->keyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->greenCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->keyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->greenCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v4}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->startPulsingAnimation()V

    .line 149
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->startOpeningAnimation()V

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->keyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->greenCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v4}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->startRedCircleAnimation()V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->keyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->greenCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 172
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    goto/16 :goto_0

    .line 176
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->keyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->greenCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 185
    :pswitch_5
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->keyboard:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->greenCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->microphone:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->redCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->grayCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulsingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    invoke-direct {p0}, Lcom/google/glass/voice/MicrophoneView;->startKeyboardAnimation()V

    .line 194
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 196
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->pulseAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    goto/16 :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 1
    .param p1, "source"    # Lcom/google/glass/voice/network/SpeechLevelSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneView;->soundLevels:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/BitmapSoundLevelsView;->setLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V

    .line 51
    return-void
.end method
