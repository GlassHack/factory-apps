.class public Lcom/google/glass/timeline/ui/TimelineItemContainerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/widget/horizontalscroll/Card;


# static fields
.field private static final SYNC_ROTATION_DURATION_MILLIS:J = 0x7d0L


# instance fields
.field private currentIcon:Landroid/view/View;

.field private errorDeliveryView:Landroid/view/View;

.field private fromAnimator:Landroid/view/ViewPropertyAnimator;

.field protected final gradientView:Landroid/widget/ImageView;

.field final guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

.field protected final guardPhraseView:Lcom/google/glass/widget/TipsView;

.field private handler:Landroid/os/Handler;

.field private final hideSynchronicityIconRunnable:Ljava/lang/Runnable;

.field private item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private mAnimationDuration:I

.field private mAnimationInProgress:Z

.field private mStartDelay:I

.field private mSynchronicityIconDuration:I

.field private mTranslationDelta:I

.field private shouldShowGuardPhrase:Z

.field private showedSynchronicityIcon:Z

.field private sourceIcon:Landroid/widget/ImageView;

.field private state:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

.field private syncIcon:Landroid/widget/ImageView;

.field private syncIconRotationAnimator:Landroid/animation/ObjectAnimator;

.field private syncStatusListener:Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;

.field private syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

.field private synchronicityIcon:Landroid/widget/ImageView;

.field private toAnimator:Landroid/view/ViewPropertyAnimator;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;->DEACTIVATED:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->state:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    .line 109
    iput-boolean v4, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mAnimationInProgress:Z

    .line 136
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$1;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView$1;-><init>(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->hideSynchronicityIconRunnable:Ljava/lang/Runnable;

    .line 165
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 166
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    .line 167
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    sget v2, Lcom/google/glass/common/R$drawable;->overlay_medium:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getGradientLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$layout;->timeline_item_footer:I

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 173
    sget v2, Lcom/google/glass/common/R$id;->timeline_item_footer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getFooterLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v2, Lcom/google/glass/widget/TipsView;

    invoke-direct {v2, p1}, Lcom/google/glass/widget/TipsView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    .line 177
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    sget v3, Lcom/google/glass/common/R$string;->guard_phrase_hint:I

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 178
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    sget v3, Lcom/google/glass/common/R$style;->TipsViewText:I

    invoke-virtual {v2, p1, v3}, Lcom/google/glass/widget/TipsView;->setTextAppearance(Landroid/content/Context;I)V

    .line 179
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    const-string v3, "sans-serif-light"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TipsView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 180
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-virtual {v2, v5}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getGuardPhraseLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v2, Lcom/google/glass/voice/GuardHintAnimator;

    iget-object v3, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-direct {v2, v3, v4, p1}, Lcom/google/glass/voice/GuardHintAnimator;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    .line 185
    sget v2, Lcom/google/glass/common/R$dimen;->card_attribution_delta:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mTranslationDelta:I

    .line 186
    sget v2, Lcom/google/glass/common/R$integer;->card_attribution_delay:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mStartDelay:I

    .line 187
    sget v2, Lcom/google/glass/common/R$integer;->card_attribution_animation_duration:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mAnimationDuration:I

    .line 188
    sget v2, Lcom/google/glass/common/R$integer;->card_synchronicity_icon_duration:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mSynchronicityIconDuration:I

    .line 190
    sget v0, Lcom/google/glass/common/R$id;->wear_synchronicity:I

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->synchronicityIcon:Landroid/widget/ImageView;

    .line 191
    sget v0, Lcom/google/glass/common/R$id;->sync:I

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncIcon:Landroid/widget/ImageView;

    .line 192
    sget v0, Lcom/google/glass/common/R$id;->source_icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->sourceIcon:Landroid/widget/ImageView;

    .line 193
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->sourceIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->currentIcon:Landroid/view/View;

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->handler:Landroid/os/Handler;

    .line 198
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncIcon:Landroid/widget/ImageView;

    const-string v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncIconRotationAnimator:Landroid/animation/ObjectAnimator;

    .line 199
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncIconRotationAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncIconRotationAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 201
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncIconRotationAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    iput-object v6, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->errorDeliveryView:Landroid/view/View;

    .line 208
    new-instance v0, Lcom/google/android/a/a;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/google/android/a/a;-><init>(I)V

    .line 209
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->gradientView:Landroid/widget/ImageView;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardPhraseView:Lcom/google/glass/widget/TipsView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget v1, Lcom/google/glass/common/R$id;->tag_owned_views:I

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setTag(ILjava/lang/Object;)V

    .line 213
    return-void

    .line 198
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->startListeningToSyncStateAndUpdateIcon()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->updateSyncIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncIconRotationAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->currentIcon:Landroid/view/View;

    return-object p1
.end method

.method private getErrorViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 409
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 411
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 412
    return-object v0
.end method

.method private getFooterLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 399
    sget v1, Lcom/google/glass/common/R$dimen;->timeline_footer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 400
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x50

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 402
    sget v1, Lcom/google/glass/common/R$dimen;->timeline_left_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 403
    sget v1, Lcom/google/glass/common/R$dimen;->timeline_right_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 404
    sget v1, Lcom/google/glass/common/R$dimen;->timeline_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 405
    return-object v2
.end method

.method private getGradientLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 391
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 393
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 394
    return-object v0
.end method

.method private getGuardPhraseLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getGradientLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 386
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$dimen;->guard_phrase_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 387
    return-object v0
.end method

.method private isListeningToSyncState()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncStatusListener:Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showErrorIfDeliveryFailure(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 3

    .prologue
    .line 548
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->hasFailedDeliveryInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getFailedDeliveryInfo()Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$FailedDeliveryInfo;->getIsDeliveryFailure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->errorDeliveryView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Lcom/google/android/glass/widget/CardBuilder;

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/widget/CardBuilder$Layout;->ALERT:Lcom/google/android/glass/widget/CardBuilder$Layout;

    invoke-direct {v0, v1, v2}, Lcom/google/android/glass/widget/CardBuilder;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    .line 552
    sget v1, Lcom/google/glass/common/R$string;->timeline_delivery_failure_default:I

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardBuilder;->setText(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 553
    sget v1, Lcom/google/glass/common/R$drawable;->ic_warning_150:I

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardBuilder;->setIcon(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 554
    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardBuilder;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->errorDeliveryView:Landroid/view/View;

    .line 555
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->errorDeliveryView:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getErrorViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    sget v0, Lcom/google/glass/common/R$id;->tag_owned_views:I

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->errorDeliveryView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->errorDeliveryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->errorDeliveryView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->errorDeliveryView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSourceIcon()V
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->currentIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->sourceIcon:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_0

    .line 544
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->stopAnimations()V

    .line 537
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->currentIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->sourceIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/glass/timeline/ui/TimelineItemContainerView$3;

    invoke-direct {v3, p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView$3;-><init>(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->startTransition(Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;)I

    goto :goto_0
.end method

.method private showSyncIcon(Z)V
    .locals 4

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->currentIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncIcon:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_0

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->stopAnimations()V

    .line 525
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->currentIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->startTransition(Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;)I

    goto :goto_0
.end method

.method private showSynchronicityIcon()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 475
    iput-boolean v3, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showedSynchronicityIcon:Z

    .line 477
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->currentIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->synchronicityIcon:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->stopAnimations()V

    .line 484
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->currentIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->synchronicityIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 485
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->startTransition(Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;)I

    move-result v0

    .line 486
    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->hideSynchronicityIconRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mSynchronicityIconDuration:I

    add-int/2addr v0, v3

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startListeningToSyncStateAndUpdateIcon()V
    .locals 2

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->isListeningToSyncState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->updateSyncIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$2;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView$2;-><init>(Lcom/google/glass/timeline/ui/TimelineItemContainerView;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncStatusListener:Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;

    .line 445
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncStatusListener:Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->addListener(Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;)V

    goto :goto_0
.end method

.method private stopAnimations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 619
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->hideSynchronicityIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 620
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->fromAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->fromAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 622
    iput-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->fromAnimator:Landroid/view/ViewPropertyAnimator;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->toAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->toAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 626
    iput-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->toAnimator:Landroid/view/ViewPropertyAnimator;

    .line 628
    :cond_1
    return-void
.end method

.method private stopListeningToSyncState()V
    .locals 2

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->isListeningToSyncState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncStatusListener:Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->removeListener(Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;)V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncStatusListener:Lcom/google/glass/sync/TimelineSyncStatusReceiver$Listener;

    .line 454
    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->currentIcon:Landroid/view/View;

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->sourceIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->currentIcon:Landroid/view/View;

    .line 467
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showedSynchronicityIcon:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/glass/timeline/ui/WearHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/ui/WearHelper;-><init>()V

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/timeline/ui/WearHelper;->hasOpenOnPhoneMenuOption(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showSynchronicityIcon()V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->startListeningToSyncStateAndUpdateIcon()V

    goto :goto_0
.end method

.method private updateSyncIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V
    .locals 2

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showSourceIcon()V

    .line 506
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->canSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->isSyncingToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showSyncIcon(Z)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showSourceIcon()V

    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getViewType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 500
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showSourceIcon()V

    goto :goto_0

    .line 501
    :cond_3
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineItemUtils;->isSyncingToCloud(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 502
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showSyncIcon(Z)V

    goto :goto_0

    .line 504
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showSourceIcon()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 350
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    .line 351
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v0, :cond_2

    .line 352
    const/4 v0, 0x0

    .line 353
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSpeakableText()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    const-string v0, "com.google.glass.timeline.ui.TimelineItemContainerView.TimelineItem#speakableText"

    invoke-static {p1, v0, v2}, Lcom/google/glass/accessibility/AccessibilityEventUtils;->addToEventBundle(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSpeakableType()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    const-string v3, "com.google.glass.timeline.ui.TimelineItemContainerView.TimelineItem#speakableType"

    invoke-static {p1, v3, v2}, Lcom/google/glass/accessibility/AccessibilityEventUtils;->addToEventBundle(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 365
    :cond_1
    if-eqz v0, :cond_2

    .line 366
    const-class v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 367
    const/4 v0, 0x1

    .line 371
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/google/glass/widget/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/widget/horizontalscroll/Card;->onConfirm()Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/google/glass/widget/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/widget/horizontalscroll/Card;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    instance-of v0, v0, Lcom/google/glass/widget/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/widget/horizontalscroll/Card;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public removeContainedView()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->setContainedView(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public setActivated(Z)V
    .locals 1

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;->ACTIVATED:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->state:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    .line 287
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 288
    return-void

    .line 283
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;->DEACTIVATED:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->state:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    goto :goto_0
.end method

.method public setContainedView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 245
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$6;->$SwitchMap$com$google$glass$timeline$ui$TimelineItemContainerView$State:[I

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->state:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    invoke-virtual {v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p1, :cond_1

    .line 261
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$6;->$SwitchMap$com$google$glass$timeline$ui$TimelineItemContainerView$State:[I

    iget-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->state:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    invoke-virtual {v1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 274
    :cond_1
    :goto_1
    :pswitch_1
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    .line 276
    :cond_2
    return-void

    .line 250
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 253
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 254
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 265
    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 268
    :pswitch_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 269
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 261
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setItemAndSyncStatusReceiver(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/sync/TimelineSyncStatusReceiver;)V
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->stopListeningToSyncState()V

    .line 221
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 222
    iput-object p2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .line 223
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->stopAnimations()V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mAnimationInProgress:Z

    .line 226
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->state:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    sget-object v1, Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;->SELECTED:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    if-ne v0, v1, :cond_0

    .line 227
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->updateIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 231
    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->DF:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showErrorIfDeliveryFailure(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 234
    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;->SELECTED:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->state:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showedSynchronicityIcon:Z

    .line 295
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0, v0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->updateIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 304
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 305
    return-void

    .line 297
    :cond_0
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;->ACTIVATED:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->state:Lcom/google/glass/timeline/ui/TimelineItemContainerView$State;

    .line 298
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->stopListeningToSyncState()V

    .line 299
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->stopAnimations()V

    .line 300
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->showSourceIcon()V

    goto :goto_0
.end method

.method public setShouldShowGuardPhrase(Z)V
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->shouldShowGuardPhrase:Z

    if-eq v0, p1, :cond_0

    .line 377
    iput-boolean p1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->shouldShowGuardPhrase:Z

    .line 380
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->updateGuardPhrase()V

    .line 382
    :cond_0
    return-void
.end method

.method protected startTransition(Landroid/view/View;Landroid/view/View;ZLjava/lang/Runnable;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 577
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mAnimationInProgress:Z

    if-nez v0, :cond_0

    .line 578
    if-eqz p3, :cond_1

    iget v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mTranslationDelta:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 579
    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 582
    :cond_0
    if-eqz p3, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mAnimationInProgress:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mStartDelay:I

    .line 584
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p3, :cond_3

    iget v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mTranslationDelta:I

    neg-int v1, v1

    int-to-float v1, v1

    .line 585
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 586
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 587
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mAnimationDuration:I

    int-to-long v2, v2

    .line 588
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/timeline/ui/TimelineItemContainerView$4;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/glass/timeline/ui/TimelineItemContainerView$4;-><init>(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 589
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->fromAnimator:Landroid/view/ViewPropertyAnimator;

    .line 600
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 601
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 602
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 603
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mAnimationDuration:I

    int-to-long v2, v2

    .line 604
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/timeline/ui/TimelineItemContainerView$5;

    invoke-direct {v2, p0, p2}, Lcom/google/glass/timeline/ui/TimelineItemContainerView$5;-><init>(Lcom/google/glass/timeline/ui/TimelineItemContainerView;Landroid/view/View;)V

    .line 605
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->toAnimator:Landroid/view/ViewPropertyAnimator;

    .line 613
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mAnimationInProgress:Z

    .line 615
    iget v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mAnimationDuration:I

    add-int/2addr v0, v1

    return v0

    .line 578
    :cond_1
    iget v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mTranslationDelta:I

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0

    .line 582
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 584
    :cond_3
    iget v1, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->mTranslationDelta:I

    int-to-float v1, v1

    goto :goto_2
.end method

.method protected updateGuardPhrase()V
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->shouldShowGuardPhrase:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/GuardHintAnimator;->animateIn()V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineItemContainerView;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/GuardHintAnimator;->animateOut()V

    goto :goto_0
.end method
